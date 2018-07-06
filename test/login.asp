<%@ language="javascript" codePage="65001"%>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
    <script src="plugins/jQuery/jQuery-2.2.0.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <script src="plugins/chart.js/Chart.js"></script>
    <link href="plugins/fontawesome/css/font-awesome.min.css" rel="stylesheet">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="format-detection" content="telphone=no, email=no">
    <meta name="viewport" content="initial-scale=1, maximum-scale=3, minimum-scale=1, user-scalable=no">
    <title>zoom in or zoom out</title>
    <script src="dist/jquery.min.js"></script>
    <script src="dist/jquery.mousewheel.min.js"></script>
<body>

<div class="row margin" id="box">
    <div class="col-lg-12 col-md-12">
        <table class="table table-hover text-center">
            <thead>
                <tr class="bg-aqua">
                    <th>账号</th>
                    <th>密码</th>
                </tr>
            </thead>

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
	<script>
		var zoom = 100,exp=10;
		$(function(){
			$('body').css('zoom',zoom+'%');
		});

		$('body').mousewheel(function(event, delta, deltaX, deltaY) {
		    if (window.console && console.log) {
		    	zoom = delta == 1 ? zoom+=exp : zoom-=exp;
		    	if(zoom <= 100) zoom = 100;
		    	$(this).css('zoom',zoom+'%');
		    }
		});

		$('body').dblclick(function(event) {
			zoom = 100;
			$(this).css('zoom','100%');
		});
	</script>
</body>
</html>