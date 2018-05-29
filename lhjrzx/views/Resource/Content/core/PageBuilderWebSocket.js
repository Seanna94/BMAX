/***定义静态类***/
var PageBuilderWebSocket = {};
PageBuilderWebSocket = (function () {
    var Key = null;
    var funcOpen = null;
    var Return = {
        isConnecting: false,//是否连接
        connectSocketServer: function (address, funcOpen, funcClose) {    //公有方法
            if (address === undefined || address === null || address.length === 0) {
                return;
            }
            var support = "MozWebSocket" in window ? 'MozWebSocket' : ("WebSocket" in window ? 'WebSocket' : null);
            if (support == null) {
                appendMessage("* 当前浏览器不支持WebSocket，请使用其他浏览器尝试。" + "<br/>");
                return;
            }
            this.disconnectWebSocket();//先断开连接

            appendMessage("* WebSocket连接中 ..<br/>");
            if (address !== undefined) {
                address += "?projectid=" + (PageBuilderPreview.project.ProjectInfo.BMAX_ProjectID || 1) + "&username=admin&password=admin123456";
                ws = new WebSocket(address);
            }
            ws.onmessage = function (evt) {
                appendMessage("# " + evt.data + "<br />");
                //此处在正式版接口完成时，需要修改
                var msgObj = JSON.parse(evt.data);

                if (msgObj.MsgType === EmDataServiceMsgType.LoginBack) {
                    Key = msgObj.Key;
                    if (msgObj.Data.HasError === true) {
                        JMessage(msgObj.Data.Error, true);
                    } else {
                        if (funcOpen !== undefined) {
                            funcOpen();
                        }
                    }
                }

                _callbacks.forEach(function (item, i) {
                    if (msgObj.MsgType === EmDataServiceMsgType.SendDataBack) {
                        if (item.key.MsgType === msgObj.MsgType) {
                            item.func(msgObj.Data.SetCode, msgObj.Data);
                        }
                    } else if (msgObj.MsgType === EmDataServiceMsgType.GetTagDataBack || msgObj.MsgType === EmDataServiceMsgType.GetTagData2) {
                        if (item.key.MsgType === EmDataServiceMsgType.GetTagDataBack) {
                            item.func(msgObj.Data.ListTagValue);
                        }
                    }
                });
            };
            ws.onopen = function (e) {
                this.isConnecting = true;
                appendMessage('* WebSocket已连接<br/>');

                ////登录
                //ws.send(JSON.stringify({
                //    "MsgType": EmDataServiceMsgType.Login,
                //    "UserCode": null,
                //    "Data": {
                //        "ProjectID": "1",
                //        "UserName": "admin",
                //        "Password": "admin123456"
                //    }
                //}));
            };

            ws.onclose = function (e, b) {
                this.isConnecting = false;
                appendMessage('* WebSocket已关闭连接<br/>');
                if (funcClose !== undefined) {
                    funcClose();
                }
            }
        },
        disconnectWebSocket: function (func) {
            if (ws !== undefined && ws !== null) {
                ws.close();
                ws = null;
                if (func !== undefined) {
                    func();
                }
            }
        },
        ////获取点表树结构
        //getTagTree: function (func) {
        //    var key = { MsgType: EmDataServiceMsgType.GetTagCfg, IsGetRootNodeCfg: false, RootNodeID: null };
        //    var backKey = { MsgType: EmDataServiceMsgType.GetTagCfgBack };
        //    this.addEventHandle(backKey, func);
        //    if (ws !== null) {
        //        ws.send(JSON.stringify(key));
        //    }
        //},
        ////点表树结构变化订阅
        //onTagTreeChangeEvent: function (func) {
        //    //var key = { MsgType: EmDataServiceMsgType.Subscibe, SubType: [EmDataServiceSubType.TagCfg], UserCode: UserCode };
        //    //var backKey = { MsgType: EmDataServiceMsgType.PublishTagCfg };
        //    //this.addEventHandle(backKey, func);
        //    //if (ws !== null) {
        //    //    ws.send(JSON.stringify(key));
        //    //}
        //},
        //获取点表数据
        getTagData: function (tagIDs, func) {
            var key = { MsgType: EmDataServiceMsgType.GetTagData, Data: { ListTagID: tagIDs }, Key: Key };
            var backKey = { MsgType: EmDataServiceMsgType.GetTagDataBack }
            PageBuilderWebSocket.addEventHandle(backKey, func);
            if (ws !== null) {
                ws.send(JSON.stringify(key));
            }
        },
        //控件下发事件
        sendTagData: function (sendData, func) {
            var key = { MsgType: EmDataServiceMsgType.SendData, Key: Key, Data: sendData };//表示控件下发事件
            var backKey = { MsgType: EmDataServiceMsgType.SendDataBack }///表示控件下发事件回调MsgType=8
            this.addEventHandle(backKey, func);
            if (ws !== null) {
                ws.send(JSON.stringify(key));
            }
        },
        //添加监听事件
        addEventHandle: function (key, func) {
            var hasKey = false;
            _callbacks.forEach(function (item, i) {
                if (item.key.MsgType === key.MsgType) {
                    hasKey = true;
                    item.func = func;
                    return;
                }
            });
            if (hasKey === false) {
                var evenInfo = new EvenInfo();
                evenInfo.key = key;
                evenInfo.func = func;
                _callbacks.push(evenInfo);
            }
        }
    };

    var ws = null;
    var _callbacks = [];//回调函数
    var appendMessage = function (message) {
        //console.log(message);
    }

    //事件对象
    var EvenInfo = function () {
        var obj = new Object();
        obj.key = "";
        obj.func = null;
        return obj;
    };

    //消息枚举
    var EmDataServiceMsgType = {
        Login: 1,
        LoginBack: 2,
        GetTagData: 13,
        GetTagDataBack: 14,
        GetTagData2: 17,
        //GetAlarmData: 21,
        //GetAlarmDataResult: 2,
        //GetAlarmData: 25,
        SendData: 19,
        SendDataBack: 20
    };
    var EmDataServiceSubType = {
        Tag: 1,
        TagCfg: 2,
    };
    return Return;    //生成公有静态元素
})();
