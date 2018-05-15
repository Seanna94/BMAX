<%@ Page Language="C#"%>
<%@ Import Namespace="WebScada"%>
<%           
  //  if (Session["user"] == null)
  //      Response.Redirect("login.html");
  //var a =  WebScada.Env.Current.GetChannel("second");
  //var k = a.Value;
 
    if (Global.NeedLogin)
    {
        if (Session["user"] == null)
        {
            if (Global.IsMoblie(Request.UserAgent))
                Response.Redirect("mlogin.html");
            else
                Response.Redirect("login.html");
        }
    }
  
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=0.5,maximum-scale=5" />
    <link href="styles/style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="js/themes/default/easyui.css" />
    <title>标签数据库</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="js/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript">
        var load = false;
        $(document).ready(function () {
            $('#dg').datagrid({
                rowStyler: function (index, row) {
                    if (row.status == 1) {
                        return 'color:#0000FF;'; // return inline style
                        // the function can return predefined css class and inline style
                        // return {class:'r1', style:{'color:#fff'}};	
                    }
                    else
                        return 'color:#FF00FF;'; // return inline style
                },
                onBeforeLoad: function (param) {
                },
                onLoadSuccess: function (data) {
                    if (!load) {
                        setTimeout("_query()", 10000);// 设置一个超时对象
                        load = true;
                    }
                },
                onLoadError: function () {
                    setTimeout("_query()", 10000);// 设置一个超时对象
                }
            });
        });
        function _query() {
            $('#dg').datagrid("reload");
            load = false;
        }
    </script>
</head>
<body leftmargin="1" topmargin="0" rightmargin="0" bottommargin="5">

    <table id="dg" width="100%" data-options="rownumbers:true,nowrap:true,singleSelect:true,pagination:true,pageSize:20,url:'gettagstable.ashx',method:'post',fitColumns: true">
        <thead>
            <tr>
                <th data-options="field:'id',width:150">标签名称</th>
                <th data-options="field:'unit',width:30">单位</th>
                <th data-options="field:'value',width:150,align:'left'">当前值</th>
                <th data-options="field:'time',width:150">更新时间</th>
                <th data-options="field:'desc',width:200">描述</th>
            </tr>
        </thead>
    </table>
</body>
</html>