<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="histrend.aspx.cs" EnableViewState="false" Inherits="WebScada.histrend" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>历史趋势</title>
    <link href="styles/style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="js/themes/bootstrap/easyui.css" />
    <link rel="stylesheet" type="text/css" href="js/themes/icon.css" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/echarts.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="js/locale/easyui-lang-zh_CN.js"></script>

    <script type="text/javascript">
        var title = "历史趋势";
        var querytags = "";
        var myChart;
        var lengthdefine = new Array();
        var lengthname = new Array();
        var seriesdefine = new Array();
        var seriesdata = new Array();
        var units = new Array();

        <%=JavascriptCode%>

        $(document).ready(function () {
            var mdate = new Date();
            var strdate = mdate.getFullYear().toString() + "-" + (mdate.getMonth() + 1).toString() + "-" + mdate.getDate().toString() + " " + mdate.getHours().toString() + ":00:00";
            $('#dt').datetimebox('setValue', strdate);

            var h = $(window).height();
            $(main).height(h - 40);

            window.onresize = function () {
                var winheight = $(window).height();
                var winwidth = $(window).width();
                $(main).height(winheight - 40);
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
                        if (ps.length > 0 && ps[0].value!=null)
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

        });


        function next() {
            if (querytags != "") {
                var s = $('#dt').datetimebox('getValue');
                var mdate = new Date(Date.parse(s.replace(/-/g, "/")));
                var lengthed = $('#lengthselect').combobox('getValue');
                var a = mdate.valueOf();
                a = a + 1000 * parseInt(lengthed);
                mdate = new Date(a);
                var strdate = mdate.getFullYear().toString() + "-" + (mdate.getMonth() + 1).toString() + "-" + mdate.getDate().toString() + " " + mdate.getHours().toString() + ":" + mdate.getMinutes().toString() + ":" + mdate.getSeconds().toString();
                $('#dt').datetimebox('setValue', strdate);
            }
            query();
        }

        function pre() {
            if (querytags != "") {
                var s = $('#dt').datetimebox('getValue');
                var mdate = new Date(Date.parse(s.replace(/-/g, "/")));
                var lengthed = $('#lengthselect').combobox('getValue');
                var a = mdate.valueOf();
                a = a - 1000 * parseInt(lengthed);
                mdate = new Date(a);
                var strdate = mdate.getFullYear().toString() + "-" + (mdate.getMonth() + 1).toString() + "-" + mdate.getDate().toString() + " " + mdate.getHours().toString() + ":" + mdate.getMinutes().toString() + ":" + mdate.getSeconds().toString();
                $('#dt').datetimebox('setValue', strdate);
            }
            query();
        }

        function query() {
            if (querytags != "") {
                var lengthed = $('#lengthselect').combobox('getValue');
                var strtm = $('#dt').datetimebox('getValue');
                myChart.showLoading();
                $.post("queryhist.ashx", { tags: querytags, tm: strtm, len: lengthed }, function (data) {
                    var d = 0;
                    if (data.length > 0) {
                        myChart.setOption({ series: data });
                    }
                    myChart.hideLoading();
                }
               , "json");
            }
        }
    </script>
</head>
<body  leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0"  style="min-width:600px;min-height:400px;">
    <table   height="30px" width="100%"  border="0" cellpadding="5" cellspacing="0" style="min-width:600px;">
        <tr>
                <td >开始时间:&nbsp;<input id="dt" class="easyui-datetimebox" style="width: 160px; height: 25px" />&nbsp; 
                  <select id="lengthselect" name="lengthselect" class="easyui-combobox" data-options="editable:false" style="width: 80px; height: 25px">
                      <option value="1800">半小时</option>
                      <option selected="selected" value="3600">1小时</option>
                      <option value="7200">2小时</option>
                      <option value="14400">4小时</option>
                      <option value="28800">8小时</option>
                      <option value="57600">16小时</option>
                      <option value="86400">24小时</option>
                      <option value="172800">48小时</option>
                      <option value="259200">72小时</option>
                      <option value="604800">168小时</option>
                  </select>
                  <a href="javascript:query();">[查询]</a>  &nbsp;&nbsp;
            </td>
           <td align="right">
                <a href="javascript:pre();">[上一页]</a>&nbsp;
                <a href="javascript:next();">[下一页]</a>&nbsp;    
                <a href="javascript:location.reload();">[刷新]</a>  &nbsp;           
            </td>
        </tr>
    </table>
    </td>
        </tr>
    </table>
    <div id="main" style="height: 600px; width: auto;"></div>
</body>
</html>
