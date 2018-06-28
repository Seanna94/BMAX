<%@ Language="JavaScript" codePage="65001"  %>
<!DOCTYPE html>
<html>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<head>
		<title>出场车辆</title>
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
		<script type="text/javascript" src="../../js/jquery-3.2.1.min.js"></script>
		
		
	</head>
	<body style="background-color: #26425B;">
		
	 	<div id="show_data" style="margin: 30px auto;">
	 		<table id="show_table" style="font-size: 15px; margin: 0 auto; " cellpadding="0" cellspacing="0">
		 		<thead >
		 			<th>车牌号</th>
		 			<th>进入时间</th>
		 			<th>位置</th>
		 			<th>车牌号</th>
		 			<th>卡类型</th>
		 			<th>备注</th>
		 		</thead>
		 	
		 		<%
		 				
		 			var sql = "SELECT * FROM jsds.t_base_person";
					var conn ,conn_str,result_set;
					/*
					 "SELECT * FROM jsds.test;";SELECT PHYSICAL_NO,date_format(IN_TIME,'%Y-%m-%d %H:%i:%s'),CARD_NO,CARD_TYPE,ESTABLISH_NAME,SERVICESET_NAME,REMARK FROM jsds.t_park_record_in order by IN_TIME desc limit 100;
					conn_str = "Driver={MySQL ODBC 5.1 Driver};SERVER=192.168.2.180;DATABASE=jsds;USER=root;PASSWORD=123456";
					*/
					/*
					conn_str = "Provider=MYSQL;Driver={MySQL ODBC 5.1 Driver};Server=192.1682.180;Database=jsds;User=root;Password=123456;Option=3";
					*/
					
					conn_str = "Driver={MySQL ODBC 5.1 Driver};Server=192.168.2.180;Database=jsds;User=jsds;Password=jsds;Option=3";
					conn = Server.createobject("adodb.connection");
					conn.Open(conn_str);
					result_set = Server.createobject("ADODB.Recordset");
					result_set.open(sql,conn,1,3);
					
					
					
		 			
					
		 			for(var i = 0;!result_set.EOF;i++){
						var fields = result_set.Fields;
						Response.Write("<tr>");
						for(var j=0;j<fields.Count;j++){
								Response.Write("<td>"+fields.Item(j).Value+"</td>");
						}
						result_set.MoveNext;
						Response.Write("</tr>");
					}
		 			
		 			Response.Write("<input id='sql' type='hidden'  value='"+sql+"' />");	
		 			result_set.close();
		 			conn.close();
		 			
		 		%>
		 		
	 		</table>
	 	</div>
	 	
	</body>
</html>