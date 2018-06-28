<%@ Language="JavaScript" codePage="65001"  %>
<!DOCTYPE html>
<html>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<head>
		<title>消费设备</title>
		<style type="text/css">
			*{
				color: white;
				font: "楷体";
				border-color: white;
				
			}
			td{
				cursor: pointer;
			}
			
			#show_table td{
				padding:  5px 5px 5px 5px;
				border: 1px solid white;
				line-height: 30px;
				
			}
			#show_table th{
				border: 1px solid white;
				line-height: 30px;
			}
			
			.ini_backgroud_color{
				background-color: #0A1F30;
			}
			.select_true{
				background-color: #1372CE;
			}
			#search_table td{
				border: none;
			}
			#search_table input[type='text']{
				color: #000000;
			}
			#show_data table tr:hover{
				background-color: #000000;
				
			}
		</style>
		<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
		
	</head>
	<body style="background-color: #26425B;">
		
	 	
	 	<!--显示数据-->
	 	<div id="show_data" style="margin: 30px auto;">
	 		<table id="show_table" style="margin: 0 auto; " cellpadding="0" cellspacing="0">
		 		<thead >
		 			<th>编号</th>
		 			<th>姓名</th>
		 			<th>卡号</th>
		 			<th>门编号</th>
		 			<th>门禁名称</th>
		 			<th>门禁类型</th>
		 			<th>时效ID</th>
		 			<th>时效描述</th>
		 			<th>部门ID</th>
		 			<th>标识</th>
		 		</thead>
		 		
		 		<%
		 			var sql =  "select top(100) * from [dbo].[vw_enitor4EmpAllAuthDetail]";
					var conn ,conn_str,result_set;
					conn_str = "Driver={SQL Server}; SERVER=192.168.5.2; UID=sa; PWD=1234; DATABASE=HUNDURE";
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
	 	
	</body>
</html>