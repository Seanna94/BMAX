<%@ Language="JavaScript" %>

				<table  style="margin: 0 auto; " cellpadding="0" cellspacing="0">
					<thead>
						<th colspan="5"  style="font-size: 30px; ">歌曲信息</th>
					</thead>
					<thead>
						<th>
			 				<input id="songs_select_all" type="checkbox"   />
			 				<span >&nbsp;全选&nbsp;</span>
		 				</th>
						<th>歌曲ID</th>
						<th>歌曲名称</th>	
						
					</thead>
					<%
						var name = "'"+Request.QueryString("name")+"'";
						var conn_str = "Driver={Microsoft Access Driver (*.mdb)};Data Source = broadcast.mdb"
						
						var conn = Server.CreateObject("ADODB.CONNECTION");
						conn.Open(conn_str);
						var sql = "select * from songs where 歌曲名称="+name;
						
						var result_set = Server.CreateObject("ADODB.Recordset");
						result_set.Open(sql,conn,1,3);
						
						for(var i = 0;i<result_set.RecordCount;i++){
								var fields = result_set.Fields;
								Response.Write("<tr>");
								Response.Write("<td><span><input type='checkbox' name='check_box' value='"+fields.Item(1).Value+"'  /></span></td>");
								for(var j=0;j<fields.Count;j++){
									if(j!= 0 && j!=4 && j!= 6 && j!= 7 && j!= 8){
										Response.Write("<td>"+fields.Item(j).Value+"</td>");
									}
								}
								result_set.MoveNext;
								Response.Write("</tr>");
							}
					%>
				
				</table>