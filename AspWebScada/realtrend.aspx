<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="realtrend.aspx.cs" EnableViewState="false" Inherits="WebScada.realtrend" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>实时趋势</title>
    <link href="styles/style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="js/themes/bootstrap/easyui.css" />
    <link rel="stylesheet" type="text/css" href="js/themes/icon.css" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/echarts.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="js/locale/easyui-lang-zh_CN.js"></script>

    <script type="text/javascript">
        var title = "实时趋势";
        var querytags = "";
        var myChart;
        var timer = 3000;//定时器
        var countdata = 600; //最大多少个数据
        var lengthdefine = new Array();
        var lengthname = new Array();
        var seriesdefine = new Array();
        var seriesdata = new Array();
        var units = new Array();

        <%=JavascriptCode%>

        $(document).ready(function () {

            var h = $(window).height();
            $(main).height(h - 20);

            window.onresize = function () {
                var winheight = $(window).height();
                var winwidth = $(window).width();
                $(main).height(winheight - 20);
                $(main).width(winwidth - 10);
                myChart.resize();
            };


            myChart = echarts.init(document.getElementById('main'));
            option = {
                //animation:false,
                title: {
                    text: title
                },
                color: ['#ff0000', '#0000ff', '#000000', '#d48265', '#91c7ae', '#749f83', '#ca8622', '#bda29a', '#6e7074', '#546570', '#c4ccd3'],
                toolbox: {
                    show: true,
                    feature: {
                        dataZoom: {},
                        restore: {},
                        saveAsImage: {}
                    }
                },
                grid: {
                    show: true,
                    left: 40,
                    top: 60,
                    right: 40,
                    bottom: 40
                },
                tooltip: {
                    trigger: 'axis',
                    formatter: function (ps) {
                        var str = "";
                        if (ps.length>0)
                            str = ps[0].value[0].toLocaleString();
                        for (var i in ps) {
                            var params = ps[i];
                            if (params.value != null) {
                                str += "<br/>";
                                str += lengthname[params.seriesName] + "&nbsp;" + ':' + params.name + units[params.seriesName];
                            }
                        }
                        return str;
                    },
                    axisPointer: {
                        animation: false
                    }
                },
                xAxis: {
                    type: 'time',
                    splitLine: {
                        show: false
                    }
                },
                yAxis: {
                    type: 'value',
                    name: '数值%',
                    min: '0',
                    max: '100',
                    boundaryGap: [0, '100%'],
                    splitLine: {
                        show: true
                    }
                },
                legend: {
                    show: true,
                    orient: 'horizontal',      // 布局方式，默认为水平布局，可选为：
                    // 'horizontal' ¦ 'vertical'
                    x: 'center',               // 水平安放位置，默认为全图居中，可选为：
                    // 'center' ¦ 'left' ¦ 'right'
                    // ¦ {number}（x坐标，单位px）
                    y: 'top',                  // 垂直安放位置，默认为全图顶端，可选为：
                    data: lengthdefine,
                    formatter: function (name) {
                        return lengthname[name];
                    }
                },
                series: seriesdefine
            };
            myChart.setOption(option);

            if (querytags != "")
                query();
        });

        function query() {
            if (querytags != "") {
                //myChart.showLoading();
                $.post("getrealdatas.ashx", { tags: querytags }, function (data) {
                    var d = 0;
                    if (data.login > 0) {
                        for (var i in data.names) {
                            if (data.names[i] != "") {
                                if (seriesdata[data.names[i]].length > countdata)
                                    seriesdata[data.names[i]].shift();
                                d = data.values[i];
                                if (data.rangeMax[i] > data.rangeMin[i]) {
                                    d = (d - data.rangeMin[i]) / (data.rangeMax[i] - data.rangeMin[i]) * 100.0;
                                    //units[data.names[i]] = data.units[i];
                                }

                                seriesdata[data.names[i]].push({ name: data.values[i], value: [data.time, d] });
                            }
                        }
                        myChart.setOption({ series: seriesdefine });
                    }
                    //  myChart.hideLoading();
                }
               , "json");
                setTimeout("query()", timer);
            }
        }
    </script>
</head>
<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="10"  style="min-width:600px;min-height:400px;">
    <div id="main" style="height: 600px; width: auto;"></div>
</body>
</html>
