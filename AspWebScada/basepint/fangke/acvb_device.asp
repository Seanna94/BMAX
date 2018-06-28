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
		<script type="text/javascript">
			function aa(){
				
				$("tr:nth-child(odd)").addClass("ini_backgroud_color");
				//隐藏小提示
				$("#tip").hide();
				
				$("#i_know").click(function(){
					//隐藏小提示
					sessionStorage.setItem("i_know","1");
					$("#tip").hide();
				});
				
				//条件查询
				$("#btn_search").click(function(){
					var s = "";
					if($("#Cost_DevNo").val() != ""){
						s = s+" and  d.Cost_DevNo like'"+ encodeURI("%"+$("#Cost_DevNo").val().trim().replace("#","")+"%")+"'";
					}
					
					if($("#Cost_GroupName").val() != ""){
						s = s+" and  g.Cost_GroupName='"+ encodeURI($("#Cost_GroupName").val().trim())+"'";
					}
					if($("#start_time").val() != ""){
						s = s +" and  s.Cost_DateTime >=convert(varchar(100),\'"+$("#start_time").val()+"\',25)";
					}
					if($("#end_time").val() != ""){
						s = s +" and s.Cost_DateTime <= convert(varchar(100),\'"+$("#end_time").val()+"\',25) ";
					}
					//查询条件全为空时，全查
					if(s == ""){
						$.post("/bassepint/entrance_db/acvb_device_serach_all.asp",null,function(data){
							$("#show_data").html(data);
							$("#show_table_info").show();
						});
					}else{
						
						
						$.post("/bassepint/entrance_db/acvb_device_condition.asp?str="+s,null,function(data){
							$("#show_data").html(data);
							$("#show_table_info").hide();
							//显示小提示
							if(sessionStorage.getItem("i_know") == null || sessionStorage.getItem("i_know") !="1" ){
								$("#tip").show();
							}
							
						});
					}
				});
				//条件查询结束
				
			}
			window.onload = aa;
		</script>
		
	</head>
	<body>
		<div style="padding-left: 19px; margin-top: -10px;margin-left: -10px; background-color: #0A1F30;width: 100%;height: 50px;">
    		<h2 style="color: white;background-color: #0A1F30; margin: 0 0;padding-top: 10px;padding-left: 30px;"> 一卡通 >>> 设备统计报表</h2>
   		 </div>
	 	<!--操作部分-->
	 	<div style="margin-top: 30px;">
	 		
		 		<table id="search_table" style="margin: 0 auto;">
		 			<tr>
		 				<td>
		 					<label>设备编号：</label>
		 					<input id="Cost_DevNo" type="text" />
		 				</td>
		 				
		 				
		 				<td >
		 					<label>所在组：</label>
		 					<input id="Cost_GroupName" type="text" />
		 				</td>
		 				<td >
		 					<label>开始时间：</label>
		 					<input id="start_time" type="text"  style="width: 150px;"/>
		 				</td>
		 				<td >
		 					<label>结束时间：</label>
		 					<input id="end_time" type="text"  style="width: 150px;"/>
		 				</td>
		 				
		 				<td>
		 					<input id="btn_search" type="submit" value="查询" style="background-color: #0A1F30;" />
		 				</td>
		 				
		 			</tr>
		 			
		 		</table>
		 		
	 		
	 		
	 	</div>
	 	<!--操作部分结束-->
	 	
	 	
	 	<!--显示数据-->
	 	<div id="show_data" style="margin: 30px auto;">
	 		<table id="show_table" style="margin: 0 auto; " cellpadding="0" cellspacing="0">
		 		<thead >
		 			<th>设备编号</th>
		 			<th>设备名称</th>
		 			<th>所在组</th>
		 			<th>最近消费时间</th>
		 			<th>消费次数</th>
		 			<th>消费金额</th>
		 			
		 			
		 			
		 		</thead>
		 		
		 		<%
		 			var sql =  "select d.Cost_DevNo,MIN(d.Cost_DevName),Min(g.Cost_GroupName ),max(CONVERT(varchar(100),s.Cost_DateTime,25)) ,COUNT(d.Cost_DevNo) ,sum(s.Cost_Money) from Consume_Device d,Consume_Group g ,Consume_Source s where d.Cost_GroupID=g.Cost_GroupID and d.Cost_DevID = s.Cost_DevID group by d.Cost_DevNo order by max(s.Cost_DateTime) desc";
					var conn ,conn_str,result_set;
					conn_str = "Driver={SQL Server}; SERVER=192.168.100.1; UID=sasa; PWD=Hhga123456; DATABASE=peake";
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
	 	<!--显示数据-->
	 	
	</body>
</html>