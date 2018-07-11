var PageBuilderPreview = {};
PageBuilderPreview = (function () {
    var _useToolUrl = false;                //使用工具url目录
    var _enableEdit = false;                //是否处于编辑状态
    var translateX = 0, translateY = 0, zoom = 1;       //画布位置和缩放级别

    //停止HT事件
    var stopEvent = function (e, message) {
        if (e.event && e.event.stopPropagation) {
            // 因此它支持W3C的stopPropagation()方法 
            e.event.stopPropagation();
        } else {
            // 否则，我们需要使用IE的方式来取消事件冒泡
            window.event.cancelBubble = true;
        }
        if (e.event && e.event.preventDefault) {
            e.event.preventDefault();
        } else {
            // IE中阻止函数器默认动作的方式
            window.event.returnValue = false;
        }
        var error = new Error();
        error.message = ((message !== undefined ? message : "停止事件"));
        throw error;
    };
    //事件监听
    var initEventListener = function () {
        if (_enableEdit === true) {
            //编辑
            Result.graph.addInteractorListener(function (e) {
                if (e.kind === 'doubleClickData') {
                }
                else if (e.kind === 'clickData') {
                    //双击
                    //console.log(e.data + '被双击');
                }
                else if (e.kind === 'clickBackground') {
                    //console.log('单击背景');
                } else if (e.kind === 'beginPan') {
                    //console.log('开始手抓图平移');
                    if (PageBuilderPreview.enabledZoomTranslate === false) {
                        stopEvent(e, "当前画布已被锁定，无法平移缩放。");
                    }
                }
                else if (e.kind === 'betweenPan') {
                    //console.log('正在手抓图平移');
                }
                else if (e.kind === 'endPan') {
                    //console.log('结束手抓图平移');
                }
            });
        } else {
            //预览
            Result.graph.addInteractorListener(function (e) {
                if (e.kind === 'beginPan') {
                    //console.log('开始手抓图平移');
                    if (PageBuilderPreview.enabledZoomTranslate === false) {
                        stopEvent(e, "当前画布已被锁定，无法平移缩放。");
                    }
                }
                var node = e.data;
                if (node === undefined) {
                    return;
                }
                var controlJSON = null;
                var controlJSON_str = node.a("controlJSON");
                if (controlJSON_str !== undefined && controlJSON_str.length > 0) {
                    controlJSON = JSON.parse(controlJSON_str);
                }
                if (controlJSON === null) {
                    return;
                }
                //配置变量信息
                var nodeInfo = node.a("nodeInfo");

                //领导说要改单击...屏蔽以下代码
                //var isIE = $.browser.msie;
                //if (e.kind === 'doubleClickData' || (isIE === true && e.kind === 'clickData')) {
                if (e.kind === 'doubleClickData' || e.kind === 'clickData') {
                    console.log("双击");
                    if (nodeInfo.clickEvent === "link") {
                        //超链接
                        var authorizationToken_link = "";
                        var authorizationToken = $.QueryString("authorizationToken");
                        if (authorizationToken !== undefined && authorizationToken !== null && authorizationToken.length > 0) {
                            authorizationToken_link = authorizationToken;
                        }

                        if (nodeInfo.link !== undefined && nodeInfo.link !== null && nodeInfo.link.trim().length > 0) {
                            if (_useToolUrl === true && nodeInfo.link.indexOf("..") === 0) {
                                var link = PageBuilderPreview.project.ProjectVirtualPath + "/" + $.fixVirtualPath(nodeInfo.link);
                                if (link.indexOf("?") > 0) {
                                    link += "&authorizationToken=" + authorizationToken_link;
                                } else {
                                    link += "?authorizationToken=" + authorizationToken_link;
                                }
                                window.open(link);
                            } else {
                                var link = nodeInfo.link;
                                if (link.indexOf("?") > 0) {
                                    link += "&authorizationToken=" + authorizationToken_link;
                                } else {
                                    link += "?authorizationToken=" + authorizationToken_link;
                                }
                                location.href = link;
                                return;
                            }
                        }
                    } else if (nodeInfo.clickEvent === "modal") {
                        //模态
                        var authorizationToken_link = "";
                        var authorizationToken = $.QueryString("authorizationToken");
                        if (authorizationToken !== undefined && authorizationToken !== null && authorizationToken.length > 0) {
                            authorizationToken_link = authorizationToken;
                        }

                        if (nodeInfo.modal_url.length > 0) {
                            var link = nodeInfo.modal_url;
                            if (_useToolUrl === true && nodeInfo.modal_url.indexOf("..") === 0) {
                                link = PageBuilderPreview.project.ProjectVirtualPath + "/" + $.fixVirtualPath(link);
                            }
                            if (link.indexOf("?") > 0) {
                                link += "&authorizationToken=" + authorizationToken_link;
                            } else {
                                link += "?authorizationToken=" + authorizationToken_link;
                            }
                            var size = null;//默认800*600
                            if (nodeInfo.modal_size !== undefined && nodeInfo.modal_size.length > 0) {
                                size = nodeInfo.modal_size.split("_");
                                if (size[0] <= 0 || size[1] <= 0) {
                                    size = [800, 600];
                                }
                            } else {
                                size = [800, 600];
                            }
                            //if (window.innerHeight)
                            var zoom = PageBuilderPreview.graph.getZoom() + 0.045;//缩放比例+偏移量
                            var width = size[0] * zoom;
                            var height = size[1] * zoom;

                            var window_width = window.innerWidth - 100;
                            var window_height = window.innerHeight - 100;

                            if (window_width <= width || window_height <= height) {
                                width = width * 3.0 / 4;
                                height = height * 3.0 / 4;
                            }

                            var width_offset = 2 * 2 + 1 * 2 + 1;//padding*2+border*2+偏移量
                            var html = '<iframe class="embed-responsive-item" src="' + link + '" width="' + width + '" height="' + height + '" style="border:none;"></iframe>';
                            _dialog({
                                html: html, title: "模态窗口", width: width + width_offset, height: height, backdrop: false,
                                fun_ok: function () {
                                }
                            });
                        }
                    } else if (nodeInfo.clickEvent === "send") {
                        //下发
                        if ((nodeInfo.tagName !== null && nodeInfo.tagName.length > 0 && nodeInfo.tagID !== null && nodeInfo.tagID.length > 0) ||
                            (nodeInfo.tagName_send !== null && nodeInfo.tagName_send.length > 0 && nodeInfo.tagID_send !== null && nodeInfo.tagID_send.length > 0)) {

                            var sendTagID = null;
                            var temp_sendValue = "";
                            var isSendConfirm = false;
                            switch (controlJSON.Type) {
                                case "CustomNode_btn":
                                    //按钮下发
                                    sendTagID = nodeInfo.tagID;
                                    temp_sendValue = nodeInfo.send_text_value;
                                    isSendConfirm = true;
                                    break;
                                case "CustomNode_text":
                                    //文本下发
                                    sendTagID = nodeInfo.tagID;
                                    isSendConfirm = false;
                                    break;
                                case "CustomNode_img":
                                    //图片下发
                                    if (nodeInfo.tagID_send !== undefined && nodeInfo.tagID_send.length > 0) {
                                        sendTagID = nodeInfo.tagID_send;
                                    } else {
                                        sendTagID = nodeInfo.tagID;
                                    }
                                    temp_sendValue = (nodeInfo.tag_value == "1" ? "关" : "开");
                                    isSendConfirm = true;
                                    break;
                                case "CustomNode_imgbtn":
                                    //图片读写下发
                                    if (nodeInfo.send_type === "bool") {
                                        if (nodeInfo.tagID_send !== undefined && nodeInfo.tagID_send.length > 0) {
                                            sendTagID = nodeInfo.tagID_send;
                                        } else {
                                            sendTagID = nodeInfo.tagID;
                                        }
                                        temp_sendValue = (nodeInfo.tag_value == "1" ? "关" : "开");
                                        isSendConfirm = true;
                                    } else if (nodeInfo.send_type === "string") {
                                        if (nodeInfo.tagID_send !== undefined && nodeInfo.tagID_send.length > 0) {
                                            sendTagID = nodeInfo.tagID_send;
                                        } else {
                                            sendTagID = nodeInfo.tagID;
                                        }
                                        isSendConfirm = false;
                                    }
                                    break;
                            }
                            if (sendTagID === null) {
                                return;
                            }

                            var send_func = function () {
                                switch (controlJSON.Type) {
                                    case "CustomNode_btn":
                                        //按钮下发
                                        if (nodeInfo.send_text_value !== undefined && nodeInfo.send_text_value.length >= 0) {
                                            sendValue([{ TagID: nodeInfo.tagID, TagName: nodeInfo.tagName, Value: nodeInfo.send_text_value }]);
                                        }
                                        break;
                                    case "CustomNode_text":
                                        //文本下发
                                        var html = '<textarea class="form-control" rows="2" id="txt_send_value"></textarea>';
                                        _dialog({
                                            html: html, title: "下发控制", width: 380, height: 60,
                                            fun_ok: function (isOk) {
                                                if (isOk !== undefined && isOk === true) {
                                                    var send_text_value = $("#txt_send_value").val().trim();
                                                    sendValue([{ TagID: nodeInfo.tagID, TagName: nodeInfo.tagName, Value: send_text_value }]);
                                                }
                                            }, backdrop: "static"
                                        });
                                        break;
                                    case "CustomNode_img":
                                        //图片下发
                                        if (nodeInfo.tag_value == "1") {
                                            nodeInfo.tag_value = "0";
                                        } else {
                                            nodeInfo.tag_value = "1";
                                        }
                                        node.a("nodeInfo", nodeInfo);
                                        var node_img = node.a("node_img");
                                        for (var item in node_img) {
                                            if (((nodeInfo.tag_value == node_img[item].min && nodeInfo.tag_value == node_img[item].max) ||
                                                (nodeInfo.tag_value >= node_img[item].min && nodeInfo.tag_value < node_img[item].max))
                                                && node_img[item].img !== undefined
                                                && node_img[item].img.length > 0) {
                                                node.a("node_img_default", node_img[item].img);
                                            }
                                        }
                                        if (nodeInfo.tagID_send !== undefined && nodeInfo.tagID_send.length > 0) {
                                            sendValue([{ TagID: nodeInfo.tagID_send, TagName: nodeInfo.tagName_send, Value: nodeInfo.tag_value }]);
                                        } else {
                                            sendValue([{ TagID: nodeInfo.tagID, TagName: nodeInfo.tagName, Value: nodeInfo.tag_value }]);
                                        }
                                        break;
                                    case "CustomNode_imgbtn":
                                        //图片读写下发
                                        if (nodeInfo.send_type === "bool") {
                                            if (nodeInfo.tag_value == "1") {
                                                nodeInfo.tag_value = "0";
                                            } else {
                                                nodeInfo.tag_value = "1";
                                            }
                                            node.a("nodeInfo", nodeInfo);
                                            var node_img = node.a("node_img");
                                            for (var item in node_img) {
                                                if (nodeInfo.tag_value == node_img[item].value
                                                    && node_img[item].img !== undefined
                                                    && node_img[item].img.length > 0) {
                                                    node.a("node_img_default", node_img[item].img);
                                                }
                                            }
                                            if (nodeInfo.tagID_send !== undefined && nodeInfo.tagID_send.length > 0) {
                                                sendValue([{ TagID: nodeInfo.tagID_send, TagName: nodeInfo.tagName_send, Value: nodeInfo.tag_value }]);
                                            } else {
                                                sendValue([{ TagID: nodeInfo.tagID, TagName: nodeInfo.tagName, Value: nodeInfo.tag_value }]);
                                            }
                                        } else if (nodeInfo.send_type === "string") {
                                            var html = '<textarea class="form-control" rows="2" id="txt_send_value"></textarea>';
                                            _dialog({
                                                html: html, title: "下发控制", width: 380, height: 60,
                                                fun_ok: function (isOk) {
                                                    if (isOk !== undefined && isOk === true) {
                                                        var send_value = $("#txt_send_value").val().trim();
                                                        if (nodeInfo.tagID_send !== undefined && nodeInfo.tagID_send.length > 0) {
                                                            sendValue([{ TagID: nodeInfo.tagID_send, TagName: nodeInfo.tagName_send, Value: send_value }]);
                                                        } else {
                                                            sendValue([{ TagID: nodeInfo.tagID, TagName: nodeInfo.tagName, Value: send_value }]);
                                                        }
                                                    }
                                                }, backdrop: "static"
                                            });
                                        }
                                        break;
                                }
                            };

                            var send_func2 = function () {
                                if (PageBuilderPreview.project.ProjectInfo.SendConfirm === true && isSendConfirm) {
                                    _dialog({
                                        html: "<div style='padding: 12px 10px;'>是否要执行下发？ 下发值为：" + temp_sendValue + "</div>", title: "下发控制", width: 380, height: 60,
                                        fun_ok: function (isOk) {
                                            if (isOk !== undefined && isOk === true) {
                                                send_func();
                                            }
                                        }, backdrop: "static"
                                    });
                                } else {
                                    send_func();
                                }
                            };

                            //验证是否需要下发控制权限验证，如需要，则验证是否有下发权限。
                            if (PageBuilderPreview.project.ProjectInfo.EnabledControlPermission === true &&
                                PageBuilderPreview.pageBuilderPreviewDefault.enableEdit === false &&
                                PageBuilderPreview.pageBuilderPreviewDefault.useToolUrl === false &&
                                PageBuilderPreview.project.ProjectInfo.UploadSystemMonitoringFileAddress !== null && PageBuilderPreview.project.ProjectInfo.UploadSystemMonitoringFileAddress.length > 0) {

                                var permissionUrl = "{0}/api/API_SystemMonitoring/CheckTagControlPermission".formatStr([PageBuilderPreview.project.ProjectInfo.UploadSystemMonitoringFileAddress]);
                                $.ajax({
                                    type: "get",
                                    url: permissionUrl,
                                    data: { tagID: sendTagID },
                                    cache: false,
                                    dataType: "json",
                                    success: function (result) {
                                        if (result !== undefined) {
                                            if (result.HasError === true) {
                                                JMessage(result.Error, true);
                                                return;
                                            }
                                            send_func2();
                                        } else {
                                            JMessage("权限验证错误，无法操作。", true);
                                        }
                                    },
                                    error: function () {
                                        JMessage("权限验证错误，无法操作。", true);
                                    }
                                });
                            } else {
                                send_func2();
                            }
                        }
                    } else if (nodeInfo.clickEvent === "camera") {
                        if (nodeInfo.cameraTags !== undefined && nodeInfo.cameraTags !== null && nodeInfo.cameraTags.length > 0) {
                            try {
                                if (CameraResource && CameraResource.openCamera) {
                                    CameraResource.openCamera(nodeInfo.cameraTags);
                                }
                            } catch (e) {
                                console.log(e);
                            }
                        }
                    }
                }
                else if (e.kind === 'clickData') {
                    //console.log("单击");
                    //模态窗口 待开发
                }
                else if (e.kind === 'clickBackground') {
                    //console.log('单击背景');
                } else if (e.kind === 'beginPan') {
                    //console.log('开始手抓图平移');
                }
                else if (e.kind === 'betweenPan') {
                    //console.log('正在手抓图平移');
                }
                else if (e.kind === 'endPan') {
                    //console.log('结束手抓图平移');
                }
                graph.getSelectionModel().clearSelection();
            });
        }


        window.addEventListener("resize", function (e) {
            //if (PageBuilderPreview.pageBuilderPreviewDefault.enableEdit === true) {
            PageBuilderPreview.graph.setZoom(1);
            PageBuilderPreview.graph.setTranslate(0, 0);
            initBackground(PageBuilderPreview.canvasBackImg);   //初始化画布背景信息
            if (PageBuilderPreview.currentPageInfo !== null && PageBuilderPreview.currentPageInfo.IsModalPage === true) {
                initCanvasViewSize();//模态窗口需要重新定位
            }
            initCanvasSize_Location();                          //初始化画布位置和大小
            //} else {
            //    PageBuilderPreview.pageLoad();
            //}
        });
    };

    var _bottomBackgroundObj = null;
    //初始化画布背景
    var initBackground = function (bgImage) {
        if (_bottomBackgroundObj !== null) {
            Result.graph.removeBottomPainter(_bottomBackgroundObj);//先删除原底图
        }
        /* 设置画布背景 */
        _bottomBackgroundObj = function (g, rect) {
            if (bgImage !== undefined && bgImage != null) {
                if (PageBuilderPreview.pageBuilderPreviewDefault.enableEdit === true) {
                    g.globalAlpha = 1//原来值为 0.65;，由于实施提出看不清画布，暂时删除透明度
                }
                g.drawImage(bgImage, 0, 0, Result.currentPageInfo.PageInfoBackground.Width, Result.currentPageInfo.PageInfoBackground.Height);
                g.globalAlpha = 1;
            }
            var viewRect = Result.graph.getViewRect();
            if (PageBuilderPreview.pageBuilderPreviewDefault.enableEdit === true) {
                //版权文字
                //ht.Default.drawText(g, 'BASEPOINT 组态工具', '24px Arial', 'rgba(255,255,255,0.8)', viewRect.x + viewRect.width - 270, viewRect.y + viewRect.height - 40, 0, 0, 'left');
            } else {
                //ht.Default.drawText(g, 'BASEPOINT', '24px Arial', 'rgba(255,255,255,0.8)', viewRect.x + viewRect.width - 270, viewRect.y + viewRect.height - 40, 0, 0, 'left');
            }
        };
        Result.graph.addBottomPainter(_bottomBackgroundObj);//添加新底图    
    };

    //重置画布位置（重置页面元素位置，水平和垂直方向居中）
    var initCanvasSize_Location = function () {
        if (Result.currentPageInfo === null) {
            return;
        }
        bgWidth = Result.currentPageInfo.PageInfoBackground.Width;
        bgHeight = Result.currentPageInfo.PageInfoBackground.Height;
        if (bgWidth !== 0 && bgHeight !== 0) {
            var width = $("#editCanvas").width();
            var height = $("#editCanvas").height();
            var scale1 = width / height;
            var scale2 = bgWidth / bgHeight;

            if (scale1 > scale2) {
                //取高
                translateX = (width - bgWidth) / 2;
                translateY = (height - bgHeight) / 2;
                zoom = height / bgHeight;
            } else if (scale1 < scale2) {
                //取宽
                translateX = (width - bgWidth) / 2;
                translateY = (height - bgHeight) / 2;
                zoom = width / bgWidth;
            } else {
                translateX = (width - bgWidth) / 2;
                translateY = (height - bgHeight) / 2;
                zoom = width / bgWidth;
            }
            Result.graph.setTranslate(translateX, translateY);
            Result.graph.setZoom(zoom, false);
        } else {
            //Result.graph.setZoom(1);
            //Result.graph.setTranslate(0, 0);
        }
        translateX = Result.graph.getTranslateX();
        translateY = Result.graph.getTranslateY();
        zoom = Result.graph.getZoom();
        //_translateX = graph.getTranslateX();
        //_translateY = graph.getTranslateY();
        //_zoom = graph.getZoom();
    };

    //设置画布缩放和拖拽启用禁用事件
    var initCanvasStatusZoom_Translate = function () {
        //判断是否禁用缩放控制
        $(Result.pageBuilderPreviewDefault.htmlContainer).mousewheel(function (event, delta, deltaX, deltaY) {
            if (Result.currentPageInfo !== null && Result.currentPageInfo.PageInfoType === "page" && Result.enabledZoomTranslate === false) {
                event.stopPropagation();
                event.preventDefault();
                Result.graph.setZoom(zoom);
                Result.graph.setTranslate(translateX, translateY);
            }
        });
    };

    //初始化画布
    var initCanvasView = function () {
        var graph_canvas_view = Result.graph.getView();
        graph_canvas_view.id = "editCanvas";
        var style = graph_canvas_view.style;
        style.position = "relative";
        //style.top = style.right = style.bottom = style.left = "0";        
        style.backgroundColor = "rgba(0, 0, 0, 0)";//"rgba(13,109,161,0.5)";
        $(Result.pageBuilderPreviewDefault.htmlContainer).append(graph_canvas_view);
        initCanvasViewSize();
    };

    var initCanvasViewSize = function () {
        //if (_enableEdit === true && PageBuilderPreview.currentPageInfo !== null && PageBuilderPreview.currentPageInfo.IsModalPage === true&&false) {
        //    var rawHeight = $("#editCanvas").parent().height();
        //    var rawWidth = $("#editCanvas").parent().width();
        //    var ModalPageWidth = PageBuilderPreview.currentPageInfo.ModalPageWidth;
        //    var ModalPageHeight = PageBuilderPreview.currentPageInfo.ModalPageHeight;
        //    var margin_top = (rawHeight - ModalPageHeight) / 2;
        //    var margin_left = (rawWidth - ModalPageWidth) / 2;
        //    $("#editCanvas").css({ width: ModalPageWidth + "px", height: ModalPageHeight + "px", marginTop: margin_top + "px", marginLeft: margin_left + "px" });
        //} else {
        $("#editCanvas").css({ width: "100%", height: "100%", margin: "0px" });
        //}
    };

    //初始化画布控制组件
    var initCanvasControl = function () {
        if (Result.pageBuilderPreviewDefault.enabledControl !== true) {
            $("#pb_control_main").hide();
            return;
        }
        $("#pb_control_main").show();

        var pb_control_main = $("#pb_control_main");

        pb_control_main.mouseover(function () {
            pb_control_main.css("opacity", 0.9);
        }).mouseleave(function () {
            pb_control_main.css("opacity", 0.2);
        });

        var zoomTimer = null;
        var htmlContainerObj = $(PageBuilderPreview.pageBuilderPreviewDefault.htmlContainer);

        //放大缩小
        var arrows_zoomIn = pb_control_main.find("#arrows_zoomIn");
        var arrows_zoomOut = pb_control_main.find("#arrows_zoomOut");

        var zoomInFunc = function () {
            var zoomMax = htconfig.Default.zoomMax;
            var zoomTemp = PageBuilderPreview.graph.getZoom();
            if (zoomTemp < zoomMax) {
                zoomTemp += 0.005;
                PageBuilderPreview.graph.setZoom(zoomTemp);
            } else {
                clearInterval(zoomTimer);
            }
        };

        var zoomOutFunc = function () {
            var zoomMin = htconfig.Default.zoomMin;
            var zoomTemp = PageBuilderPreview.graph.getZoom();
            if (zoomTemp > zoomMin) {
                zoomTemp -= 0.005;
                PageBuilderPreview.graph.setZoom(zoomTemp);
            } else {
                clearInterval(zoomTimer);
            }
        };

        arrows_zoomIn.mousedown(function () {
            zoomTimer = setInterval(zoomInFunc, 10);
        }).mouseup(function () {
            if (zoomTimer != null) {
                clearInterval(zoomTimer);
            }
        }).mouseout(function () {
            if (zoomTimer != null) {
                clearInterval(zoomTimer);
            }
        });

        arrows_zoomIn.on("touchstart", function () {
            zoomTimer = setInterval(zoomInFunc, 10);
        }).on("touchend", function () {
            if (zoomTimer != null) {
                clearInterval(zoomTimer);
            }
        });

        arrows_zoomOut.mousedown(function () {
            zoomTimer = setInterval(zoomOutFunc, 10);
        }).mouseup(function () {
            if (zoomTimer != null) {
                clearInterval(zoomTimer);
            }
        }).mouseout(function () {
            if (zoomTimer != null) {
                clearInterval(zoomTimer);
            }
        });

        arrows_zoomOut.on("touchstart", function () {
            zoomTimer = setInterval(zoomOutFunc, 10);
        }).on("touchend", function () {
            if (zoomTimer != null) {
                clearInterval(zoomTimer);
            }
        });

        //移动
        var moveFunc = function (obj) {
            var at = obj.attr("at");

            var width = htmlContainerObj.width() * PageBuilderPreview.graph.getZoom() / 2;
            var height = htmlContainerObj.height() * PageBuilderPreview.graph.getZoom() / 2;
            console.log(height);

            var x = PageBuilderPreview.graph.getTranslateX();
            var y = PageBuilderPreview.graph.getTranslateY();
            switch (at) {
                case "left":
                    if (x > -width) {
                        x -= 2;
                        PageBuilderPreview.graph.setTranslateX(x);
                    } else {
                        clearInterval(zoomTimer);
                    }
                    break;
                case "rigth":
                    if (x < width) {
                        x += 2;
                        PageBuilderPreview.graph.setTranslateX(x);
                    } else {
                        clearInterval(zoomTimer);
                    }
                    break;
                case "top":
                    if (y > -height) {
                        y -= 2;
                        PageBuilderPreview.graph.setTranslateY(y);
                    } else {
                        clearInterval(zoomTimer);
                    }
                    break;
                case "bottom":
                    if (y < height) {
                        y += 2;
                        PageBuilderPreview.graph.setTranslateY(y);
                    } else {
                        clearInterval(zoomTimer);
                    }
                    break;
            }
        };
        var arrows = pb_control_main.find(".arrows");
        arrows.mousedown(function () {
            zoomTimer = setInterval(moveFunc, 10, $(this));
        }).mouseup(function () {
            if (zoomTimer != null) {
                clearInterval(zoomTimer);
            }
        }).mouseout(function () {
            if (zoomTimer != null) {
                clearInterval(zoomTimer);
            }
        }).on("touchstart", function () {
            zoomTimer = setInterval(moveFunc, 10, $(this));
        }).on("touchend", function () {
            if (zoomTimer != null) {
                clearInterval(zoomTimer);
            }
        });

        //重置
        var pb_control_reset = pb_control_main.find("#pb_control_reset");
        pb_control_reset.click(function () {
            Result.graph.setZoom(zoom);
            Result.graph.setTranslate(translateX, translateY);
        });

    };

    //修复原组态工程页面数据
    var fixOldData = function (jsonData) {
        var isOld = jsonData.indexOf("ht.HtmlNode") >= 0;
        if (isOld === false) {
            console.log("new");
            return false;
        }
        console.log("old");
        var dataModel_raw = new ht.DataModel();
        dataModel_raw.deserialize(jsonData);   //加载页面数据
        var nodes = dataModel_raw.getDatas().toArray();
        //修复特殊node,以及绑定属性事件
        for (var i = 0; i < nodes.length; i++) {
            var item = nodes[i];
            if (item instanceof ht.Node) {
                var controlJSON_str = item.a("controlJSON");
                if (controlJSON_str !== undefined && controlJSON_str.length > 0) {
                    var controlJSON = JSON.parse(controlJSON_str);
                    switch (controlJSON.Type) {
                        case "CustomNode_img":
                        case "CustomNode_imgbtn":
                            var temp_node = new ht.HtmlNode();
                            PageBuilderControl.initControl_img(temp_node, item.a("node_img_default"));
                            var attrObj = JSON.parse(JSON.stringify(ht.Default.clone(item.getAttrObject())));
                            temp_node.setAttrObject(attrObj);
                            var width = temp_node.a("node_width");
                            var height = temp_node.a("node_height");
                            temp_node.a("node_width", width + 1);
                            temp_node.a("node_width", width);
                            temp_node.a("node_height", height + 1);
                            temp_node.a("node_height", height);
                            //temp_node.setSize(item.getSize());
                            temp_node.setRotation(item.getRotation());
                            var position = item.getPosition();
                            temp_node.setPosition({ x: position.x, y: position.y });
                            PageBuilderPreview.dataModel.add(temp_node);
                            break;
                        case "CustomNode_text":
                            var temp_node = new ht.Node();
                            PageBuilderControl.initControl_text(temp_node);
                            //获取原数据
                            temp_node.a("node_text", item.a("node_text"));
                            temp_node.a("node_text_color", item.a("node_text_color"));
                            temp_node.a("node_background_color", item.a("node_background_color"));
                            temp_node.a("node_text_fontSize", item.a("node_text_fontSize"));
                            temp_node.a("node_text_fontFamily", item.a("node_text_fontFamily"));
                            temp_node.a("node_text_font", item.a("node_text_font"));
                            temp_node.a("node_text_width", item.getWidth() + 20);
                            temp_node.a("node_text_height", item.getHeight());
                            temp_node.a("nodeInfo", item.a("nodeInfo"));
                            temp_node.a("controlJSON", item.a("controlJSON"));
                            //var attrObj = JSON.parse(JSON.stringify(ht.Default.clone(item.getAttrObject())));
                            //temp_node.setAttrObject(attrObj);
                            var position = item.getPosition();
                            temp_node.setPosition({ x: position.x, y: position.y });
                            PageBuilderPreview.dataModel.add(temp_node);
                            break;
                        case "CustomNode_btn":
                            //PageBuilderPreview.dataModel.add(item);
                            var temp_node = new ht["ButtonNode"]();
                            PageBuilderControl.initControl_btn(temp_node);
                            var attrObj = JSON.parse(JSON.stringify(ht.Default.clone(item.getAttrObject())));
                            var styleObj = {
                                "live.label": item.s("live.label"),
                                "live.label.color": item.s("live.label.color"),
                                "live.background": item.s("live.background"),
                                "live.label.font": item.s("live.label.font"),
                                "live.border.color": item.s("live.border.color"),
                                "live.border.width": item.s("live.border.width"),
                            }
                            temp_node.setAttrObject(attrObj);
                            temp_node.s(styleObj);
                            temp_node.setSize(item.getSize());
                            var position = item.getPosition();
                            temp_node.setPosition({ x: position.x, y: position.y });
                            temp_node.setEditable(false);
                            PageBuilderPreview.dataModel.add(temp_node);
                            break;
                    }
                }
            }
        };
        //修复后保存数据
        PageBuilderEdit.savePageInfo(function () {
            PageBuilderEdit.getPageInfo(PageBuilderPreview.currentPageInfo.ID, function (result) {
                PageBuilderPreview.currentPageInfo = result;
                if (PageBuilderPreview.currentPageInfo.PageInfoType === "page") {
                    PageBuilderPreview.pageLoad();
                    PageBuilderIDE.highlightTag();
                    PageBuilderIDE.enabledIDE(true);
                }
            });
        });
        return true;
    };

    var initGraph_DataModel = function () {
        PageBuilderPreview.dataModel = new ht.DataModel();
        PageBuilderPreview.graph = window.graph = new ht.graph.GraphView(PageBuilderPreview.dataModel);
    };

    var Result = {
        pageBuilderPreviewDefault: null,
        graph: null,                //2D画布
        graph3d: null,              //3D画布
        dataModel: null,            //数据对象
        projectID: 0,               //当前项目ID
        project: null,               //当前项目信息
        currentPageInfo: null,      //当前页面对象
        canvasBackImg: null,         //底图img对象
        enabledZoomTranslate: false,  //是否启用缩放和拖拽
        //--------------组件初始化（必须）--------------------
        init: function (PageBuilderPreviewDefault) {
            if (PageBuilderPreviewDefault === undefined || PageBuilderPreviewDefault === null || PageBuilderPreviewDefault.projectID <= 0 || PageBuilderPreviewDefault.htmlContainer === null) {
                alert("PageBuilderPreview组件初始化错误。");
                return;
            }
            this.pageBuilderPreviewDefault = PageBuilderPreviewDefault;
            _useToolUrl = (PageBuilderPreviewDefault.useToolUrl === true ? true : false);
            _enableEdit = (PageBuilderPreviewDefault.enableEdit === true ? true : false);
            this.dataModel = new ht.DataModel();
            this.graph = window.graph = new ht.graph.GraphView(this.dataModel);
            this.graph.enableToolTip();
            this.graph.adjustHtmlNodeIndex = false;
            this.graph.getToolTip = function (e) {
                var data = window.graph.getDataAt(e);
                var tip = null;
                if (data instanceof ht.Node) {
                    var enabledTip = data.a("enabledTip");
                    if (enabledTip === undefined || enabledTip === null || enabledTip === false) {
                        return null;
                    }
                    var nodeInfo = data.a("nodeInfo");

                    if (nodeInfo !== null) {
                        tip = nodeInfo.tip;
                    }

                    if (nodeInfo.cameraTags !== undefined && nodeInfo.cameraTags !== null && nodeInfo.cameraTags.length > 0) {
                        if (tip !== null && tip !== undefined && tip.length > 0) {
                            tip += "<br/><br/>摄像头：" + nodeInfo.cameraTags[0].Name;
                        } else {
                            tip = nodeInfo.cameraTags[0].Name;
                        }
                    }
                }
                return tip;//{ html:html};
            };
            //initGraph_DataModel();
            this.projectID = PageBuilderPreviewDefault.projectID;
            initEventListener();                //画布事件监听
            initCanvasStatusZoom_Translate();   //画布拖拽缩放状态
            initCanvasView();                   //初始化画布dom
            initCanvasControl();
        },
        //--------------获取当前页面数据------------------------
        getCanvasData: function () {
            var jsonData = this.dataModel.serialize();
            //if (_projectPageInfo.canvasType !== "3d") {
            //var isOld = this.currentPageInfo.JsonData.indexOf("ht.HtmlNode") >= 0;
            //if (isOld === true) {
            //    jsonData = jsonData.replace(new RegExp(/ht.Node/g), 'ht.HtmlNode');
            //}
            //jsonData = jsonData.replace(new RegExp(/ht.Node/g), 'ht.HtmlNode');//修正ht.HtmlNode的序列化结果
            //}
            return jsonData;
        },
        //页面加载数据并展示
        pageLoad: function () {
            try {
                PageBuilderPreview.dataModel.clear();         //清空数据模型
            } catch (e) {
                console.log(e);
            }
            //PageBuilderPreview.init(PageBuilderPreview.pageBuilderPreviewDefault);
            initCanvasViewSize();
            if (this.currentPageInfo !== null) {
                if (window.historyManager !== undefined && window.historyManager !== null) {
                    window.historyManager.beginTransient();//之后代码段禁用历史记录
                }
                this.graph.setDisabled(true);    //画布禁用
                this.graph.reset();              //画布重置
                this.canvasBackImg = new Image();
                this.canvasBackImg.onload = function () {
                    PageBuilderPreview.graph.setZoom(1);
                    PageBuilderPreview.graph.setTranslate(0, 0);
                    initBackground(PageBuilderPreview.canvasBackImg);   //初始化画布背景信息
                    initCanvasSize_Location();                          //初始化画布位置和大小
                    PageBuilderPreview.graph.setDisabled(false);
                }
                if (this.currentPageInfo.PageInfoBackground !== null
                    && this.currentPageInfo.PageInfoBackground.Src !== null
                    && this.currentPageInfo.PageInfoBackground.Src.length > 0) {
                    initCanvasSize_Location();//提前设置页面大小，防止图片加载后导致页面闪烁
                    //有背景
                    this.canvasBackImg.style.width = this.currentPageInfo.PageInfoBackground.Width;
                    this.canvasBackImg.style.height = this.currentPageInfo.PageInfoBackground.Height;
                    //if (_useToolUrl === true) {
                    this.canvasBackImg.src = this.currentPageInfo.PageInfoBackground.Src_tool;

                    //} else {
                    //    this.canvasBackImg.src = this.currentPageInfo.PageInfoBackground.Src;
                    //}
                } else {
                    //没背景
                    initBackground();                               //初始化画布背景信息
                    initCanvasSize_Location();                      //初始化画布位置和大小
                }

                if (this.currentPageInfo.PageInfoType === "page") {
                    this.graph.getView().style.backgroundColor = ((this.currentPageInfo.PageInfoBackground.BgColor !== null && this.currentPageInfo.PageInfoBackground.BgColor.length > 0) ? this.currentPageInfo.PageInfoBackground.BgColor : "#fff");

                    //this.currentPageInfo.JsonData 里包含ht.HtmlNode时为旧版本
                    //var isOld = this.currentPageInfo.JsonData.indexOf("ht.HtmlNode") >= 0;
                    if (fixOldData(this.currentPageInfo.JsonData) === true) {
                        return;
                    }
                    this.dataModel.deserialize(this.currentPageInfo.JsonData);   //加载页面数据
                    var nodes = this.dataModel.getDatas().toArray();
                    //修复特殊node,以及绑定属性事件
                    for (var i = 0; i < nodes.length; i++) {
                        var item = nodes[i];
                        if (item instanceof ht.Node) {
                            var controlJSON_str = item.a("controlJSON");
                            var _group = item.a("_group") || "";
                            if (controlJSON_str !== undefined && controlJSON_str.length > 0) {
                                var controlJSON = JSON.parse(controlJSON_str);
                                switch (controlJSON.Type) {
                                    case "CustomNode_img":
                                    case "CustomNode_imgbtn":
                                        if (item instanceof ht.HtmlNode) {
                                            var img_default_src = item.a("node_img_default");
                                            var context = {
                                                width: item.a("node_width"),
                                                height: item.a("node_height"),
                                                node_img_default_temp: img_default_src
                                            };
                                            item.setPadding(0);
                                            item.setContext(context);
                                            var html = '<img width="{{width}}" height="{{height}}" src="{{node_img_default_temp}}"/>';
                                            item.setHtml(html);
                                            PageBuilderControl.initControl_img_PropertyChanged(item, context);
                                            //console.log("ht.HtmlNode");
                                        } else {
                                            var temp_node = new ht.HtmlNode();
                                            PageBuilderControl.initControl_img(temp_node, item.a("node_img_default"), _group);
                                            var attrObj = JSON.parse(JSON.stringify(ht.Default.clone(item.getAttrObject())));
                                            temp_node.setAttrObject(attrObj);
                                            var width = temp_node.a("node_width");
                                            var height = temp_node.a("node_height");
                                            temp_node.a("node_width", width + 1);
                                            temp_node.a("node_width", width);
                                            temp_node.a("node_height", height + 1);
                                            temp_node.a("node_height", height);
                                            //temp_node.setSize(item.getSize());
                                            temp_node.setRotation(item.getRotation());
                                            var position = item.getPosition();
                                            temp_node.setPosition({ x: position.x, y: position.y });
                                            PageBuilderPreview.dataModel.add(temp_node);
                                            PageBuilderPreview.dataModel.remove(item);
                                            //console.log("ht.Node");
                                        }
                                        break;
                                    case "CustomNode_text":
                                        if (item instanceof ht.HtmlNode) {
                                            console.log("ht.HtmlNode");

                                            //if (item.a("node_text") === null) {
                                            //    item.a("node_text", "文本读写");
                                            //}
                                            //if (item.a("node_text_color") === null) {
                                            //    item.a("node_text_color", "#fff");
                                            //}
                                            //if (item.a("node_background_color") === null) {
                                            //    item.a("node_background_color", "rgba(10,43,74,0.1)");
                                            //}
                                            //if (item.a("node_text_fontSize") === null) {
                                            //    item.a("node_text_fontSize", "14");
                                            //}
                                            //if (item.a("node_text_fontFamily") === null) {
                                            //    item.a("node_text_fontFamily", "宋体");
                                            //}
                                            //if (item.a("node_text_fontBold") === null) {
                                            //    item.a("node_text_fontBold", false);
                                            //}
                                            //if (item.a("node_text_font") === null) {
                                            //    item.a("node_text_font", "14px 宋体");
                                            //}
                                            //if (item.a("node_text_rect_outer") === null) {
                                            //    item.a("node_text_rect_outer", [0, 0, 60, 26]);
                                            //}
                                            //if (item.a("node_text_rect_inside") === null) {
                                            //    item.a("node_text_rect_inside", [2, 2, 56, 22]);
                                            //}
                                            //if (item.a("node_text_width") === null) {
                                            //    item.a("node_text_width", 60);
                                            //}
                                            //if (item.a("node_text_height") === null) {
                                            //    item.a("node_text_height", 26);
                                            //}
                                            //if (item.a("node_border_width") === null) {
                                            //    item.a("node_border_width", 0);
                                            //}
                                            //if (item.a("node_border_color") === null) {
                                            //    item.a("node_border_color", "rgba(0, 0, 0, 1)");
                                            //}
                                            //item.setImage(null);
                                            //item.setImage({
                                            //    width: { func: 'attr@node_text_width' },
                                            //    height: { func: 'attr@node_text_height' },
                                            //    clip: true,
                                            //    comps: [
                                            //        {
                                            //            type: 'rect',
                                            //            rect: { func: function (n) { return [0, 0, n.a("node_text_width"), n.a("node_text_height")]; } },
                                            //            background: { func: 'attr@node_background_color' },
                                            //            borderWidth: { func: 'attr@node_border_width' },
                                            //            borderColor: { func: 'attr@node_border_color' },
                                            //        },
                                            //        {
                                            //            type: 'text',
                                            //            text: { func: 'attr@node_text' },
                                            //            rect: {
                                            //                func: function (n) {
                                            //                    var padding = parseInt(n.a("node_border_width")) + 2;
                                            //                    return [padding, padding, parseInt(n.a("node_text_width")) - padding * 2, parseInt(n.a("node_text_height")) - padding * 2];
                                            //                }
                                            //            },
                                            //            color: { func: "attr@node_text_color" },
                                            //            font: { func: "attr@node_text_font" },
                                            //            align: 'center',
                                            //            vAlign: 'middle',
                                            //        }
                                            //    ]
                                            //});
                                            PageBuilderControl.initControl_text_PropertyChanged(item);
                                        }
                                        else {
                                            var temp_node = new ht.Node();
                                            PageBuilderControl.initControl_text(temp_node);
                                            var attrObj = JSON.parse(JSON.stringify(ht.Default.clone(item.getAttrObject())));
                                            temp_node.setAttrObject(attrObj);
                                            var position = item.getPosition();
                                            temp_node.setPosition({ x: position.x, y: position.y });

                                            PageBuilderPreview.dataModel.add(temp_node);
                                            PageBuilderPreview.dataModel.remove(item);
                                            //console.log("ht.Node");
                                        }
                                        break;
                                    case "CustomNode_btn":
                                        item.setEditable(!_enableEdit);
                                        PageBuilderControl.initControl_btn_PropertyChanged(item);
                                        break;
                                }
                            }
                        }
                    };
                } else {

                }


                this.graph.setDisabled(false);
                if (window.historyManager !== undefined && window.historyManager !== null) {
                    window.historyManager.endTransient();//之前代码段禁用历史记录
                }
            }
        },

        //清空画布
        clearCanvas: function (deleteModel) {
            if (this.currentPageInfo && this.currentPageInfo.PageInfoBackground) {
                this.currentPageInfo.PageInfoBackground = new PageInfoBackground();
            }
            if (deleteModel !== undefined && deleteModel === true) {
                try {
                    PageBuilderPreview.dataModel.clear();
                } catch (e) {
                    console.log(e);
                }
                if (this.currentPageInfo && this.currentPageInfo.JsonData) {
                    this.currentPageInfo.JsonData = this.getCanvasData();
                }
            }
            this.pageLoad();
        },

        //锁定画布
        lockCanvas: function (isLock) {
            this.enabledZoomTranslate = !isLock;
            if (isLock === true) {
                this.graph.setZoom(zoom);
                this.graph.setTranslate(translateX, translateY);
            }
        },
    };
    return Result;
})();
/***** PageBuilderPreview初始化参数 *******/
var PageBuilderPreviewDefault = function () {
    var obj = new Object();
    obj.useToolUrl = false;
    obj.enableEdit = false;
    obj.projectID = 0;
    obj.htmlContainer = null;   //画布容器
    obj.enabledControl = false;       //是否启用控制器
    return obj;
}
/******* 页面类 ******/
var PageInfo = function () {
    var obj = new Object();
    obj.ID = 0;
    obj.Name = null;
    obj.ProjectInfoID = 0;
    obj.ParentID = 0;
    obj.Order = 0;
    obj.PageInfoType = "page";
    obj.IsModalPage = false;
    obj.ModalPageWidth = 0;
    obj.ModalPageHeight = 0;
    obj.PageInfoBackground = new PageInfoBackground();
    obj.JsonData = null;
    obj.ReferenceURL = null;
    return obj;
};
/******* 页面背景类 ******/
var PageInfoBackground = function () {
    var obj = new Object();
    obj.ID = 0;
    obj.Src = null;
    obj.Src_tool = null;
    obj.Width = 1850;
    obj.Height = 970;
    obj.BgColor = null;
    return obj
}


//执行下发事件
function sendValue(tag_values) {
    var sendDatas = [];
    var code_value = $.randomString(6);
    if (tag_values !== undefined && tag_values.length > 0) {
        var sendDate = (new Date()).format("yyyy-MM-dd hh:mm:ss");
        $.each(tag_values, function (i, n) {
            sendDatas.push({ TagID: n.TagID, /*TagName: n.TagName,*/ Value: n.Value, SetTime: sendDate, SetCode: code_value });
        });
    } else {
        return;
    }

    //目前只支持单个控件下发，不支持多个控件批量下发
    PageBuilderWebSocket.sendTagData(sendDatas[0], function (setCode, data) {
        if (code_value === setCode) {
            var msg = "";
            var isAlertMsg = false;
            if (data.HasError === false) {
                if (PageBuilderPreview.project.ProjectInfo.SendSucceedMsg === true) {
                    isAlertMsg = true;
                    msg += data.TagName + "（" + data.TagID + "）" + " [ 下发值：" + data.Value + " ] " + "下发成功。\r\n";
                }
            } else {
                if (PageBuilderPreview.project.ProjectInfo.SendFailMsg === true) {
                    isAlertMsg = true;
                    msg += data.TagName + "（" + data.TagID + "）" + " [ 下发值：" + data.Value + " ] " + "下发失败，失败原因：" + data.Error + "\r\n";
                }
            }
            if (msg.trim().length > 0 && isAlertMsg === true) {
                dialogMsg(msg);
            }
        }
    });
}


function _dialog(params) {
    var data = {
        html: "",
        title: "",
        width: 900,
        height: 500,
        backdrop: true,
        fun_ok: null,
        container: "body",
        modalID: null
    };
    if (params !== undefined && params !== null) {
        data = $.extend(data, params);
    }
    var html_str = '<div class="pagebuilder_modal-header modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button><h5 class="pagebuilder_modal-title modal-title">' + (data.title === undefined ? "" : data.title) +
        '</h5></div><div class="pagebuilder_modal-body modal-body"><div>' + (data.html === undefined ? "" : data.html) + '</div></div><div class="pagebuilder_modal-footer modal-footer">' +
        '<button type="button" id="_dialog_close" data-dismiss="modal" class="btn btn-default btn-xs">关闭</button><button type="button" id="_dialog_ok" data-dismiss="modal" class="btn btn-default btn-xs">确定</button></div>';


    var modalID = data.modalID || $.randomString(6);
    var result_obj = $("<div class='modal-content'></div>").append(html_str);
    var result_html = "";
    var result_script = [];

    var tempScript = result_obj.find("script");
    $.each(tempScript, function (i, n) {
        result_script.push($(n));
    });
    var tempHtml = result_obj.not("script");
    result_obj.find("script").remove()
    result_html = tempHtml.html();

    var modal_dialog = $('<div class="pagebuilder_modal modal modal_dialog" aria-hidden="true" id="' + modalID + '" tabindex="-1" role="dialog" style="width:100%;position: initial;"><div class="modal-dialog modal-lg" style="width:' +
        (data.width === undefined ? "900" : data.width) + 'px;margin:auto;"><div class="modal-content">' + result_html + '</div></div></div>');
    modal_dialog.find("#_dialog_ok").click(function () {
        if (data.fun_ok !== undefined && $.type(data.fun_ok) === "function") {
            data.fun_ok(true);
        }
    });
    modal_dialog.find("#_dialog_close").click(function () {
        if (data.fun_ok !== undefined && $.type(data.fun_ok) === "function") {
            data.fun_ok(false);
        }
    });

    var container = $(data.container);
    var css_modal_dialog = modal_dialog.find(".modal-dialog");
    modal_dialog.on('show.bs.modal', function (e) {

    }).on('hidden.bs.modal', function (e) {
        modal_dialog.remove();
        // 解决多个弹出框滚动条丢失bug
        if (container.find(".modal:visible").length > 0) {
            container.addClass("modal-open");
        }
    }).on('shown.bs.modal', function () {
        //模态框层级问题
        var _z = Number($(this).css('z-index'));
        var _n = container.find('.modal-open .modal.modal_dialog.in').length;
        $(this).css('z-index', _z + _n);
        container.find("div.modal-backdrop.in:last-child").css('z-index', _z + _n - 1);
        //模态窗口高度
        if (css_modal_dialog.height() < $(window).height()) {
            css_modal_dialog.css({
                'margin-top': function () {
                    return ($(window).height() / 2 - (css_modal_dialog.height() / 2));
                }
            });
        }
        if (result_script.length > 0) {
            var scriptContainer = modal_dialog.find(".modal-content");
            $.each(result_script, function (i, n) {
                scriptContainer.append(n);
            });
        }
    });
    modal_dialog.appendTo(container).modal({ show: true, backdrop: data.backdrop });
}