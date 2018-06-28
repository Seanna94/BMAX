<%@ Language="JavaScript" %>

				<table  style="margin: 0 auto; " cellpadding="0" cellspacing="0">
					<thead>
						<th colspan="5"  style="font-size: 30px; ">设备信息</th>
					</thead>
					<thead>
						<th>
			 				<input id="eqt_select_all" type="checkbox" value=""  />
			 				<span >&nbsp;全选&nbsp;</span>
		 				</th>
		 				<th>分区编号</th>
						<th>IP地址</th>
						<th>分区名称</th>
						<th>分区音量</th>
					</thead>
					<%
						
						var ip = Request.QueryString("ip");
						var conn_str = "Driver={Microsoft Access Driver (*.mdb)};Data Source = broadcast.mdb"
						var conn = Server.CreateObject("ADODB.CONNECTION");
						conn.Open(conn_str);
						
						var sql = "select * from equipment";
						
						var result_set_equipment = Server.CreateObject("ADODB.Recordset");
						
						result_set_equipment.Open(sql,conn,1,3);
							
						
					
						
							
							for(var i = 0;i<result_set_equipment.RecordCount;i++){
								var fields = result_set_equipment.Fields;
								Response.Write("<tr>");
								Response.Write("<td><span><input type='checkbox' name='check_box' value='"+fields.Item(1).Value+"'  /></span></td>");
								for(var j=0;j<fields.Count;j++){
									if(j!= 0 && j!=4 && j!= 6 && j!= 7 && j!= 8){
										if(fields.Item(j).Value == ip){
											Response.Write("<td>"+fields.Item(j).Value+"</td>");
											
											
										}
										
									}
									
								}
								result_set_equipment.MoveNext;
								Response.Write("</tr>");
							}
						
					%>
					
					
		
				
				</table>