<%@ Language="JavaScript" codePage="65001" %>
<!DOCTYPE html>
<html>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<head>
		<title>终端控制</title>
		<style type="text/css">
			*{
				color: white;
				font: "楷体";
				border-color: white;
				
			}
			
			#songs{
				float: left;
				width: 49%;
			}
			#equipment{ 
				float: left;
				width: 40%;
				
				
			}
			.show{
				display: block;
			}
			
			#equipment table tr:hover{
				background-color: #000000;
			}
			#equipment table{
				border: 1px solid white;
			}
			#equipment table td{
				border: 1px solid white;
				padding:  5px 5px 5px 5px;
			}
			#songs table{
				border: 1px solid white;
			}
			#songs table tr:hover{
				background-color: #000000;
			}
			#songs table td{
				border: 1px solid white;
				padding:  5px 5px 5px 5px;
			
			}
			th{
				border: 1px solid white;
				
			}
			
			/*#eqt_table{
				border: 1px solid white;
				width: 100%;
			}
			#eqt_table tr{
				width: 100%;
				border: 1px solid white;
			}
			#eqt_table td{
				padding:  5px 5px 5px 5px;
				border: 1px solid white;
				line-height: 30px;
				margin: 0 auto;
			}*/
		 	/*#eqt_table th{
				border: 1px solid white;
				line-height: 30px;
				
			}*/
			
			#left{
				float: left;
				width: 50%;
				
			}
			#right{
				float: left;
				width: 50%;
			}
			
		</style>
		
		<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
      
		<script type="text/javascript">
			var selectEq = "";
			
			function writetag(tag, v) {
			    if (tag == "") { return; }
			    if (v == "") {v = "0"}
			    if (v != null && v != "") {
			        var tagvalue = { command: "writetag", tagname: tag, value: v };
			        var path = location.href;
			        path= path.replace("bassepint/broadcast_db/search_all.asp","command.ashx");
			        $.post("../../command.ashx", tagvalue, function (data) { }, "json");
    			}
			}
			
			$(function(){
				
				
				//点击播放
				$("#start").click(function(){
					
					writetag("start", "1");
					
				});
				//点击停止
				$("#stop").click(function(){
					
					writetag("stop", "1");
					
				});
				//刷新设备列表信息
				$("#eqt_refresh").click(function(){
					writetag("获取终端","1");
					//self.location.reload();
					$("#equipment").hide();
					$("#equipment").slideDown(1000);
				});
				
				//刷新歌曲列表
				$("#songs_refresh").click(function(){
					writetag("获取歌曲","1");
					//self.location.reload();
					$("#songs").hide();
					$("#songs").slideDown(1000);
				});
				
				//选中设备信息
				$("#equipment table tr td input[type='checkbox']").click(function(){
					selectEq = "";
					//判断是选中，还是取消
					//alert(111);
					var e_list = "";
					for(var i=0;i<$("#equipment table tr td input[type='checkbox']").length;i++){
						var c = $("#equipment table tr td input[type='checkbox']").eq(i);
						//alert(c.prop("checked"));
						if(c.prop("checked")){
							e_list = e_list + c.val()+","; 
							selectEq =selectEq + c.val()+",";
						}
					}
					
					writetag("终端列表",e_list);
					
				});
				
				//设备全选效果
				$("#eqt_select_all").click(function(){
					if($(this).prop("checked")){
						//全选。写入
						$("#equipment table tr td input[type='checkbox']").prop("checked",true);
						var e_list= "";
						for(var i = 0;i<$("#equipment table tr td input[type='checkbox']").length;i++){
							
							e_list = e_list+$("#equipment table tr td input[type='checkbox']").eq(i).val()+",";
						}
						//写入
						
						writetag("终端列表",e_list);
						
					}else{
						$("#equipment table tr td input[type='checkbox']").prop("checked",false);
						//清空
						
						writetag("终端列表","");
						
					}
				});
				//设备全选效果结束 
				
				//歌曲选中
				$("#songs table tr td input[type='checkbox']").click(function(){
					//判断是选中，还是取消
					var s_list = "";
					for(var i=0;i<$("#songs table tr td input[type='checkbox']").length;i++){
						var c = $("#songs table tr td input[type='checkbox']").eq(i);
						if(c.prop("checked")){
							s_list = s_list + c.val()+","; 
						}
					}
					
					writetag("文件列表",s_list);
				});
				//歌曲选中结束
				
				
				//歌曲全选效果
				$("#songs_select_all").click(function(){
					if($(this).prop("checked")){
						//全选。写入
						$("#songs table tr td input[type='checkbox']").prop("checked",true);
						var s_list = "";
						for(var i = 0;i<$("#songs table tr td input[type='checkbox']").length;i++){
							s_list = s_list + $("#songs table tr td input[type='checkbox']").eq(i).val()+","; 
						}
						//写入
						
						writetag("文件列表",s_list);
					}else{
						$("#songs table tr td input[type='checkbox']").prop("checked",false);
						writetag("文件列表","");
					} 
					
				});
				//歌曲全选效果结束
				/*
				$("#yin_liang").mouseout(function(){
					var yin = $("#yin_liang").val();
					//writetag("音量值",yin);
				});
				*/
				$("#submit_yin_liang").click(function(){
					var idArray = selectEq.split(",");
					var val = $("#yin_liang").val();
					//alert(idArray.length);
					
					for(var i=0;i<idArray.length-1;i++){
						alert("终端音量"+idArray[i]+"  "+val);
						writetag("终端音量"+idArray[i],val);
						
					}
					
					
				});
				//设备查询
				$("#search_eq").click(function(){
					var eq_val = $("#eq_val").val();
					
					
					$.post("/basepint/broadcast_db/search_equipment.asp?id="+eq_val,null,function(data){
						alert(data);
						$("#equipment").html(data);
					},"html");
					
				});
				//歌曲查询
				$("#search_song").click(function(){
					var song_val =encodeURI($("#song_name").val());
					$.post("search_songs.asp?name="+song_val,null,function(data){
						
						$("#songs").html(data);
					});
				});
					
			});
			
		
			
			
		</script>
	</head>
	<body style="height: 600px;overflow: hidden;background-color:#26425B;">
		<div style="padding-left: 19px;background-color:#0A1F30;padding-top: 15px;width: 100%;height: 50px;margin-top: -10px;margin-left: -10px;">
    		<h2 style="color: white;background-color: #0A1F30; margin: 0 0;padding-top: 10px;padding-left: 30px;">公共广播 >> 广播终端</h2>
    	</div>
		<div id="top" style="margin-top: 30px;">
			
			<div id="left">
				<table style="margin: 0 auto;margin-left: 153px;">
					<!--
                    	作者：offline
                    	时间：2018-06-24
                    	描述：<td>
							<input  id="eq_val" type="text" placeholder="请输入IP地址" style="color: #000000;" />
						</td>
						<td>
							<input id="search_eq" type="button" value="查询"  style="background-color: #000000;" />
							<input type="button" value="清除查询"   style="background-color: #000000;"/>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" placeholder="请输入分区名称" style="color: #000000;" />
						</td>
						<td>
                    -->
                    	<tr>
							<td>
								<input id="eqt_refresh" type="button" value="刷新设备信息"  style="background-color: #000000; " />
								<input type="text" id="yin_liang" value="30" style="color: #000000;" />
							</td>
							
							<td>
								<input type="button" id="submit_yin_liang" value="修改音量"  style="background-color: #000000;" />
								
							</td>
							
						</tr>
						<tr>
						<td>
								
								<input id="songs_refresh" type="button" width="125px" value="刷新音乐列表"  style="background-color: #000000;" />
							</td>
							
						</td>
						
						
				</table>
				
			</div>
			<div id="right">
					<table style="margin: 0 auto;margin-left: 133px;">
						<!--
                        	作者：offline
                        	时间：2018-06-24
                        	描述：<tr>
							<td>
								<input id="song_name" type="text" placeholder="请输入歌曲名称" style="color: #000000;" />
							</td>
							<td>
								<input id="search_song" type="button" value="查询"   style="background-color: #000000;"/>
								<input type="button" value="清除查询"  style="background-color: #000000;width: 100px;" />
							</td>
							
						</tr>
                        -->
					
					</table>
					
					<table style="float: left;margin-top: 0px;margin-left: -375px;">
						<tr>
							<td >
								<input id="start" type="button" value="播放" style="background-color: #000000; width: 50px;height: 50px;" />
							</td>
						
						
							<td>
								<input id="stop" type="button" value="停止"  style="background-color: #000000;width: 50px;height: 50px;" />
							</td>
						</tr>
					</table>
				
			</div>
		</div>
		
		<div id="box" style="margin-top: 100px;">
			
			<!--设备列表-->
			<div id="equipment" style="margin: 0 auto;height: 650px;overflow-y: scroll;">
				<table  style="margin: 0 auto; " cellpadding="0" cellspacing="0">
					<thead>
						<th colspan="5"  style="font-size: 30px; ">设备信息</th>
					</thead>
					<thead>
						<th>
			 				<input id="eqt_select_all" type="checkbox" value=""  />
			 				<span >&nbsp;全选&nbsp;</span>
			 				<!--<input id="eqt_save" type="button" value="确定" style="background-color: #000000;" />-->
		 				</th>
		 				<th>分区编号</th>
						<th>IP地址</th>
						<th>分区名称</th>
						<th>分区音量</th>
					</thead>
					<%
						var conn_str = "Driver={Microsoft Access Driver (*.mdb)};Data Source = broadcast.mdb"
						var conn = Server.CreateObject("ADODB.CONNECTION");
						conn.Open(conn_str);
						var sql = "select * from songs";
						var result_set = Server.CreateObject("ADODB.Recordset");
						result_set.Open(sql,conn,1,3);
						
						var sql_equipment = "select * from equipment";
						var result_set_equipment = Server.CreateObject("ADODB.Recordset");
						result_set_equipment.Open(sql_equipment,conn,1,3);
						
						/*var recordCount = result_set_equipment.RecordCount;'总条数'
						var pageIndex =1; '当前页'
						var pageSize = 10;'每页条数'
						var pageCount = (recordCount/10 );	'总页数'		*/
						
							
							for(var i = 0;i<result_set_equipment.RecordCount;i++){
								var fields = result_set_equipment.Fields;
								Response.Write("<tr>");
								Response.Write("<td><span><input type='checkbox' name='check_box' value='"+fields.Item(1).Value+"'  /></span></td>");
								for(var j=0;j<fields.Count;j++){
									if(j!= 0 && j!=4 && j!= 6 && j!= 7 && j!= 8){
										Response.Write("<td>"+fields.Item(j).Value+"</td>");
									}
									
								}
								result_set_equipment.MoveNext;
								Response.Write("</tr>");
							}
					
						
					%>
					
					
		
				
				</table>
				
				<!--<table style="margin: 0 auto;">
					<tr>
						<td>
							<input id="prePage_eqt" type="button" style="background-color: #000000;" value="上一页"/>
							<input id="nextPage_eqt" type="button" style="background-color: #000000;" value="下一页"/>
							<%
								
								Response.Write("<input id='recordCount' type='text'  style='color:#000000;width: 30px;' readonly='readonly' value="+result_set_equipment.RecordCount+" />");
								
							%>
							
						</td>
					</tr>
				</table>
			-->
			</div>
			<!--设备列表结束-->
			
			
			<!--歌曲列表-->
			<div id="songs" style="height: 650px;overflow-y: scroll;">
				<table style="margin: 0 auto;" cellpadding="0" cellspacing="0">
					<thead>
						<th colspan="3" style="font-size: 30px;">音乐列表
						
						</th>
					</thead>
					<thead>
						<th>
			 				<input id="songs_select_all" type="checkbox"   />
			 				<span >&nbsp;全选&nbsp;</span>
			 				<!--<input id="songs_save" type="button" value="确定" style="background-color: #000000;" />-->
		 				</th>
						<th>歌曲ID</th>
						<th>歌曲名称</th>	
						
					</thead>
					<%
						for(var i = 0;i<result_set.RecordCount;i++){
							var fields = result_set.Fields;
							Response.Write("<tr>");
							Response.Write("<td><span><input type='checkbox' name='check_box' value='"+fields.Item(1).Value+"'  /></span></td>");
							for(var j=0;j<fields.Count;j++){
								if(j!=0 && j!= 3){
									Response.Write("<td>"+fields.Item(j).Value+"</td>");
								}
								
							}
							result_set.MoveNext;
							Response.Write("</tr>");
						}
						
					%>
					
					
				</table>
				
				
			</div>
			<!--歌曲列表结束-->
		</div>
	</body>
	
</html>