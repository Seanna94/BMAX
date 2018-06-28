<%@ Language="JavaScript" codePage="65001" %>

<%
	var str = Request.QueryString("str");
	var sql = "SELECT b.NAME, a.PHYSICAL_NO,date_format(a.IN_TIME,'%Y-%m-%d %H:%i:%s'),a.CARD_TYPE,a.ESTABLISH_NAME,a.SERVICESET_NAME,a.REMARK FROM jsds.t_park_record_out a left join jsds.t_base_person b on a.PHYSICAL_NO = b.CARD_CODE";
	sql = sql+" "+"where a.PHYSICAL_NO like '%" +str+"%'"+" order by IN_TIME desc limit 50;";
	
		conn_str = "Driver={MySQL ODBC 5.1 Driver};Server=192.168.2.180;Database=jsds;User=jsds;Password=jsds;Option=3";
		conn = Server.createobject("adodb.connection");
		conn.Open(conn_str);
		result_set = Server.createobject("ADODB.Recordset");
		result_set.open(sql,conn,1,3);
					

%>

<table id="show_table" style="font-size: 15px; margin: 0 auto; " cellpadding="0" cellspacing="0">
	
	<thead >
					<th>人员名称</th>
		 			<th>车牌号</th>
		 			<th>进入时间</th>
		 			<th>权限</th>
		 			<th>出口位置</th>
		 			<th>卡类型</th>
		 			<th>备注</th>
	</thead>
	 		
	<%
		 				/*
		 			var sql = "SELECT PHYSICAL_NO,date_format(IN_TIME,'%Y-%m-%d %H:%i:%s'),CARD_TYPE,ESTABLISH_NAME,SERVICESET_NAME,REMARK FROM jsds.t_park_record_in order by IN_TIME desc limit 100;";
						*/
					var sql ="SELECT b.NAME, a.PHYSICAL_NO,date_format(a.IN_TIME,'%Y-%m-%d %H:%i:%s'),a.CARD_TYPE,a.ESTABLISH_NAME,a.SERVICESET_NAME,a.REMARK FROM jsds.t_park_record_in a left join jsds.t_base_person b on a.PHYSICAL_NO = b.CARD_CODE order by IN_TIME desc limit 50;";
					var conn ,conn_str,result_set;
					/*
					 "SELECT * FROM jsds.test;";SELECT PHYSICAL_NO,date_format(IN_TIME,'%Y-%m-%d %H:%i:%s'),CARD_NO,CARD_TYPE,ESTABLISH_NAME,SERVICESET_NAME,REMARK FROM jsds.t_park_record_in order by IN_TIME desc limit 100;
					conn_str = "Driver={MySQL ODBC 5.1 Driver};SERVER=192.168.2.180;DATABASE=jsds;USER=root;PASSWORD=123456";
					*/
					/*
					conn_str = "Provider=MYSQL;Driver={MySQL ODBC 5.1 Driver};Server=192.1682.180;Database=jsds;User=root;Password=123456;Option=3";
					*/
					
				
					
					
		 			
					
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


