var PageBuilderLenged = (function () {
    var _options = null;
    var initEvent = function () {
        $(_options.container).on("click", "#div_lenged_main .legend_item", function () {
            var obj = $(this);
            var lengedName = obj.data("lengedName");
            var nodes = _options.dataModel.getDatas().toArray();
            if (obj.hasClass("disabled")) {
                obj.removeClass("disabled").removeClass("lengedGray");

                $.each(nodes, function (i, n) {
                    if (n instanceof ht.Node) {
                        var nodeInfo = n.a("nodeInfo");
                        if (nodeInfo !== undefined && nodeInfo.lenged !== undefined && nodeInfo.lenged === lengedName) {
                            n.s("2d.visible", true);
                        }
                    }
                });
            } else {
                obj.addClass("disabled").addClass("lengedGray");

                $.each(nodes, function (i, n) {
                    if (n instanceof ht.Node) {
                        var nodeInfo = n.a("nodeInfo");
                        if (nodeInfo !== undefined && nodeInfo.lenged !== undefined && nodeInfo.lenged === lengedName) {
                            n.s("2d.visible", false);
                        }
                    }
                });
            }
        });
    };



    var Result = {
        init: function (options) {
            var defaults = {
                container: "body",
                dataModel: null,
                enabledEvent: true
            };
            _options = $.extend(defaults, options);
            var container = $(_options.container);
            if (container.find("#div_lenged_main").length === 0) {
                container.append('<div id="div_lenged_main"><div class="div_lenged_div"><div>图例</div><div id="div_lenged_item_div"></div></div></div>');
            }

            if (_options.enabledEvent !== undefined && _options.enabledEvent === true) {
                initEvent();
            }
        },
        bindData: function (lengedList) {
            if (lengedList === undefined || lengedList === null) {
                return;
            }
            if (lengedList.length > 0) {
                $("#div_lenged_main").show();
                var div_lenged_item_div = $("#div_lenged_item_div").empty();
                $.each(lengedList, function (i, n) {
                    div_lenged_item_div.append($('<span class="legend_item"><img src="' + (n.Image64 || "") + '"/><span>' + n.Name + '</span></span>').data("lengedName", n.Name));
                });
            }
        }
    };

    return Result;
})();