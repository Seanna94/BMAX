<%@ Language="JavaScript" codePage="65001"  %>
<!DOCTYPE html>
<html>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<head>
		<title>消费明细统计</title>
		<style type="text/css">
			*{
				color: red;
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
				
				
				//条件查询
				$("#btn_search").click(function(){
					var s = "";
					if($("#Base_PerName").val() != ""){
						s = s+" and  per.Base_PerName ='"+ encodeURI($("#Base_PerName").val().trim())+"'";
					}
					
					if($("#Base_CardNo").val() != ""){
						s = s+" and  s.Base_CardNo='"+ encodeURI($("#Base_CardNo").val().trim())+"'";
					}
					if($("#start_time").val() != ""){
						s = s +" and  s.Cost_DateTime >=convert(varchar(100),\'"+$("#start_time").val()+"\',25)";
					}
					if($("#end_time").val() != ""){
						s = s +" and s.Cost_DateTime <= convert(varchar(100),\'"+$("#end_time").val()+"\',25) ";
					}
					//查询条件全为空时，全查
					if(s == ""){
						$.post("/bassepint/entrance_db/consume_source_serach_all.asp",null,function(data){
							$("#show_data").html(data);
							$("#show_table_info").show();
						});
					}else{
						
						
						$.post("/bassepint/entrance_db/consume_source_condition.asp?str="+s,null,function(data){
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
				
				//上一页
				$("#pre_page").click(function(){
					var pageIndex = $("#page_index").text();
					if(pageIndex == "1"){
						alert("已经是第一页了");
					}else{
						var pageSize = $("#page_size").text();
						var pageIndex = $("#page_index").text();
						pageIndex = parseInt(pageIndex)-1;
						$("#page_index").text(pageIndex);
						$.post("/bassepint/entrance_db/consume_source_paging.asp?pageSize="+pageSize+"&pageIndex="+pageIndex,null,function(data){
							$("#show_data").html(data);
						});
					}
					
					
				});
				//上一页结束
				//下一页
				$("#next_page").click(function(){
					var pageSize = $("#page_size").text();
					var pageIndex = $("#page_index").text();
					var pageCount = $("#page_count").text();
					if(pageCount == pageIndex){
						alert("已经是最后一页了");
					}else{
						pageIndex = parseInt(pageIndex)+1;
							$("#page_index").text(pageIndex);
							$.post("/bassepint/entrance_db/consume_source_paging.asp?pageSize="+pageSize+"&pageIndex="+pageIndex,null,function(data){
							$("#show_data").html(data);
						});
					}
					
				});
				//下一页结束
				//获取总页数
				$.post("/bassepint/entrance_db/consume_source_get_count.asp?pageSize="+$("#page_size").text(),null,function(data){
					$("#page_count").text(Math.ceil(data));
					
				});
				
				//获取总页数结束
				
				
			}
			window.onload = aa;
		</script>
		
	</head>
	<body>
		<div style="padding-left: 19px; margin-top: -10px;margin-left: -10px; background-color: #0A1F30;width: 100%;height: 50px;">
    		<h2 style="color: white;background-color: #0A1F30; margin: 0 0;padding-top: 10px;padding-left: 30px;"> 一卡通 >>> 消费明细统计表</h2>
   		 </div>
	 	<!--操作部分-->
	 	<div style="margin-top: 30px;">
	 		
		 		<table id="search_table" style="margin: 0 auto;">
		 			<tr>
		 				
		 				
		 				<td>
		 					<label>人员名称：</label>
		 					<input id="Base_PerName" type="text" name="car_number" />
		 				</td>
		 				<td >
		 					<label>卡号：</label>
		 					<input id="Base_CardNo" type="text" />
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
		 		<table id="show_table_info" style="margin: 10px auto;">
		 			<tr>
		 				<td>
		 					<input  id="pre_page" type="button" value="上一页" style="border: none; background-color: #000000;"/>
		 				</td>
		 				
		 				<td>
		 					<span >当前页：
		 						<span id="page_index">1</span>
		 					</span>
		 					
		 				</td>
		 				<td >
							<input id="next_page" style="border: none;background-color: #000000;" type="button" value="下一页" />
		 				</td>
		 				<td >
		 					<span >总页数：
		 						<span id="page_count">
		 							
		 							
		 						</span>
		 					</span> 
		 					<span>每页显示条数：
		 						<span id="page_size">100</span>
		 					</span>
		 				</td>
		 				
		 				
		 				
		 			</tr>
		 			
		 		</table>
	 		
	 		
	 	</div>
	 	<!--操作部分结束-->
	 	
	 	
	 	<!--显示数据-->
	 	<div id="show_data" style="margin: 30px auto;">
	 		<table id="show_table" style="margin: 0 auto; " cellpadding="0" cellspacing="0">
		 		<thead >
		 			<th>人员编号</th>
		 			<th>人员名称</th>
		 			<th>卡号</th>
		 			<th>设备编号</th>
		 			<th>消费金额</th>
		 			<th>余额</th>
		 			<th>日期/时间</th>
		 			<th>操作员</th>
		 		</thead>
		 		
		 		<%
				
					var sql = "select * from alarm";
				
		 			var conn ,conn_str,result_set;
					conn_str = "Driver={SQL Server}; SERVER=127.0.0.1; UID=sa; PWD=123456; DATABASE=BMAX";
					conn = Server.createobject("adodb.connection");
					
					conn.Open(conn_str);
					result_set = Server.createobject("ADODB.recordset");
					
		 			
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