<%@ language="javascript" codePage="65001"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>连接数据库</title>
    <script src="plugins/jQuery/jQuery-2.2.0.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <script src="plugins/chart.js/Chart.js"></script>
    <link href="plugins/fontawesome/css/font-awesome.min.css" rel="stylesheet">
<body>

<div class="row margin">
    <div class="col-lg-12 col-md-12">
        <table class="table table-hover text-center">
            <thead>
                <tr class="bg-aqua">
                    <th>编号</th>
                    <th>账号</th>
                    <th>密码</th>
                    <th>姓名</th>
                    <th>备注</th>
                </tr>
            </thead>

<!--连接数据库-->
<%
var sql="select UserName,PassWord from dbo.user2;";
var conn ,conn_str,result_set;
conn_str = "Driver={SQL Server}; SERVER=127.0.0.1; UID=sa; PWD=123456; DATABASE=IBMSDatabase";
conn = Server.createobject("adodb.connection");
conn.Open(conn_str);
result_set = Server.createobject("ADODB.Recordset");
result_set.open(sql,conn,1,3);

for(var i = 0;i<result_set.RecordCount;i++){
	var fields = result_set.Fields;
	Response.Write("<tr>");

	for(var j=0;j<fields.Count;j++){
		Response.Write("<td>"+fields.Item(j).Value+"</td>");
	}
	result_set.MoveNext;
	Response.Write("</tr>");
}

%>

   </table>
</div>
</div>

</body>
</html>