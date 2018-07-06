<%@ Page Language="C#"%>
<%@ Import Namespace="WebScada"%>
<%
    if (Global.NeedLogin)
    {
        if (Session["user"] == null)
        {
            if (Global.IsMoblie(Request.UserAgent))
                Response.Redirect("mlogin.html");
            else
                Response.Redirect("login.html");
        }
    }
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=1865,height=996,initial-scale=0.5,minimum-scale=0.5,maximum-scale=5,user-scalable=yes" />
<title>东楼1F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 31;
db["item1287loopstatus_iopc1_loop_4_31_8_s"]={tagname:"item1287loopstatus_iopc1_loop_4_31_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1273loopstatus_iopc1_loop_4_30_2_s"]={tagname:"item1273loopstatus_iopc1_loop_4_30_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1284loopstatus_iopc1_loop_4_31_5_s"]={tagname:"item1284loopstatus_iopc1_loop_4_31_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1387loopstatus_iopc1_loop_4_44_8_s"]={tagname:"item1387loopstatus_iopc1_loop_4_44_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item588loopcontrol_iopc1_loop_4_31_3_c"]={tagname:"item588loopcontrol_iopc1_loop_4_31_3_c",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1272loopstatus_iopc1_loop_4_30_1_s"]={tagname:"item1272loopstatus_iopc1_loop_4_30_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1275loopstatus_iopc1_loop_4_30_4_s"]={tagname:"item1275loopstatus_iopc1_loop_4_30_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1277loopstatus_iopc1_loop_4_30_6_s"]={tagname:"item1277loopstatus_iopc1_loop_4_30_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1280loopstatus_iopc1_loop_4_31_1_s"]={tagname:"item1280loopstatus_iopc1_loop_4_31_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item595loopcontrol_iopc1_loop_4_32_2_c"]={tagname:"item595loopcontrol_iopc1_loop_4_32_2_c",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1288loopstatus_iopc1_loop_4_32_1_s"]={tagname:"item1288loopstatus_iopc1_loop_4_32_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1290loopstatus_iopc1_loop_4_32_3_s"]={tagname:"item1290loopstatus_iopc1_loop_4_32_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1286loopstatus_iopc1_loop_4_31_7_s"]={tagname:"item1286loopstatus_iopc1_loop_4_31_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1370loopstatus_iopc1_loop_4_42_7_s"]={tagname:"item1370loopstatus_iopc1_loop_4_42_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1371loopstatus_iopc1_loop_4_42_8_s"]={tagname:"item1371loopstatus_iopc1_loop_4_42_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1373loopstatus_iopc1_loop_4_43_2_s"]={tagname:"item1373loopstatus_iopc1_loop_4_43_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1372loopstatus_iopc1_loop_4_43_1_s"]={tagname:"item1372loopstatus_iopc1_loop_4_43_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1285loopstatus_iopc1_loop_4_31_6_s"]={tagname:"item1285loopstatus_iopc1_loop_4_31_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1278loopstatus_iopc1_loop_4_30_7_s"]={tagname:"item1278loopstatus_iopc1_loop_4_30_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1291loopstatus_iopc1_loop_4_32_4_s"]={tagname:"item1291loopstatus_iopc1_loop_4_32_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1274loopstatus_iopc1_loop_4_30_3_s"]={tagname:"item1274loopstatus_iopc1_loop_4_30_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1374loopstatus_iopc1_loop_4_43_3_s"]={tagname:"item1374loopstatus_iopc1_loop_4_43_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1375loopstatus_iopc1_loop_4_43_4_s"]={tagname:"item1375loopstatus_iopc1_loop_4_43_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1386loopstatus_iopc1_loop_4_44_7_s"]={tagname:"item1386loopstatus_iopc1_loop_4_44_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1364loopstatus_iopc1_loop_4_42_1_s"]={tagname:"item1364loopstatus_iopc1_loop_4_42_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1365loopstatus_iopc1_loop_4_42_2_s"]={tagname:"item1365loopstatus_iopc1_loop_4_42_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1367loopstatus_iopc1_loop_4_42_4_s"]={tagname:"item1367loopstatus_iopc1_loop_4_42_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1368loopstatus_iopc1_loop_4_42_5_s"]={tagname:"item1368loopstatus_iopc1_loop_4_42_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1369loopstatus_iopc1_loop_4_42_6_s"]={tagname:"item1369loopstatus_iopc1_loop_4_42_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1383loopstatus_iopc1_loop_4_44_4_s"]={tagname:"item1383loopstatus_iopc1_loop_4_44_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1377loopstatus_iopc1_loop_4_43_6_s"]={tagname:"item1377loopstatus_iopc1_loop_4_43_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
tagcount = tagcount + 1;
db["地图内容选择"] = {tagname:"地图内容选择",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};

	function init(){
		for(var i =1;i<=500;i++){
			$("#zm"+i).hide();
			$("#jk"+i).hide();
			$("#door"+i).hide();
		}
		
		if(db["地图内容选择"].value.indexOf("zm") >= 0){
				var id = "zm";
				for(var i =1;i<=500;i++){
					 id=id+i;
					 $("#"+id).show();
					 id="zm";
				 }
  				
  				
  				
  		 }else if(db["地图内容选择"].value.indexOf("jk") >= 0){

			var id = "jk";
			for(var i =1;i<=500;i++){
				 id=id+i;
				 $("#"+id).show();
				 id="jk";
			 }
  				

  		}else if(db["地图内容选择"].value.indexOf("mj") >= 0){

			var id = "door";
			for(var i =1;i<=500;i++){
				 id=id+i;
				 $("#"+id).show();
				 id="door";
			}
		}


	}
				
			
  			
  setTimeout(init,100);

$(function(){
  	
  	
	for(var i = 1;i<=50;i++){
  			//呼吸灯
			$("#saddr"+i).mousemove(function(){
					$(this).css("background-color","#000000");
					

  		        }).mouseout(function(){
				$(this).css("background-color","#0000FF");
				
	
  	 		 });
  	}		

  });
function jk_js(){
var id = "jk";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="jk";
 }
 

}
function jk3_js(){
open_video("30");
}
function jk4_js(){
open_video("192.168.1.20");
}
function jk6_js(){
open_video("192.168.1.22");
}
function jk7_js(){
open_video("192.168.1.21");
}
function jk8_js(){
open_video("192.168.1.23");
}
function jk9_js(){
open_video("192.168.1.24");
}
function jk10_js(){
open_video("192.168.1.25");
}
function jk11_js(){
open_video("192.168.1.26");
}
function jk12_js(){
open_video("192.168.1.27");
}
function jk13_js(){
open_video("192.168.1.29");
}
function jk14_js(){
open_video("192.168.1.28");
}
function jk15_js(){
open_video("192.168.1.1");
}
function jk16_js(){
open_video("192.168.1.35");
}
function jk17_js(){
open_video("192.168.1.36");
}
function jk18_js(){
open_video("192.168.1.34");
}
function jk19_js(){
open_video("192.168.1.33");
}
function jk20_js(){
open_video("192.168.1.37");
}
function jk21_js(){
open_video("192.168.1.40");
}
function jk22_js(){
open_video("192.168.1.41");
}
function jk23_js(){
open_video("192.168.1.42");
}
function jk24_js(){
open_video("192.168.1.43");
}
function jk25_js(){
open_video("192.168.1.38");
}
function jk26_js(){
open_video("192.168.1.39");
}
function imageex2_js(){
var id = "zm";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="zm";
 }
}
function zm1_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function jk5_js(){
open_video("192.168.1.31");
}
function jk27_js(){
open_video("192.168.1.32");
}
function doorx_js(){
var id = "door";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="door";
 }
}
function saddr1_js(){
writetag("ITEM1408Scene_IOPC1_SADDR_51","1");
alert("命令已经发送！");
}
function saddr2_js(){
writetag("ITEM1409Scene_IOPC1_SADDR_52","1");
alert("命令已经发送！");
}
function saddr3_js(){
writetag("ITEM1410Scene_IOPC1_SADDR_53","1");
alert("命令已经发送！");
}
function saddr4_js(){
writetag("ITEM1412Scene_IOPC1_SADDR_55","1");
alert("命令已经发送！");
}
function saddr5_js(){
writetag("ITEM1411Scene_IOPC1_SADDR_54","1");
alert("命令已经发送！");
}
function saddr6_js(){
writetag("ITEM1413Scene_IOPC1_SADDR_56","1");
alert("命令已经发送！");
}
function saddr7_js(){
writetag("ITEM1415Scene_IOPC1_SADDR_58","1");
alert("命令已经发送！");
}
function saddr8_js(){
writetag("ITEM1414Scene_IOPC1_SADDR_57","1");
alert("命令已经发送！");
}
function saddr9_js(){
writetag("ITEM1417Scene_IOPC1_SADDR_60","1");
alert("命令已经发送！");
}
function saddr10_js(){
writetag("ITEM1416Scene_IOPC1_SADDR_59","1");
alert("命令已经发送！");
}
function zm4_js(){
writetag("ITEM585LoopControl_IOPC1_LOOP_4_30_8_C","");
}
function zm5_js(){
writetag("ITEM579LoopControl_IOPC1_LOOP_4_30_2_C","");
}
function zm6_js(){
writetag("ITEM590LoopControl_IOPC1_LOOP_4_31_5_C","");
}
function zm7_js(){
writetag("ITEM693LoopControl_IOPC1_LOOP_4_44_8_C","");
}
function zm8_js(){
writetag("ITEM588LoopControl_IOPC1_LOOP_4_31_3_C","");
}
function zm9_js(){
writetag("ITEM578LoopControl_IOPC1_LOOP_4_30_1_C","");
}
function zm10_js(){
writetag("ITEM581LoopControl_IOPC1_LOOP_4_30_4_C","");
}
function zm11_js(){
writetag("ITEM583LoopControl_IOPC1_LOOP_4_30_6_C","");
}
function zm12_js(){
writetag("ITEM586LoopControl_IOPC1_LOOP_4_31_1_C","");
}
function zm13_js(){
writetag("ITEM595LoopControl_IOPC1_LOOP_4_32_2_C","");
}
function zm14_js(){
writetag("ITEM594LoopControl_IOPC1_LOOP_4_32_1_C","");
}
function zm15_js(){
writetag("ITEM596LoopControl_IOPC1_LOOP_4_32_3_C","");
}
function zm16_js(){
writetag("ITEM1288LoopStatus_IOPC1_LOOP_4_32_1_S","");
}
function zm18_js(){
writetag("ITEM596LoopControl_IOPC1_LOOP_4_32_3_C","");
}
function zm20_js(){
writetag("ITEM579LoopControl_IOPC1_LOOP_4_30_2_C","");
}
function zm21_js(){
writetag("ITEM592LoopControl_IOPC1_LOOP_4_31_7_C","");
}
function zm26_js(){
writetag("ITEM676LoopControl_IOPC1_LOOP_4_42_7_C","");
}
function zm27_js(){
writetag("ITEM677LoopControl_IOPC1_LOOP_4_42_8_C","");
}
function zm28_js(){
writetag("ITEM679LoopControl_IOPC1_LOOP_4_43_2_C","");
}
function zm29_js(){
writetag("ITEM678LoopControl_IOPC1_LOOP_4_43_1_C","");
}
function zm30_js(){
writetag("ITEM591LoopControl_IOPC1_LOOP_4_31_6_C","");
}
function zm31_js(){
writetag("ITEM584LoopControl_IOPC1_LOOP_4_30_7_C","");
}
function zm34_js(){
writetag("ITEM597LoopControl_IOPC1_LOOP_4_32_4_C","");
}
function zm35_js(){
writetag("ITEM580LoopControl_IOPC1_LOOP_4_30_3_C","");
}
function zm36_js(){
writetag("ITEM680LoopControl_IOPC1_LOOP_4_43_3_C","");
}
function zm37_js(){
writetag("ITEM681LoopControl_IOPC1_LOOP_4_43_4_C","");
}
function zm38_js(){
writetag("ITEM692LoopControl_IOPC1_LOOP_4_44_7_C","");
}
function zm39_js(){
writetag("ITEM670LoopControl_IOPC1_LOOP_4_42_1_C","");
}
function zm40_js(){
writetag("ITEM671LoopControl_IOPC1_LOOP_4_42_2_C","");
}
function zm41_js(){
writetag("ITEM673LoopControl_IOPC1_LOOP_4_42_4_C","");
}
function zm42_js(){
writetag("ITEM674LoopControl_IOPC1_LOOP_4_42_5_C","");
}
function zm43_js(){
writetag("ITEM675LoopControl_IOPC1_LOOP_4_42_6_C","");
}
function zm44_js(){
writetag("ITEM681LoopControl_IOPC1_LOOP_4_43_4_C","");
}
function zm45_js(){
writetag("ITEM689LoopControl_IOPC1_LOOP_4_44_4_C","");
}
function zm46_js(){
writetag("ITEM579LoopControl_IOPC1_LOOP_4_30_2_C","");
}
function zm47_js(){
writetag("ITEM683LoopControl_IOPC1_LOOP_4_43_6_C","");
}
function zm48_js(){
writetag("ITEM671LoopControl_IOPC1_LOOP_4_42_2_C","");
}
function zm22_js(){
writetag("ITEM579LoopControl_IOPC1_LOOP_4_30_2_C","");
}
function zm24_js(){
writetag("ITEM579LoopControl_IOPC1_LOOP_4_30_2_C","");
}
function zm23_js(){
writetag("ITEM592LoopControl_IOPC1_LOOP_4_31_7_C","");
}
function zm25_js(){
writetag("ITEM592LoopControl_IOPC1_LOOP_4_31_7_C","");
}
function zm49_js(){
writetag("ITEM596LoopControl_IOPC1_LOOP_4_32_3_C","");
}
function zm17_js(){
writetag("ITEM1288LoopStatus_IOPC1_LOOP_4_32_1_S","");
}
function zm33_js(){
writetag("ITEM584LoopControl_IOPC1_LOOP_4_30_7_C","");
}
function zm32_js(){
writetag("ITEM584LoopControl_IOPC1_LOOP_4_30_7_C","");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm1);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item1273loopstatus_iopc1_loop_4_30_2_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item1284loopstatus_iopc1_loop_4_31_5_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item1387loopstatus_iopc1_loop_4_44_8_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item588loopcontrol_iopc1_loop_4_31_3_c"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item1272loopstatus_iopc1_loop_4_30_1_s"].htmlobj.push(zm9);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item1275loopstatus_iopc1_loop_4_30_4_s"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item1277loopstatus_iopc1_loop_4_30_6_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item1280loopstatus_iopc1_loop_4_31_1_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item595loopcontrol_iopc1_loop_4_32_2_c"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item1288loopstatus_iopc1_loop_4_32_1_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item1290loopstatus_iopc1_loop_4_32_3_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item1273loopstatus_iopc1_loop_4_30_2_s"].htmlobj.push(zm16);
var zm18=new swimgObj('zm18','images/light_on.png','images/light_off.png');
db["item1290loopstatus_iopc1_loop_4_32_3_s"].htmlobj.push(zm18);
var zm20=new swimgObj('zm20','images/light_on.png','images/light_off.png');
db["item1273loopstatus_iopc1_loop_4_30_2_s"].htmlobj.push(zm20);
var zm21=new swimgObj('zm21','images/light_on.png','images/light_off.png');
db["item1286loopstatus_iopc1_loop_4_31_7_s"].htmlobj.push(zm21);
var zm26=new swimgObj('zm26','images/light_on.png','images/light_off.png');
db["item1370loopstatus_iopc1_loop_4_42_7_s"].htmlobj.push(zm26);
var zm27=new swimgObj('zm27','images/light_on.png','images/light_off.png');
db["item1371loopstatus_iopc1_loop_4_42_8_s"].htmlobj.push(zm27);
var zm28=new swimgObj('zm28','images/light_on.png','images/light_off.png');
db["item1373loopstatus_iopc1_loop_4_43_2_s"].htmlobj.push(zm28);
var zm29=new swimgObj('zm29','images/light_on.png','images/light_off.png');
db["item1372loopstatus_iopc1_loop_4_43_1_s"].htmlobj.push(zm29);
var zm30=new swimgObj('zm30','images/light_on.png','images/light_off.png');
db["item1285loopstatus_iopc1_loop_4_31_6_s"].htmlobj.push(zm30);
var zm31=new swimgObj('zm31','images/light_on.png','images/light_off.png');
db["item1278loopstatus_iopc1_loop_4_30_7_s"].htmlobj.push(zm31);
var zm34=new swimgObj('zm34','images/light_on.png','images/light_off.png');
db["item1291loopstatus_iopc1_loop_4_32_4_s"].htmlobj.push(zm34);
var zm35=new swimgObj('zm35','images/light_on.png','images/light_off.png');
db["item1274loopstatus_iopc1_loop_4_30_3_s"].htmlobj.push(zm35);
var zm36=new swimgObj('zm36','images/light_on.png','images/light_off.png');
db["item1374loopstatus_iopc1_loop_4_43_3_s"].htmlobj.push(zm36);
var zm37=new swimgObj('zm37','images/light_on.png','images/light_off.png');
db["item1375loopstatus_iopc1_loop_4_43_4_s"].htmlobj.push(zm37);
var zm38=new swimgObj('zm38','images/light_on.png','images/light_off.png');
db["item1386loopstatus_iopc1_loop_4_44_7_s"].htmlobj.push(zm38);
var zm39=new swimgObj('zm39','images/light_on.png','images/light_off.png');
db["item1364loopstatus_iopc1_loop_4_42_1_s"].htmlobj.push(zm39);
var zm40=new swimgObj('zm40','images/light_on.png','images/light_off.png');
db["item1365loopstatus_iopc1_loop_4_42_2_s"].htmlobj.push(zm40);
var zm41=new swimgObj('zm41','images/light_on.png','images/light_off.png');
db["item1367loopstatus_iopc1_loop_4_42_4_s"].htmlobj.push(zm41);
var zm42=new swimgObj('zm42','images/light_on.png','images/light_off.png');
db["item1368loopstatus_iopc1_loop_4_42_5_s"].htmlobj.push(zm42);
var zm43=new swimgObj('zm43','images/light_on.png','images/light_off.png');
db["item1369loopstatus_iopc1_loop_4_42_6_s"].htmlobj.push(zm43);
var zm44=new swimgObj('zm44','images/light_on.png','images/light_off.png');
db["item1375loopstatus_iopc1_loop_4_43_4_s"].htmlobj.push(zm44);
var zm45=new swimgObj('zm45','images/light_on.png','images/light_off.png');
db["item1383loopstatus_iopc1_loop_4_44_4_s"].htmlobj.push(zm45);
var zm46=new swimgObj('zm46','images/light_on.png','images/light_off.png');
db["item1273loopstatus_iopc1_loop_4_30_2_s"].htmlobj.push(zm46);
var zm47=new swimgObj('zm47','images/light_on.png','images/light_off.png');
db["item1377loopstatus_iopc1_loop_4_43_6_s"].htmlobj.push(zm47);
var zm48=new swimgObj('zm48','images/light_on.png','images/light_off.png');
db["item1365loopstatus_iopc1_loop_4_42_2_s"].htmlobj.push(zm48);
var zm22=new swimgObj('zm22','images/light_on.png','images/light_off.png');
db["item1273loopstatus_iopc1_loop_4_30_2_s"].htmlobj.push(zm22);
var zm24=new swimgObj('zm24','images/light_on.png','images/light_off.png');
db["item1273loopstatus_iopc1_loop_4_30_2_s"].htmlobj.push(zm24);
var zm23=new swimgObj('zm23','images/light_on.png','images/light_off.png');
db["item1286loopstatus_iopc1_loop_4_31_7_s"].htmlobj.push(zm23);
var zm25=new swimgObj('zm25','images/light_on.png','images/light_off.png');
db["item1286loopstatus_iopc1_loop_4_31_7_s"].htmlobj.push(zm25);
var zm49=new swimgObj('zm49','images/light_on.png','images/light_off.png');
db["item1290loopstatus_iopc1_loop_4_32_3_s"].htmlobj.push(zm49);
var zm17=new swimgObj('zm17','images/light_on.png','images/light_off.png');
db["item1273loopstatus_iopc1_loop_4_30_2_s"].htmlobj.push(zm17);
var zm33=new swimgObj('zm33','images/light_on.png','images/light_off.png');
db["item1278loopstatus_iopc1_loop_4_30_7_s"].htmlobj.push(zm33);
var zm32=new swimgObj('zm32','images/light_on.png','images/light_off.png');
db["item1278loopstatus_iopc1_loop_4_30_7_s"].htmlobj.push(zm32);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/东楼1F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 东楼1F</div>
<img id="d1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/1F.jpg" />
<img id="jk" style="position:absolute;border:0px;left:1424px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:528px;top:416px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:480px;top:392px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:392px;top:272px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:496px;top:272px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:560px;top:256px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:712px;top:248px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:872px;top:272px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:896px;top:240px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:944px;top:200px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:1216px;top:176px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:1208px;top:224px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="jk15" style="position:absolute;border:0px;left:1240px;top:200px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk15_js();"/>
<img id="jk16" style="position:absolute;border:0px;left:1320px;top:424px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk16_js();"/>
<img id="jk17" style="position:absolute;border:0px;left:1280px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk17_js();"/>
<img id="jk18" style="position:absolute;border:0px;left:1064px;top:432px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk18_js();"/>
<img id="jk19" style="position:absolute;border:0px;left:952px;top:400px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk19_js();"/>
<img id="jk20" style="position:absolute;border:0px;left:896px;top:656px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk20_js();"/>
<img id="jk21" style="position:absolute;border:0px;left:960px;top:752px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk21_js();"/>
<img id="jk22" style="position:absolute;border:0px;left:960px;top:808px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk22_js();"/>
<img id="jk23" style="position:absolute;border:0px;left:1336px;top:840px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk23_js();"/>
<img id="jk24" style="position:absolute;border:0px;left:1320px;top:880px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk24_js();"/>
<img id="jk25" style="position:absolute;border:0px;left:1136px;top:624px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk25_js();"/>
<img id="jk26" style="position:absolute;border:0px;left:1176px;top:680px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk26_js();"/>
<img id="imageex2" style="position:absolute;border:0px;left:1488px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:imageex2_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:424px;top:264px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="4-31-8"/>
<img id="jk5" style="position:absolute;border:0px;left:640px;top:416px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk27" style="position:absolute;border:0px;left:696px;top:416px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk27_js();"/>
<img id="doorx" style="position:absolute;border:0px;left:1360px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:doorx_js();"/>
<button id="saddr1" style="position:absolute;cursor:pointer;left:64px;width:136px;height:48px;top:504px;font-family:'宋体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:saddr1_js();">后厨全开</button>
<button id="saddr2" style="position:absolute;cursor:pointer;left:248px;width:136px;height:48px;top:504px;font-family:'宋体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:saddr2_js();">后厨全关</button>
<button id="saddr3" style="position:absolute;cursor:pointer;left:64px;width:136px;height:48px;top:576px;font-family:'宋体','Serif';font-style:normal;font-size:18px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:saddr3_js();">过廊开一路</button>
<button id="saddr4" style="position:absolute;cursor:pointer;left:248px;width:136px;height:48px;top:576px;font-family:'宋体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:saddr4_js();">过廊全关</button>
<button id="saddr5" style="position:absolute;cursor:pointer;left:64px;width:136px;height:48px;top:648px;font-family:'宋体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:saddr5_js();">过廊全开</button>
<button id="saddr6" style="position:absolute;cursor:pointer;left:64px;width:136px;height:48px;top:720px;font-family:'宋体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:saddr6_js();">餐厅全开</button>
<button id="saddr7" style="position:absolute;cursor:pointer;left:248px;width:136px;height:48px;top:720px;font-family:'宋体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:saddr7_js();">餐厅全开</button>
<button id="saddr8" style="position:absolute;cursor:pointer;left:64px;width:136px;height:48px;top:784px;font-family:'宋体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:saddr8_js();">餐厅半开</button>
<button id="saddr9" style="position:absolute;cursor:pointer;left:64px;width:136px;height:48px;top:856px;font-family:'宋体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:saddr9_js();">其余全关</button>
<button id="saddr10" style="position:absolute;cursor:pointer;left:248px;width:136px;height:48px;top:856px;font-family:'宋体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:saddr10_js();">其余全开</button>
<img id="zm4" style="position:absolute;border:0px;left:464px;top:264px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="4-30-8"/>
<img id="zm5" style="position:absolute;border:0px;left:488px;top:328px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="4-30-2"/>
<img id="zm6" style="position:absolute;border:0px;left:576px;top:304px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="4-31-5"/>
<img id="zm7" style="position:absolute;border:0px;left:760px;top:352px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="4-44-8"/>
<img id="zm8" style="position:absolute;border:0px;left:704px;top:348px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="4-31-3"/>
<img id="zm9" style="position:absolute;border:0px;left:528px;top:347px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="4-30-1"/>
<img id="zm10" style="position:absolute;border:0px;left:576px;top:347px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="4-30-4"/>
<img id="zm11" style="position:absolute;border:0px;left:648px;top:352px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="4-30-6"/>
<img id="zm12" style="position:absolute;border:0px;left:792px;top:256px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="4-31-1"/>
<img id="zm13" style="position:absolute;border:0px;left:752px;top:232px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="4-32-2"/>
<img id="zm14" style="position:absolute;border:0px;left:744px;top:280px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="4-32-1"/>
<img id="zm15" style="position:absolute;border:0px;left:816px;top:280px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="4-32-3"/>
<img id="zm16" style="position:absolute;border:0px;left:920px;top:288px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="4-32-1"/>
<img id="zm18" style="position:absolute;border:0px;left:1144px;top:294px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm18_js();" title="4-32-3"/>
<img id="zm20" style="position:absolute;border:0px;left:944px;top:232px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm20_js();" title="4-31-4"/>
<img id="zm21" style="position:absolute;border:0px;left:1016px;top:232px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm21_js();" title="4-31-7"/>
<img id="zm26" style="position:absolute;border:0px;left:1280px;top:376px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm26_js();" title="4-42-7"/>
<img id="zm27" style="position:absolute;border:0px;left:1056px;top:376px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm27_js();" title="4-42-8"/>
<img id="zm28" style="position:absolute;border:0px;left:1120px;top:376px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm28_js();" title="4-43-2"/>
<img id="zm29" style="position:absolute;border:0px;left:1184px;top:376px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm29_js();" title="4-43-1"/>
<img id="zm30" style="position:absolute;border:0px;left:952px;top:488px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm30_js();" title="4-31-6"/>
<img id="zm31" style="position:absolute;border:0px;left:952px;top:616px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm31_js();" title="4-30-7"/>
<img id="zm34" style="position:absolute;border:0px;left:1320px;top:800px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm34_js();" title="4-32-4"/>
<img id="zm35" style="position:absolute;border:0px;left:1376px;top:832px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm35_js();" title="4-30-3"/>
<img id="zm36" style="position:absolute;border:0px;left:1328px;top:560px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm36_js();" title="4-43-3"/>
<img id="zm37" style="position:absolute;border:0px;left:1336px;top:624px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm37_js();" title="4-43-4"/>
<img id="zm38" style="position:absolute;border:0px;left:1272px;top:512px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm38_js();" title="4-44-7"/>
<img id="zm39" style="position:absolute;border:0px;left:1176px;top:440px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm39_js();" title="4-42-1"/>
<img id="zm40" style="position:absolute;border:0px;left:1128px;top:440px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm40_js();" title="4-42-2"/>
<img id="zm41" style="position:absolute;border:0px;left:1072px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm41_js();" title="4-42-4"/>
<img id="zm42" style="position:absolute;border:0px;left:1072px;top:520px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm42_js();" title="4-42-5"/>
<img id="zm43" style="position:absolute;border:0px;left:1072px;top:560px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm43_js();" title="4-42-6"/>
<img id="zm44" style="position:absolute;border:0px;left:1176px;top:560px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm44_js();" title="4-43-4"/>
<img id="zm45" style="position:absolute;border:0px;left:1048px;top:832px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm45_js();" title="4-44-4"/>
<img id="zm46" style="position:absolute;border:0px;left:1048px;top:712px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm46_js();" title="4-43-5"/>
<img id="zm47" style="position:absolute;border:0px;left:1152px;top:736px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm47_js();" title="4-43-6"/>
<img id="zm48" style="position:absolute;border:0px;left:1280px;top:736px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm48_js();" title="4-44-2"/>
<img id="zm22" style="position:absolute;border:0px;left:1096px;top:200px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm22_js();" title="4-31-4"/>
<img id="zm24" style="position:absolute;border:0px;left:1184px;top:232px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm24_js();" title="4-31-4"/>
<img id="zm23" style="position:absolute;border:0px;left:1096px;top:232px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm23_js();" title="4-31-7"/>
<img id="zm25" style="position:absolute;border:0px;left:1216px;top:264px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm25_js();" title="4-31-7"/>
<img id="zm49" style="position:absolute;border:0px;left:960px;top:312px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm49_js();" title="4-32-3"/>
<img id="zm17" style="position:absolute;border:0px;left:1064px;top:289px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm17_js();" title="4-32-1"/>
<img id="zm33" style="position:absolute;border:0px;left:856px;top:648px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm33_js();" title="4-30-7"/>
<img id="zm32" style="position:absolute;border:0px;left:952px;top:688px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm32_js();" title="4-30-7"/>

</div>

<script type="text/javascript">    

    if (divcenter){
        var mydiv = document.getElementById("fscada");
        mydiv_resize();
        window.onresize = mydiv_resize;
    }
</script>

</body>
</html>
