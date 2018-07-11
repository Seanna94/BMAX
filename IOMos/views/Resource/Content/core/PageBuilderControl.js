var PageBuilderControlIDE = {};
PageBuilderControlIDE = (function () {
    //字体
    var _textFont = { values: ["宋体", "微软雅黑", "黑体", "Arial", "Verdana", "Arial Black"] };
    //常规组件库
    var _baseControls = [
        {
            data: { Type: 'CustomNode_text', Name: '文本读写' }, base: { ID: "cc_wb", Size: { w: 80, h: 20 }, IocImg: "/JavaScript/EditPage/CustomControl/form0.png" },
            property: [{
                name: 'node_text',
                displayName: "文本",
                editable: true,
                accessType: "attr",
                categoryName: "基础属性"
            }, {
                name: 'enabledTip',
                displayName: "启用tip",
                editable: true,
                accessType: "attr",
                valueType: "boolean",
                categoryName: "基础属性"
            }, {
                name: 'node_text_color',
                displayName: "文字颜色",
                editable: true,
                accessType: "attr",
                valueType: "color",
                categoryName: "文字样式"
            }, {
                name: 'node_text_fontSize',
                displayName: "文字大小",
                editable: true,
                accessType: "attr",
                valueType: "int",
                categoryName: "文字样式",
                slider: { min: 8, max: 60, step: 1 }
            }, {
                name: 'node_text_fontFamily',
                displayName: "文字字体",
                editable: true,
                accessType: "attr",
                categoryName: "文字样式",
                enum: _textFont
            }, {
                name: 'node_text_fontBold',
                displayName: "粗体",
                editable: true,
                accessType: "attr",
                valueType: "boolean",
                categoryName: "文字样式",
            }, {
                name: 'node_text_width',
                displayName: "宽度",
                editable: true,
                accessType: "attr",
                valueType: "int",
                categoryName: "外观样式",
            }, {
                name: 'node_text_height',
                displayName: "高度",
                editable: true,
                accessType: "attr",
                valueType: "int",
                categoryName: "外观样式",
            }, {
                name: 'node_border_width',
                displayName: "边框",
                editable: true,
                accessType: "attr",
                valueType: "int",
                categoryName: "外观样式",
                slider: { min: 0, max: 15, step: 1 }
            }, {
                name: 'node_border_color',
                displayName: "边框颜色",
                editable: true,
                accessType: "attr",
                valueType: "color",
                categoryName: "外观样式",
            }, {
                name: 'node_background_color',
                displayName: "背景颜色",
                editable: true,
                accessType: "attr",
                valueType: "color",
                categoryName: "外观样式"
            }
            ]
        },
        {
            data: { Type: 'CustomNode_btn', LiveNodeType: 'ButtonNode', Name: '按钮' }, base: { ID: "cc_1", IocImg: "/JavaScript/EditPage/CustomControl/form1.png" },
            property: [{
                name: 'live.label',
                displayName: "文本",
                editable: true,
                accessType: "style",
                categoryName: "基础属性"
            }, {
                name: 'enabledTip',
                displayName: "启用tip",
                accessType: "attr",
                editable: true,
                valueType: "boolean",
                categoryName: "基础属性"
            }, {
                name: 'live.label.color',
                displayName: "文字颜色",
                editable: true,
                accessType: "style",
                valueType: "color",
                categoryName: "文字样式"
            }, {
                name: 'node_text_fontSize',
                displayName: "文字大小",
                editable: true,
                accessType: "attr",
                valueType: "int",
                categoryName: "文字样式",
                slider: { min: 8, max: 60, step: 1 }
            }, {
                name: 'node_text_fontFamily',
                displayName: "文字字体",
                editable: true,
                accessType: "attr",
                categoryName: "文字样式",
                enum: _textFont
            }, {
                name: 'node_text_fontBold',
                displayName: "粗体",
                editable: true,
                accessType: "attr",
                valueType: "boolean",
                categoryName: "文字样式",
            }, {
                name: 'node_text_width',
                displayName: "宽度",
                editable: true,
                accessType: "attr",
                valueType: "int",
                categoryName: "外观样式",
            }, {
                name: 'node_text_height',
                displayName: "高度",
                editable: true,
                accessType: "attr",
                valueType: "int",
                categoryName: "外观样式",
            }, {
                name: 'node_border_width',
                displayName: "边框",
                editable: true,
                accessType: "attr",
                valueType: "int",
                categoryName: "外观样式",
                slider: { min: 0, max: 15, step: 1 }
            }, {
                name: 'node_border_color',
                displayName: "边框颜色",
                editable: true,
                accessType: "attr",
                valueType: "color",
                categoryName: "外观样式",
            }, {
                name: 'live.background',
                displayName: "背景颜色",
                editable: true,
                accessType: "style",
                valueType: "color",
                categoryName: "外观样式"
            }]
        },
        {
            data: { Type: 'CustomNode_imgbtn', Name: '图片读写' }, base: { ID: "cc_imgbtn", Size: { w: 80, h: 20 }, IocImg: "/JavaScript/EditPage/CustomControl/customNode_img_ico.png", NodeImg: "/JavaScript/EditPage/CustomControl/customNode_img.png" },
            property: [{
                name: 'enabledTip',
                displayName: "启用tip",
                accessType: "attr",
                editable: true,
                valueType: "boolean",
                categoryName: "基础属性"
            }, {
                name: '_group',
                displayName: "层叠分组",
                editable: true,
                accessType: "attr",
                valueType: "int",
                categoryName: "基础属性",
            }]
        },
        {
            data: { Type: 'CustomNode_img', Name: '离散控件' }, base: { ID: "cc_img", Size: { w: 80, h: 20 }, IocImg: "/JavaScript/EditPage/CustomControl/customNode_img_ico.png", NodeImg: "/JavaScript/EditPage/CustomControl/customNode_img.png" },
            property: [{
                name: 'enabledTip',
                displayName: "启用tip",
                accessType: "attr",
                editable: true,
                valueType: "boolean",
                categoryName: "基础属性"
            }, {
                name: '_group',
                displayName: "层叠分组",
                editable: true,
                accessType: "attr",
                valueType: "int",
                categoryName: "基础属性",
            }]
        },

    ];
    var propertyPane_html_obj = null, table_property = null;       //html属性区域

    var tempNode = null;
    var dropImg = null;
    /* 控件面板 拖拽事件 */
    var bindEvent_DragAndDrop = function (palette) {
        palette.handleDragAndDrop = function (e, state) {
            if (state === 'end') {
                if (tempNode === null) {
                    return;
                }
                var bound = PageBuilderPreview.graph.getView().getBoundingClientRect(), point = ht.Default.getClientPoint(e);
                if (ht.Default.containsPoint({ x: bound.left, y: bound.top, width: bound.width, height: bound.height }, point)) {
                    PageBuilderPreview.dataModel.getSelectionModel().setSelection(tempNode);
                    PageBuilderIDE.highlightTag();//是否高亮显示控件绑定点情况 
                    window.moveInteractor._isNew = true;
                } else {
                    PageBuilderPreview.dataModel.getSelectionModel().clearSelection();
                    PageBuilderPreview.dataModel.remove(tempNode);
                }
                tempNode = null;
                dropImg = null;
            }
            else if (state === 'between') {
                var bound = PageBuilderPreview.graph.getView().getBoundingClientRect(), point = ht.Default.getClientPoint(e);
                if (dropImg === null) {
                    dropImg = $("img[draggable='false'][src^='data']");
                }
                if (ht.Default.containsPoint({ x: bound.left, y: bound.top, width: bound.width, height: bound.height }, point)) {
                    window.moveInteractor._isLock = !PageBuilderPreview.enabledZoomTranslate;
                    if (window.moveInteractor._isLock === false) {
                        //PageBuilderPreview.lockCanvas(true);//todo:暂时去掉,由于页面目前字体，图标太小，造成看不清，取消掉锁定画布功能
                    }
                    //进入画布
                    if (tempNode === null) {
                        var controlNode = this.sm().ld();
                        var controlJSON_str = controlNode.a("controlJSON");
                        if (controlJSON_str === undefined || controlJSON_str === null) {
                            return;
                        }
                        var controlJSON = JSON.parse(controlJSON_str);
                        //常规元素
                        var lp = PageBuilderPreview.graph.lp(e);

                        var nodeInfo = new NodeInfo();
                        switch (controlJSON.data.Type) {
                            case "CustomNode_text":             //文本读写
                                tempNode = new ht.Node();
                                PageBuilderControl.initControl_text(tempNode);
                                break;
                            case "CustomNode_btn":
                                tempNode = new ht["ButtonNode"]();
                                PageBuilderControl.initControl_btn(tempNode);
                                tempNode.setEditable(false);
                                break;
                            case "CustomNode_imgbtn":           //图片读写
                                tempNode = new ht.HtmlNode();
                                var temp_src = PageBuilderPreview.project.ProjectVirtualPath + "/Resource/Images/customNode_img.png";
                                PageBuilderControl.initControl_img(tempNode, temp_src);
                                var node_img = {};
                                node_img["0"] = { img: "", value: "0", width: 0, height: 0 };
                                node_img["1"] = { img: "", value: "1", width: 0, height: 0 };
                                nodeInfo.send_type = "bool";//默认是开关量图片读写控件，可切换消息行图片控件
                                tempNode.a("node_img", node_img);
                                break;
                            case "CustomNode_img":              //离散控件
                                tempNode = new ht.HtmlNode();
                                var temp_src = PageBuilderPreview.project.ProjectVirtualPath + "/Resource/Images/customNode_img.png";
                                PageBuilderControl.initControl_img(tempNode, temp_src);
                                var node_img = {};
                                tempNode.a("node_img", node_img);
                                break;
                            default:
                                return;
                        }
                        tempNode.setPosition(lp.x, lp.y);       //设置控件位置
                        //historyManager.beginInteraction();
                        tempNode.a("controlJSON", JSON.stringify(controlJSON.data));
                        tempNode.a("nodeInfo", nodeInfo);

                        PageBuilderPreview.dataModel.add(tempNode);
                        PageBuilderPreview.dataModel.getSelectionModel().setSelection(tempNode);
                        //historyManager.endInteraction();

                        var self = window.moveInteractor;
                        graphView = self.gv;
                        if (!ht.Default.isLeftButton(e) || graphView._editing) {
                            return;
                        }
                        var data = graphView.getSelectedDataAt(e);
                        if (data && data instanceof ht.Node) {
                            self._data = data;
                            graphView.handleMouseDown && graphView.handleMouseDown(e, data);
                            self.startDragging(e);
                            var lastLogicalPoint = self._lastLogicalPoint,
                                nodeRect = data.getRect(),
                                nodeX = nodeRect.x,
                                nodeY = nodeRect.y;
                            self._offset = { x: lastLogicalPoint.x - nodeX, y: lastLogicalPoint.y - nodeY };
                            if (graphView.isMovable(data)) {
                                graphView._moving = 1;
                            }
                        }
                    }
                    if (dropImg !== null) {
                        dropImg.hide();
                    }
                } else {
                    //未进入画布
                    dropImg.show();
                    if (tempNode !== null) {
                        PageBuilderPreview.dataModel.getSelectionModel().clearSelection();
                        PageBuilderPreview.dataModel.remove(tempNode);
                        tempNode = null;
                    }
                }
            }
        };
    };

    /* 属性面板事件定义（html） */
    var initPropertyEvent = function () {
        /*---------------------------------------------------------------超链接相关事件开始---------------------------------------*/
        //超链接选择事件
        $("body").on("click", "#div_control_property2 .table_property_link", function () {
            var trnodeID = $(this).parent().parent().attr("nodeid");
            var param = JSON.stringify({ "nodeID": trnodeID, "type": "link" });
            dialog("/PageBuilder/Link?callback=callback_link&param=" + param, null, null, "myboxup_4");
        });
        //输入超链接事件
        $("body").on("keyup", "#div_control_property2 #txt_prop_link", function () {
            var obj = $(this);
            var value = obj.val().trim();
            setNode_link(value, { type: "link" });
        });
        //超链接选择事件
        $("body").on("click", "#div_control_property2 .table_property_link_clear", function () {
            var tr = $(this).parent().parent();
            tr.find("#txt_prop_link").val("");
            setNode_link("", { type: "link" });
        });
        /*---------------------------------------------------------------超链接相关事件结束---------------------------------------*/


        /*---------------------------------------------------------------配置变量相关事件 开始---------------------------------------*/
        //点表数据清空事件
        $("body").on("click", "#property_group_taginfo .table_property_tag_clear", function () {
            $("#txt_prop_tagname").val("");
            $("#txt_prop_tagid").val("").change();
            var nodes = PageBuilderPreview.dataModel.getSelectionModel().getSelection().toArray();
            //循环更改配置
            $.each(nodes, function (i, node) {
                var nodeInfo = node.a("nodeInfo");
                nodeInfo.tagName = nodeInfo.tagID = "";
                nodeInfo.tagAccessRight = 0;
                node.a("nodeInfo", nodeInfo);
            });

            PageBuilderIDE.highlightTag();          //是否高亮显示绑点信息
        });

        //点表数据详细信息(配置变量 和 下发控制)
        $("body").on("click", "#property_group_taginfo .table_property_taginfo,#property_group_sendinfo .table_property_taginfo", function () {
            var obj = $(this);
            var node = PageBuilderPreview.dataModel.getSelectionModel().getLastData();
            var nodeInfo = node.a("nodeInfo");
            var tagID = null;
            if (obj.hasClass("tag1")) {
                if (nodeInfo.tagID.length > 0) {
                    tagID = nodeInfo.tagID;
                }
            } else {
                if (nodeInfo.tagID_send.length > 0) {
                    tagID = nodeInfo.tagID_send;
                }
            }
            if (tagID !== null && tagID.length > 0) {
                PageBuilderTagTree.selectedNodeByTagID(tagID, true);
            }
        });
        /*---------------------------------------------------------------配置变量相关事件 结束---------------------------------------*/



        /*---------------------------------------------------------------视频点变量相关事件 开始---------------------------------------*/
        //视频点表数据清空事件
        $("body").on("click", "#property_group_camera .table_property_camera_clear", function () {
            var obj = $(this);
            var tr = obj.parents("tr");
            var cameraTag = tr.data("CameraTag");
            tr.find(".txt_prop_camera").val("").attr("title", "");
            var nodes = PageBuilderPreview.dataModel.getSelectionModel().getSelection().toArray();
            //循环更改配置
            if (cameraTag !== undefined && cameraTag !== null) {
                $.each(nodes, function (i, node) {
                    var nodeInfo = node.a("nodeInfo");
                    if (nodeInfo.cameraTags !== undefined && nodeInfo.cameraTags.length > 0) {
                        var index = -1;
                        $.each(nodeInfo.cameraTags, function (i, n) {
                            if (n.ID == cameraTag.ID) {
                                index = i;
                                return false;
                            }
                        });
                        if (index >= 0) {
                            nodeInfo.cameraTags.splice(index, 1);
                            node.a("nodeInfo", nodeInfo);
                        }
                    }
                });
            }
            tr.remove();
        });

        //视频点表数据详细信息
        $("body").on("click", "#property_group_camera .table_property_camerainfo", function () {
            var cameraTag = $(this).parents("tr").data("CameraTag");
            if (cameraTag === undefined || cameraTag === null) {
                return;
            }
            PageBuilderTagCameraTree.selectedNodeByCameraTag(cameraTag, true);
        });
        /*---------------------------------------------------------------视频点变量相关事件 结束---------------------------------------*/


        /*----------------------------------------------------------------- 下发相关事件 开始 -------------------------------------------------------*/

        //按钮输入下发值事件
        $("body").on("keyup", "#property_group_sendinfo #txt_prop_send_value", function () {
            var nodes = PageBuilderPreview.dataModel.getSelectionModel().getSelection().toArray();
            var obj = $(this);
            var value = obj.val().trim();
            obj.val(value);
            //循环更改配置
            $.each(nodes, function (i, node) {
                var nodeInfo = node.a("nodeInfo");
                nodeInfo.send_text_value = value;
                node.a("nodeInfo", nodeInfo);
            });
        });
        //按钮下发值数据清空事件
        $("body").on("click", "#property_group_sendinfo .table_property_send_value_clear", function () {
            $("#txt_prop_send_value").val("");
            var nodes = PageBuilderPreview.dataModel.getSelectionModel().getSelection().toArray();
            //循环更改配置
            $.each(nodes, function (i, node) {
                var nodeInfo = node.a("nodeInfo");
                nodeInfo.send_text_value = "";
                node.a("nodeInfo", nodeInfo);
            });
        });
        /*----------------------------------------------------------------- 下发相关事件 结束 ---------------------------------------------------------------*/



        /*------------------------------------------------------------------图片按钮事件 开始---------------------------------------------------------------*/
        //图片按钮控件，下发类型change事件
        $("body").on("change", "#property_group_imgbtn .radio :radio", function () {
            var n_send_type = $("#property_group_imgbtn .radio :radio:checked").val();
            var nodes = PageBuilderPreview.dataModel.getSelectionModel().getSelection().toArray();
            //循环更改配置
            $.each(nodes, function (i, node) {
                var nodeInfo = node.a("nodeInfo");
                nodeInfo.send_type = n_send_type;
                node.a("nodeInfo", nodeInfo);
            });
            PageBuilderPreview.dataModel.getSelectionModel().setSelection(nodes);
        });

        //图片按钮控件，图片清空事件
        $("body").on("click", "#property_group_imgbtn .table_property_imgbtn_value_clear", function () {
            var tr = $(this).parent().parent();
            var index = tr.attr("index");
            tr.find("img").attr("src", "");
            var nodes = PageBuilderPreview.dataModel.getSelectionModel().getSelection().toArray();
            //循环更改配置
            $.each(nodes, function (i, node) {
                var node_img = node.a("node_img");
                node_img[index].img = "";
                node.a("node_img", node_img);
            });
        });

        //图片读写控件，上传图片事件
        $("body").on("click", "#property_group_imgbtn .table_property_uploadImg", function () {
            var id = $(this).attr("id");
            var param = { "id": id };
            var param_json = JSON.stringify(param);
            dialog("/ResourceLibrary/Images?callback=uploadImageControl_imgbtn&param=" + param_json, null, null, "myboxup_8");
        });
        /*----------------------------------------------------------图片按钮事件 结束---------------------------------------------------------------*/




        /*----------------------------------------------------------离散控件事件 开始---------------------------------------------------------------*/
        //离散图形控件，移除离散值事件
        $("body").on("click", "#property_group_img .removeValue", function () {
            var nodes = PageBuilderPreview.dataModel.getSelectionModel().getSelection().toArray();
            var tr = $(this).parent().parent();
            var index = tr.attr("index");
            //循环更改配置
            $.each(nodes, function (i, node) {
                var node_img = node.a("node_img");
                delete node_img[index];
                node.a("node_img", node_img);
            });
            tr.remove();
        });
        //离散图形控件，离散值变化事件
        $("body").on("keyup", "#property_group_img .text_1", function () {
            var obj = $(this);
            var value = obj.val();
            if (isNaN(value) === true) {
                obj.val(value.replace(/[^\d.]/g, ''));
                JMessage("请输入数字。", true);
                return;
            }
            var nodes = PageBuilderPreview.dataModel.getSelectionModel().getSelection().toArray();
            var tr = obj.parent().parent();
            var isMin = obj.hasClass("_min");
            var index = tr.attr("index");
            //循环更改配置
            $.each(nodes, function (i, node) {
                var node_img = node.a("node_img");

                if (node_img[index] === undefined) {
                    if (isMin === true) {
                        node_img[index] = { img: "", min: value, max: "" };
                    } else {
                        node_img[index] = { img: "", min: "", max: value };
                    }
                } else {
                    if (isMin === true) {
                        node_img[index].min = value;
                    } else {
                        node_img[index].max = value;
                    }
                }
                node.a("node_img", node_img);
            });
        });
        //离散图形控件，上传图片事件
        $("body").on("click", "#property_group_img .table_property_uploadImg", function () {
            var id = $(this).attr("id");
            var param = { "id": id };
            var param_json = JSON.stringify(param);
            dialog("/ResourceLibrary/Images?callback=uploadImageControl_lisan&param=" + param_json, null, null, "myboxup_8");
        });

        //下发点表数据清空事件
        $("body").on("click", "#property_group_sendinfo .table_property_tag_send_clear", function () {
            $("#txt_prop_tagname_send").val("");
            $("#txt_prop_tagid_send").val("").change();
            var nodes = PageBuilderPreview.dataModel.getSelectionModel().getSelection().toArray();
            //循环更改配置
            $.each(nodes, function (i, node) {
                var nodeInfo = node.a("nodeInfo");
                nodeInfo.tagName_send = nodeInfo.tagID_send = "";
                nodeInfo.tagAccessRight_send = 0;
                node.a("nodeInfo", nodeInfo);
            });
        });
        /*----------------------------------------------------------离散控件事件 结束---------------------------------------------------------------*/


        /*---------------------------------------------------------------模态窗口相关事件开始---------------------------------------*/
        //模态窗口超链接选择事件
        $("body").on("click", "#div_control_property2 .table_property_modal_url", function () {
            var node = PageBuilderPreview.dataModel.getSelectionModel().getLastData();
            var nodeID = node.getId();
            var param = JSON.stringify({ "nodeID": nodeID, "type": "modal" });
            dialog("/PageBuilder/Link?callback=callback_link&param=" + param, null, null, "myboxup_4");
        });
        //模态窗口输入超链接事件
        $("body").on("keyup", "#div_control_property2 #txt_prop_modal_url", function () {
            var obj = $(this);
            var value = obj.val().trim();
            setNode_link(value, { type: "modal" });
        });
        //模态窗口超链接选择事件
        $("body").on("click", "#div_control_property2 .table_property_modal_url_clear", function () {
            var tr = $(this).parent().parent();
            tr.find("#txt_prop_modal_url").val("");
            setNode_link("", { type: "modal" });
        });
        //模态窗口详细配置
        $("body").on("mouseover", "#div_control_property2 #property_group_modal_set_location", function () {
            var node = PageBuilderPreview.dataModel.getSelectionModel().getLastData();
            var nodeInfo = node.a("nodeInfo")
            if ($("#property_group_modal_enable:checked").length > 0 && nodeInfo.modal_url.length > 0) {
                var link = nodeInfo.modal_url;
                var size = null;//默认800*600
                if (nodeInfo.modal_size !== undefined && nodeInfo.modal_size.length > 0) {
                    size = nodeInfo.modal_size.split("_");
                    if (size[0] <= 0 || size[1] <= 0) {
                        size = [800, 600];
                    }
                } else {
                    size = [800, 600];
                }
                if (PageBuilderPreview.pageBuilderPreviewDefault.useToolUrl === true && link.indexOf("..") === 0) {
                    link = PageBuilderPreview.project.ProjectVirtualPath + "/" + $.fixVirtualPath(link);
                }
                var zoom = PageBuilderPreview.graph.getZoom() + 0.045;//缩放比例+偏移量
                var width = size[0] * zoom;
                var height = size[1] * zoom;
                var width_offset = 2 * 2 + 1 * 2 + 1;//padding*2+border*2+偏移量
                var html = '<iframe class="embed-responsive-item" src="' + link + '" width="' + width + '" height="' + height + '" style="border:none;"></iframe>';
                _dialog({
                    modalID: "modal_iframe_preview",
                    html: html, title: "模态窗口", width: width + width_offset, height: height, backdrop: false, container: "#editCanvas",
                    fun_ok: function () {
                    }
                });
            }
        }).on("mouseout", "#div_control_property2 #property_group_modal_set_location", function () {
            $("#modal_iframe_preview").remove();
        });


        /*---------------------------------------------------------------模态窗口相关事件结束---------------------------------------*/

        /*------- 其他事件 --------*/

        // #property_group_common #property_group_link_enable,#property_group_modal #property_group_modal_enable,#property_group_taginfo #property_group_sendinfo_enable
        $("body").on("change", "#div_control_property2 .property_radio", function () {
            var id = this.id;
            var obj = $(this);
            var clickEvent = "";
            if (obj.is(":checked")) {
                $(".property_radio").not(obj).prop("checked", false);
                if (id === "property_group_link_enable") {
                    clickEvent = "link";
                } else if (id === "property_group_modal_enable") {
                    clickEvent = "modal";
                } else if (id === "property_group_sendinfo_enable") {
                    clickEvent = "send";
                } else if (id === "property_group_camera_enable") {
                    clickEvent = "camera";
                }
            }
            var nodes = PageBuilderPreview.dataModel.getSelectionModel().getSelection().toArray();
            //循环更改配置
            $.each(nodes, function (i, node) {
                var nodeInfo = node.a("nodeInfo");
                nodeInfo.clickEvent = clickEvent;
                node.a("nodeInfo", nodeInfo);
            });
        });

        //图例选择事件
        $("body").on("change", "#property_group_other #property_group_lenged_select", function () {
            var obj = $(this);
            var lenged = obj.val();
            if (lenged === "unset") {
                lenged = "";
            }
            var nodes = PageBuilderPreview.dataModel.getSelectionModel().getSelection().toArray();
            //循环更改配置
            $.each(nodes, function (i, node) {
                var nodeInfo = node.a("nodeInfo");
                nodeInfo.lenged = lenged;
                node.a("nodeInfo", nodeInfo);
            });
        });


        //待开发
        $("body").on("change", "#property_group_taginfo #txt_prop_tagid,#property_group_sendinfo #txt_prop_tagid_send", function () {
            return;
            console.log("控件绑点信息变化。");
            var obj = $(this);
            var node = PageBuilderPreview.dataModel.getSelectionModel().getLastData();
            var value = obj.val().trim();


            var isDisabled = true;
            if ((nodeInfo.tagID.length > 0 && (nodeInfo.tagAccessRight === 1 || nodeInfo.tagAccessRight === 2)) || nodeInfo.tagID_send.length > 0) {
                isDisabled = false;
            }

            var nodes = PageBuilderPreview.dataModel.getSelectionModel().getSelection().toArray();
            //循环更改配置
            $.each(nodes, function (i, node) {
                var nodeInfo = node.a("nodeInfo");
                nodeInfo.send_text_value = "";
                node.a("nodeInfo", nodeInfo);
            });

            if (value.length > 0) {
                $("#property_group_sendinfo_enable").removeAttr("disabled");

            } else {
                $("#property_group_sendinfo_enable").attr("disabled", "disabled");
            }
            //$("#property_group_sendinfo #property_group_sendinfo_enable").prop("checked", false).change();;
        });
    };

    /* 属性面板(html)常规 */
    var htmlPropertyBind_common = function (node) {
        var nodeID = node.getId();
        var nodeInfo = node.a("nodeInfo");
        //扩展属性
        var property_group_common = $('<tbody id="property_group_common"><tr class="title"><td><span class="span_title"></span></td><td class="property_title">扩展属性</td><td style="text-align:right" colspan="2"><div class="checkbox"><label>' +
            '<input type="checkbox" ' + ((nodeInfo.clickEvent !== undefined && nodeInfo.clickEvent === "link") ? 'checked="checked"' : "") + ' id="property_group_link_enable" class="property_radio" style="margin-top: 2px;">启用</label></div></td></tr></tbody>');
        table_property.append(property_group_common);
        property_group_common.append('<tr nodeid="' + nodeID + '"><td></td><td>超链接</td><td><input type="text" class="col-xs-12 form-control" id="txt_prop_link" value="' + (nodeInfo.link === undefined ? "" : nodeInfo.link) + '" /></td><td class="prop_option"><div class="table_property_small_button table_property_link" title="浏览工程目录">...</div><div class="table_property_small_button table_property_link_clear" title="清空">x</div></td></tr>');

        //模态控制
        var property_group_modal = $('<tbody id="property_group_modal"><tr class="title"><td><span class="span_title"></span></td><td  class="property_title">模态窗口</td><td style="text-align:right" colspan="2"><div class="checkbox"><label>' +
            '<input type="checkbox" ' + ((nodeInfo.clickEvent !== undefined && nodeInfo.clickEvent === "modal") ? 'checked="checked"' : "") + ' id="property_group_modal_enable" class="property_radio" style="margin-top: 2px;">启用</label></div></td></tr></tbody>');
        table_property.append(property_group_modal);
        property_group_modal.append('<tr><td></td><td>地址</td><td><input type="text" class="col-xs-12 form-control" id="txt_prop_modal_url" value="' + (nodeInfo.modal_url === undefined ? "" : nodeInfo.modal_url) + '" /></td><td class="prop_option"><div class="table_property_small_button table_property_modal_url" title="浏览工程目录">...</div><div class="table_property_small_button table_property_modal_url_clear" title="清空">x</div></td></tr>');
        property_group_modal.append('<tr><td></td><td>配置</td><td><input type="button" class="btn btn-default btn-xs" value="效果预览" title="鼠标悬停可查看模态窗口预览效果" id="property_group_modal_set_location"></td><td class="prop_option"></td></tr>');

        //配置变量
        var property_group_taginfo = $('<tbody id="property_group_taginfo"><tr class="title"><td><span class="span_title"></span></td><td  class="property_title">配置变量</td><td style="text-align:right" colspan="2"><div class="checkbox"><label>' +
            '<input type="checkbox" ' + ((nodeInfo.clickEvent !== undefined && nodeInfo.clickEvent === "send") ? 'checked="checked"' : "") + ' id="property_group_sendinfo_enable" class="property_radio" style="margin-top: 2px;">下发</label></div></td></tr></tbody>');
        table_property.append(property_group_taginfo);

        var tag_html = '<tr nodeid="' + nodeID + '"><td></td><td>点名称</td><td><input type="text" class="col-xs-12 form-control" id="txt_prop_tagname"  value="' + (nodeInfo.tagName === undefined ? "" : nodeInfo.tagName) + '" readonly/></td><td class="prop_option"><div class="table_property_small_button table_property_taginfo tag1" title="查看点详细信息">#</div><div class="table_property_small_button table_property_tag_clear" title="清空">x</div></td></tr>' +
            '<tr nodeid="' + nodeID + '"><td></td><td>点ID</td><td><input type="text" class="col-xs-12 form-control" id="txt_prop_tagid" value="' + (nodeInfo.tagID === undefined ? "" : nodeInfo.tagID) + '" readonly/></td><td class="prop_option"></td></tr>';
        property_group_taginfo.append(tag_html);

        //下发配置变量
        var property_group_sendinfo = $('<tbody id="property_group_sendinfo"><tr class="title"><td><span class="span_title"></span></td><td class="property_title">下发控制</td><td></td><td></td></tr></tbody>').hide();
        table_property.append(property_group_sendinfo);


        //摄像头配置
        var property_group_camera = $('<tbody id="property_group_camera"><tr class="title"><td><span class="span_title"></span></td><td  class="property_title">视频配置</td><td style="text-align:right" colspan="2"><div class="checkbox"><label>' +
            '<input type="checkbox" ' + ((nodeInfo.clickEvent !== undefined && nodeInfo.clickEvent === "camera") ? 'checked="checked"' : "") + ' id="property_group_camera_enable" class="property_radio" style="margin-top: 2px;">视频</label></div></td></tr></tbody>');
        table_property.append(property_group_camera);

        if (nodeInfo.cameraTags !== undefined && nodeInfo.cameraTags.length > 0) {
            $.each(nodeInfo.cameraTags, function (i, item) {
                var _cv = item.Params;
                var tr = $('<tr><td></td><td colspan="2"><input type="text" class="col-xs-12 form-control txt_prop_camera" value="' + _cv + '" readonly="readonly" title="' + _cv + '"/></td>' +
                    '<td class="prop_option"><div class="table_property_small_button table_property_camerainfo" title="查看点详细信息">#</div><div class="table_property_small_button table_property_camera_clear" title="清空">x</div></td></tr>').data("CameraTag", item);
                property_group_camera.append(tr);
            });
        }

        //其他配置
        var property_group_other = $('<tbody id="property_group_other"><tr class="title"><td><span class="span_title"></span></td><td class="property_title">其他配置</td><td style="text-align:right" colspan="2"></td></tr></tbody>');
        table_property.append(property_group_other);
        var lengedSelect = $("<select id='property_group_lenged_select'><option value='unset'>未设置</option></select>");
        if (PageBuilderPreview.currentPageInfo.LegendJSON !== null && PageBuilderPreview.currentPageInfo.LegendJSON.length > 0) {
            var legendJSON = JSON.parse(PageBuilderPreview.currentPageInfo.LegendJSON);
            $.each(legendJSON, function (i, n) {
                if (n.Name === nodeInfo.lenged) {
                    lengedSelect.append("<option value='" + n.Name + "' selected='selected'>" + n.Name + "</option>");
                } else {
                    lengedSelect.append("<option value='" + n.Name + "'>" + n.Name + "</option>");
                }
            });
        }
        property_group_other.append('<tr nodeid="' + nodeID + '"><td></td><td>所属图例</td><td class="property_group_lenged_select_parent"></td><td class="prop_option"></td></tr>');
        property_group_other.find(".property_group_lenged_select_parent").append(lengedSelect);
    };

    /* 属性面板(html)下发 */ //待开发
    var htmlPropertyBind_sendInfo = function (node) {
        var nodeID = node.getId();
        var controlJSON = JSON.parse(node.a("controlJSON"));
        var nodeInfo = node.a("nodeInfo");

        ////待开发
        //var isDisabled = true;
        //if ((nodeInfo.tagID.length > 0 && (nodeInfo.tagAccessRight === 1 || nodeInfo.tagAccessRight === 2)) || nodeInfo.tagID_send.length > 0) {
        //    isDisabled = false;
        //}
        var property_group_sendinfo = table_property.find("#property_group_sendinfo");
        switch (controlJSON.Type) {
            case "CustomNode_text":
                break;
            case "CustomNode_btn":
                property_group_sendinfo.append('<tr><td></td><td>下发值</td><td><input type="text" class="col-xs-12 form-control" id="txt_prop_send_value" value="' + (nodeInfo.send_text_value === undefined ? "" : nodeInfo.send_text_value) +
                    '" /></td><td class="prop_option"><div class="table_property_small_button table_property_send_value_clear" title="清空">x</div></td></tr>').show();
                break;
            case "CustomNode_img":
            case "CustomNode_imgbtn":
                var treeNode = PageBuilderTagTree.getTreeNodeByTagID(nodeInfo.tagID_send);
                var tag_name_send = ((treeNode !== undefined && treeNode !== null) ? treeNode.tag_name : "");
                var tag_send_html = '<tr><td></td><td>下发点</td><td><input type="text" class="col-xs-12 form-control" id="txt_prop_tagname_send"  value="' + (nodeInfo.tagName_send === undefined ? "" : nodeInfo.tagName_send) + '" readonly/></td><td class="prop_option"><div class="table_property_small_button table_property_taginfo tag2" title="查看点详细信息">#</div><div class="table_property_small_button table_property_tag_send_clear" title="清空">x</div></td></tr>' +
                     '<tr><td></td><td>下发点ID</td><td><input type="text" class="col-xs-12 form-control" id="txt_prop_tagid_send" value="' + (nodeInfo.tagID_send === undefined ? "" : nodeInfo.tagID_send) + '" readonly/></td><td class="prop_option"></td></tr>';
                property_group_sendinfo.append(tag_send_html).show();
                break;
        }
    };

    /* 属性面板(html)图片控件 */
    var htmlPropertyBind_imgbtn = function (node) {
        var nodeInfo = node.a("nodeInfo");
        var property_group_imgbtn = $('<tbody id="property_group_imgbtn"><tr class="title"><td><span class="span_title"></span></td><td class="property_title">配置图片</td><td style="text-align:right" colspan="2"><div class="radio">' +
            '<label class="radio-inline"><input type="radio" name="property_group_imgbtn_sendType" id="inlineRadio1" value="bool" ' + ((nodeInfo.send_type !== undefined && nodeInfo.send_type === "bool") ? 'checked="checked"' : "") + '>开关量</label>' +
            '<label class="radio-inline"><input type="radio" name="property_group_imgbtn_sendType" id="inlineRadio2" value="string" ' + ((nodeInfo.send_type !== undefined && nodeInfo.send_type == "string") ? 'checked="checked"' : "") + '>消息量</label>'
            + '</div></td></tr></tbody>');
        table_property.append(property_group_imgbtn);
        var fileID_str = "text_p_file_";
        var imgID_str = "text_p_img_";
        //--------默认图片tr开始---------------
        var img_default_src = node.a("node_img_default");
        property_group_imgbtn.append('<tr index="0"><td></td><td>默认图片</td><td><img style="width:16px;height:16px;float:left" id="text_p_img_default" src="' + img_default_src + '" /></td><td class="prop_option"><div id="text_p_file_default" class="table_property_small_button table_property_uploadImg" title="上传图片">...</div></td></tr>');
        //--------默认图片tr结束----------------
        if (nodeInfo.send_type === "bool") {
            var node_img = node.a("node_img");
            if (node_img["0"] === undefined) {
                node_img["0"] = { img: "", value: "0", width: 0, height: 0 };
            }
            if (node_img["1"] === undefined) {
                node_img["1"] = { img: "", value: "1", width: 0, height: 0 };
            }
            for (var item in node_img) {
                var fileID = fileID_str + item;
                var imgID = imgID_str + item;
                var imgsrc = "";
                if (node_img[item].img !== undefined && node_img[item].img.length > 0) {
                    imgsrc = node_img[item].img;
                }
                property_group_imgbtn.append('<tr index="' + item + '"><td></td><td><input type="text" class="col-xs-12 form-control txt_prop_imgbtn" value="' + node_img[item].value + '" readonly="readonly"/></td><td><img style="width:16px;height:16px;float:left" id="' + imgID + '" src="' +
                    imgsrc + '" /></td><td class="prop_option"><div id="' + fileID + '" class="table_property_small_button table_property_uploadImg" title="上传图片">...</div><div class="table_property_small_button table_property_imgbtn_value_clear" title="清空">x</div></td></tr>');
            }
        } else if (nodeInfo.send_type === "string") {
            //var send_value = node.a("node_send_value");
            //property_group_imgbtn.append('<tr nodeid="' + nodeID + '"><td></td><td>下发值</td><td><input type="text" class="col-xs-12 form-control" id="txt_prop_send_value" value="' + (send_value === undefined ? "" : send_value) + '" /></td><td class="prop_option"><div class="table_property_small_button table_property_send_value_clear">x</div></td></tr>');
            ////按钮输入下发值事件
            //$("#property_group_imgbtn #txt_prop_send_value").keyup(function () {
            //    var obj = $(this);
            //    var value = obj.val().trim();
            //    obj.val(value);
            //    var trnodeID = $(this).parent().parent().attr("nodeid");
            //    var node = dataModel.getDataById(nodeID);
            //    if (node !== undefined && node !== null) {
            //        node.a("node_send_value", value);
            //    }
            //});
            ////按钮下发值数据清空事件
            //$("#property_group_imgbtn .table_property_send_value_clear").click(function () {
            //    var tr = $(this).parent().parent();
            //    $("#txt_prop_send_value").val("");
            //    var trnodeID = tr.attr("nodeid");
            //    var node = dataModel.getDataById(nodeID);
            //    if (node !== undefined && node !== null) {
            //        node.a("node_send_value", "");
            //    }
            //});
        }
    };

    /* 属性面板(html)离散控件 */
    var htmlPropertyBind_img = function (node) {
        var property_group_img = $('<tbody id="property_group_img"><tr class="title"><td><span class="span_title"></span></td><td class="property_title">离散量</td><td style="text-align:right" colspan="2"><a id="btnProperty_img_add" style="margin-right:5px;cursor:pointer;">增加离散值</a><span class="glyphicon glyphicon-question-sign" data-toggle="tooltip" data-placement="left" title="离散量第一个数值要小于等于第二个数值"></span></td></tr></tbody>');
        table_property.append(property_group_img);
        var btnProperty_img_add = property_group_img.find("#btnProperty_img_add");
        var fileID_str = "text_p_file_";
        var imgID_str = "text_p_img_";
        btnProperty_img_add.click(function () {
            var index = parseInt(property_group_img.find("tr[index]:last").attr("index")) + 1;
            var fileID = fileID_str + index;
            var imgID = imgID_str + index;
            property_group_img.append('<tr index="' + index + '"><td></td><td><input type="text" class="text_1 _min"/> - <input type="text" class="text_1 _max"/></td><td><img style="width:16px;height:16px;float:left" id="' + imgID + '" /></td><td class="prop_option"><div id="' + fileID + '" class="table_property_small_button table_property_uploadImg" title="上传图片">...</div><div class="table_property_small_button removeValue" title="清空">x</div></td></tr>');
        });
        //--------默认图片tr开始---------------
        var img_default_src = node.a("node_img_default");
        property_group_img.append('<tr index="0"><td></td><td>默认图片</td><td><img style="width:16px;height:16px;float:left" id="text_p_img_default" src="' + img_default_src + '" /></td><td class="prop_option"><div id="text_p_file_default" class="table_property_small_button table_property_uploadImg" title="上传图片">...</div></td></tr>');
        //--------默认图片tr结束----------------

        //--------离散值开始-------------------
        var node_img = node.a("node_img");
        for (var item in node_img) {
            var fileID = fileID_str + item;
            var imgID = imgID_str + item;
            var imgsrc = "";
            if (node_img[item].img !== undefined && node_img[item].img.length > 0) {
                imgsrc = node_img[item].img;
            }
            property_group_img.append('<tr index="' + item + '"><td></td><td><input type="text" class="text_1 _min" value="' + node_img[item].min + '"/> - <input type="text" class="text_1 _max" value="' + node_img[item].max + '"/></td><td><img style="width:16px;height:16px;float:left" id="' + imgID + '" src="' +
                imgsrc + '" /></td><td class="prop_option"><div id="' + fileID + '" class="table_property_small_button table_property_uploadImg" title="上传图片">...</div><div class="table_property_small_button removeValue" title="清空">x</div></td></tr>');
        }
        //--------离散值结束-------------------
    };

    var Result = {
        //初始化控件面板
        initControl: function () {
            var palette = new ht.widget.Palette();
            var model = palette.getDataModel();

            //常规组件库
            var group_common = new ht.Group();
            group_common.setName("常规组件");
            group_common.setExpanded(true);
            _baseControls.forEach(function (item, i) {
                var node = new ht.Node();
                node.setName(item.data.Name);
                node.setImage(item.base.IocImg);
                node.s('draggable', true);
                node.a("controlJSON", JSON.stringify(item));
                group_common.addChild(node);
                model.add(node);
            });
            model.add(group_common);
            bindEvent_DragAndDrop(palette); //绑定控件拖拽事件
            return palette;
        },
        //初始化控件属性面板
        initControlProperty: function () {
            var propertyPane = new ht.widget.PropertyPane(PageBuilderPreview.dataModel);
            propertyPane.setHeaderLabels(["属性", "值"]);
            propertyPane.setDisabled(false);

            var selectionModel = PageBuilderPreview.dataModel.getSelectionModel();
            selectionModel.addSelectionChangeListener(function (e) {
                if (propertyPane_html_obj !== undefined && propertyPane_html_obj !== null) {
                    propertyPane_html_obj.empty();
                } else {
                    propertyPane_html_obj = $("#div_control_property2");
                }
                var node = selectionModel.ld();
                propertyPane.getPropertyView().getPropertyModel().clear();
                if (node !== undefined && node !== null) {
                    var controlJSON_str = node.a("controlJSON");
                    if (controlJSON_str === undefined || controlJSON_str === null) {
                        return;
                    }
                    var controlJSON = JSON.parse(controlJSON_str);
                    propertyPane.addProperties([{
                        name: 'className',
                        displayName: "控件类型",
                        getValue: function (data) {
                            if (node instanceof ht.Node) {
                                return controlJSON.Name;
                            } else {
                                var superClass = data.getClass().superClass;
                                return superClass.getClassName ? superClass.getClassName() : 'Object';
                            }
                        }
                    }]);
                    //html 属性面板
                    table_property = $('<table class="table_property table-condensed"><tr><th colspan="2">属性</th><th colspan="2">值</th></tr></table>');
                    propertyPane_html_obj.append(table_property);
                    htmlPropertyBind_common(node);
                    //ht   属性面板
                    switch (controlJSON.Type) {
                        case "CustomNode_text":
                            propertyPane.addProperties(_baseControls[0].property);
                            break;
                        case "CustomNode_btn":
                            propertyPane.addProperties(_baseControls[1].property);
                            htmlPropertyBind_sendInfo(node);
                            break;
                        case "CustomNode_imgbtn":
                            propertyPane.addProperties(_baseControls[2].property);
                            htmlPropertyBind_sendInfo(node);
                            htmlPropertyBind_imgbtn(node);
                            break;
                        case "CustomNode_img":
                            propertyPane.addProperties(_baseControls[3].property);
                            htmlPropertyBind_sendInfo(node);
                            htmlPropertyBind_img(node);
                            break;
                    }
                }
                $('[data-toggle="tooltip"]').tooltip();
                //$('[data-toggle="popover"]').popover();
            });

            initPropertyEvent();            //绑定属性窗口事件
            return propertyPane;
        }
    };

    return Result;
})();

//控件
var PageBuilderControl = {};
PageBuilderControl = (function () {
    var Result = {
        //***********************************************************文本控件初始化*************************************************************
        initControl_text: function (node) {
            node.a({
                "node_text": "文本读写",
                "node_text_color": "#fff",
                "node_background_color": "rgba(10,43,74,0.1)",
                "node_text_fontSize": "14",
                "node_text_fontFamily": "宋体",
                "node_text_fontBold": false,
                "node_text_font": "14px 宋体",
                "node_text_rect_outer": [0, 0, 60, 26],
                "node_text_rect_inside": [2, 2, 56, 22],
                "node_text_width": 60,
                "node_text_height": 26,
                "node_border_width": 0,
                "node_border_color": "rgba(0, 0, 0, 1)",
            });
            node.setImage({
                width: { func: 'attr@node_text_width' },
                height: { func: 'attr@node_text_height' },
                clip: true,
                comps: [
                    {
                        type: 'rect',
                        rect: { func: function (n) { return [0, 0, n.a("node_text_width"), n.a("node_text_height")]; } },
                        background: { func: 'attr@node_background_color' },
                        borderWidth: { func: 'attr@node_border_width' },
                        borderColor: { func: 'attr@node_border_color' },
                    },
                    {
                        type: 'text',
                        text: { func: 'attr@node_text' },
                        rect: {
                            func: function (n) {
                                var padding = parseInt(n.a("node_border_width")) + 2;
                                return [padding, padding, parseInt(n.a("node_text_width")) - padding * 2, parseInt(n.a("node_text_height")) - padding * 2];
                            }
                        },
                        color: { func: "attr@node_text_color" },
                        font: { func: "attr@node_text_font" },
                        align: 'center',
                        vAlign: 'middle',
                    }
                ]
            });
            this.initControl_text_PropertyChanged(node);
        },
        initControl_text_PropertyChanged: function (node) {
            node.onPropertyChanged = function (obj) {
                if (obj.property === "a:node_text_fontBold" || obj.property === "a:node_text_fontSize" || obj.property === "a:node_text_fontFamily") {
                    var bold = "";
                    if (node.a("node_text_fontBold") === true) {
                        bold = "bold ";
                    }
                    node.a("node_text_font", bold + node.a("node_text_fontSize") + "px " + node.a("node_text_fontFamily"));
                }
            }
        },

        //***********************************************************图片控件初始化***********************************************************
        initControl_img: function (node, node_img_default, _group) {
            _group = _group || "";
            var html = '<img class="' + _group + '" id="_pg_img_' + node.getId() + '" width="{{width}}" height="{{height}}" src="{{node_img_default_temp}}"/>';
            node.a({
                "node_html": html,
                "node_width": 26,
                "node_height": 26,
                "node_img_default": node_img_default,
                "node_img": "{}",
                "node_link": ""
            });
            var context = {
                width: node.a("node_width"),
                height: node.a("node_height"),
                node_img_default_temp: node.a("node_img_default")
            };
            node.setPadding(0);
            node.setContext(context);
            node.setHtml(html);
            this.initControl_img_PropertyChanged(node, context);
        },
        initControl_img_PropertyChanged: function (node, context) {
            node.onPropertyChanged = function (obj) {
                if (obj.property === "a:node_img_default") {
                    var img_default = node.a("node_img_default");
                    context.node_img_default_temp = img_default;
                    $("#text_p_img_default").attr("src", img_default);
                }
                if (obj.property === "a:node_width") {
                    node.setWidth(node.a("node_width"));
                }
                if (obj.property === "a:node_height") {
                    node.setHeight(node.a("node_height"));
                }
                if (obj.property === "width") {
                    node.a("node_width", obj.newValue);
                }
                if (obj.property === "height") {
                    node.a("node_height", obj.newValue);
                }
                if (obj.property === "a:node_img") {
                    var node_img = node.a("node_img");
                    for (var item in node_img) {
                        if (node_img[item].img !== undefined && node_img[item].img.length > 0) {
                            var img_src = node_img[item].img;
                            $("#text_p_img_" + item).attr("src", img_src);
                        }
                    }
                }
            }
        },

        //***********************************************************按钮控件初始化***********************************************************
        initControl_btn: function (node) {
            node.s({
                "live.label": "按钮",
                "live.label.color": "#fff",
                "live.background": "rgba(10,43,74,0.1)",
                "live.label.font": "14px 宋体",
                "live.border.color": "#000",
                "live.border.width": 1
            });
            node.a({
                "node_text_fontSize": "14",
                "node_text_fontFamily": "宋体",
                "node_text_fontBold": false,
                "node_link": "",
                "node_text_width": 60,
                "node_text_height": 26,
                "node_border_color": "#000",
                "node_border_width": 1,
            });
            node.setWidth(60);
            node.setHeight(26);
            this.initControl_btn_PropertyChanged(node);
        },
        initControl_btn_PropertyChanged: function (node) {
            node.onPropertyChanged = function (obj) {
                if (obj.property === "a:node_border_width") {
                    node.s("live.border.width", node.a("node_border_width"));
                }
                if (obj.property === "a:node_border_color") {
                    node.s("live.border.color", node.a("node_border_color"));
                }
                if (obj.property === "a:node_text_width") {
                    node.setWidth(node.a("node_text_width"));
                }
                if (obj.property === "a:node_text_height") {
                    node.setHeight(node.a("node_text_height"));
                }
                if (obj.property === "a:node_text_fontBold" || obj.property === "a:node_text_fontSize" || obj.property === "a:node_text_fontFamily") {
                    var bold = "";
                    if (node.a("node_text_fontBold") === true) {
                        bold = "bold ";
                    }
                    node.s("live.label.font", bold + node.a("node_text_fontSize") + "px " + node.a("node_text_fontFamily"));
                }
            }
        },

        //控件通知
        notice: function (jsonData) {
            if (jsonData === undefined || jsonData === null || jsonData.length === 0) {
                return;
            }
            $.each(jsonData, function (i, data) {
                PageBuilderPreview.dataModel.getDatas().each(function (node, i) {
                    if (node instanceof ht.Node === false) {
                        return true;
                    }
                    var controlJSON_str = node.a("controlJSON");
                    if (controlJSON_str === undefined || controlJSON_str.length === 0) {
                        return true;
                    }
                    var nodeInfo = node.a("nodeInfo");
                    var tagID = nodeInfo.tagID;
                    var tagID_send = nodeInfo.tagID_send;
                    if ((tagID === undefined || tagID.length === 0)) {
                        return true;
                    }
                    var controlJSON = JSON.parse(controlJSON_str);

                    if (tagID === data.TagID) {
                        switch (controlJSON.Type) {
                            case "CustomNode_text":
                                var _value = data.Value;
                                //if (_value.length > 0 && isNaN(_value) === false) {
                                //    _value = parseFloat(_value).toFixed(2);
                                //}
                                node.a("node_text", _value);
                                break;
                            case "CustomNode_img":
                                var node_img = node.a("node_img");
                                for (var item in node_img) {
                                    if (((data.Value == node_img[item].min && data.Value == node_img[item].max) || (data.Value >= node_img[item].min && data.Value < node_img[item].max))
                                        && node_img[item].img !== undefined
                                        && node_img[item].img.length > 0) {
                                        node.a("node_img_default", node_img[item].img);
                                        break;
                                        //node.a("node_width", node_img[item].width);
                                        //node.a("node_height", node_img[item].height);
                                    }
                                }
                                var _group = node.a("_group") || null;
                                if (_group !== null) {
                                    var imgObj = $("." + _group).parent();
                                    var index = 0;
                                    imgObj.each(function (i, n) {
                                        var zIndex = $(n).css("zIndex");
                                        if (isNaN(zIndex) === false) {
                                            zIndex = parseInt(zIndex);
                                            if (zIndex > index) {
                                                index = zIndex;
                                            }
                                        }
                                    });
                                    index = index + 1;
                                    $("#_pg_img_" + node.getId()).parent().css("zIndex", index);
                                }
                                break;
                            case "CustomNode_imgbtn":
                                if (nodeInfo.send_type === "bool") {
                                    //开关类型
                                    var node_img = node.a("node_img");
                                    for (var item in node_img) {
                                        if (data.Value == node_img[item].value
                                            && node_img[item].img !== undefined
                                            && node_img[item].img.length > 0) {
                                            node.a("node_img_default", node_img[item].img);
                                            //node.a("node_width", node_img[item].width);
                                            //node.a("node_height", node_img[item].height);
                                        }
                                    }
                                } else if (nodeInfo.send_type === "string") {
                                    //消息类型
                                }
                                var _group = node.a("_group") || null;
                                if (_group !== null) {
                                    var imgObj = $("." + _group).parent();
                                    var index = 0;
                                    imgObj.each(function (i, n) {
                                        var zIndex = $(n).css("zIndex");
                                        if (isNaN(zIndex) === false) {
                                            zIndex = parseInt(zIndex);
                                            if (zIndex > index) {
                                                index = zIndex;
                                            }
                                        }
                                    });
                                    index = index + 1;
                                    $("#_pg_img_" + node.getId()).parent().css("zIndex", index);
                                }
                                break;
                        }
                        nodeInfo.tag_value = data.Value;
                        node.a("nodeInfo", nodeInfo);
                    }
                });
            });
        },
    };

    return Result;
})();


/******* node对象自定义属性 ******/
var NodeInfo = function () {
    var obj = new Object();
    obj.link = "";
    obj.modal_url = "";
    obj.modal_size = ""; //模态窗口尺寸
    obj.clickEvent = ""; //单击时触发事件 link 跳转、modal 模态、send 下发、camera视频，默认为空，都不启用
    obj.tagID = "";
    obj.tagName = "";
    obj.tagAccessRight = 0;//0表示只读（默认）  1表示只写  2表示读写
    obj.tagDataType = 3;//0:bool 1:int 2:float  3:string
    obj.tagID_send = "";
    obj.tagName_send = "";
    obj.tagAccessRight_send = 0;//0表示只读（默认）  1表示只写  2表示读写
    obj.tagDataType_send = 3;//0:bool 1:int 2:float  3:string
    obj.send_text_value = "";
    obj.send_type = "string";//默认sendType为string，[string,bool]
    obj.tag_value = "";//值
    obj.cameraTags = [];
    obj.lenged = "";//图例
    obj.location = "";//位置
    obj.tip = "";//tip
    return obj;
};

var CameraTag = function () {
    var obj = new Object();
    obj.ID = null;
    obj.IP = null;
    obj.Channel = null;
    obj.Name = null;
    obj.Vender = null; //0
    obj.Params = null;
    return obj;
};


//超链接回调函数
function callback_link(links, param) {
    var value = links[1];
    if (value.length > 0) {
        if (param.type === "link") {
            $("#txt_prop_link").val(value);
        } else {
            $("#txt_prop_modal_url").val(value);
        }
        setNode_link(value, param);
    }
}

//设置node link值
function setNode_link(value, param) {
    var nodes = PageBuilderPreview.dataModel.getSelectionModel().getSelection().toArray();
    $.each(nodes, function (i, node) {
        var nodeInfo = node.a("nodeInfo");
        if (param.type === "link") {
            nodeInfo.link = value;
        } else {
            nodeInfo.modal_url = value;
            nodeInfo.modal_size = param.modalSize;
        }
        node.a("nodeInfo", nodeInfo);
    });
}

//图片读写控件选择图片回调函数
function uploadImageControl_imgbtn(result, param) {
    if (result.HasError === false) {
        var obj = result.Entity;
        var param_json = JSON.parse(param);
        var nodes = PageBuilderPreview.dataModel.getSelectionModel().getSelection().toArray();
        //循环更改配置
        $.each(nodes, function (i, node) {
            var node_img = node.a("node_img");
            if (param_json.id === "text_p_file_default") {
                node.a("node_img_default", obj.Src_tool);
                node.a({ "node_width": obj.Width, "node_height": obj.Height });
            } else {
                var index = param_json.id.substr(param_json.id.lastIndexOf("_") + 1);
                if (node_img[index] === undefined) {
                    node_img[index] = { img: obj.Src_tool, value: "", width: obj.Width, height: obj.Height };
                } else {
                    node_img[index].img = obj.Src_tool;
                    node_img[index].width = obj.Width;
                    node_img[index].height = obj.Height;
                }
                node.a("node_img", node_img);
            }
        });
        PageBuilderPreview.dataModel.getSelectionModel().setSelection(nodes);
    }
}

//离散控件选择图片
function uploadImageControl_lisan(result, param) {
    if (result.HasError === false) {
        var obj = result.Entity;
        var param_json = JSON.parse(param);
        var nodes = PageBuilderPreview.dataModel.getSelectionModel().getSelection().toArray();
        //循环更改配置
        $.each(nodes, function (i, node) {
            if (param_json.id === "text_p_file_default") {
                node.a("node_img_default", obj.Src_tool);
                node.a({ "node_width": obj.Width, "node_height": obj.Height });
            } else {
                var node_img = node.a("node_img");
                var index = param_json.id.substr(param_json.id.lastIndexOf("_") + 1);
                if (node_img[index] === undefined) {
                    node_img[index] = { img: obj.Src_tool, min: "", max: "", width: obj.Width, height: obj.Height };
                } else {
                    node_img[index].img = obj.Src_tool;
                    node_img[index].width = obj.Width;
                    node_img[index].height = obj.Height;
                }
                node.a("node_img", node_img);
            }
        });
        PageBuilderPreview.dataModel.getSelectionModel().setSelection(nodes);
    }
}