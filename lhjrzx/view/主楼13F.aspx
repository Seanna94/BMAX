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
<title>主楼13F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 48;
db["door/13f弱电井#1/1301小会议室_onoff"]={tagname:"door/13f弱电井#1/1301小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#1/1303_onoff"]={tagname:"door/13f弱电井#1/1303_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#1/1305_onoff"]={tagname:"door/13f弱电井#1/1305_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#1/1311_onoff"]={tagname:"door/13f弱电井#1/1311_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#1/1313_onoff"]={tagname:"door/13f弱电井#1/1313_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1325东门_onoff"]={tagname:"door/13f弱电井#2/1325东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#1/1315_onoff"]={tagname:"door/13f弱电井#1/1315_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#1/1319西门_onoff"]={tagname:"door/13f弱电井#1/1319西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#1/1319东门_onoff"]={tagname:"door/13f弱电井#1/1319东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1321西门_onoff"]={tagname:"door/13f弱电井#2/1321西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1321东门_onoff"]={tagname:"door/13f弱电井#2/1321东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1323西门_onoff"]={tagname:"door/13f弱电井#2/1323西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1323东门_onoff"]={tagname:"door/13f弱电井#2/1323东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#1/1317西门_onoff"]={tagname:"door/13f弱电井#1/1317西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#1/1317东门_onoff"]={tagname:"door/13f弱电井#1/1317东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1325西门_onoff"]={tagname:"door/13f弱电井#2/1325西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#1/1304小会议室_onoff"]={tagname:"door/13f弱电井#1/1304小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#1/1308_onoff"]={tagname:"door/13f弱电井#1/1308_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1314_onoff"]={tagname:"door/13f弱电井#2/1314_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1316_onoff"]={tagname:"door/13f弱电井#2/1316_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1318小会议室_onoff"]={tagname:"door/13f弱电井#2/1318小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1320西门_onoff"]={tagname:"door/13f弱电井#2/1320西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1320东门_onoff"]={tagname:"door/13f弱电井#2/1320东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1322西门小会议室_onoff"]={tagname:"door/13f弱电井#2/1322西门小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1322东门小会议室_onoff"]={tagname:"door/13f弱电井#2/1322东门小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1324_onoff"]={tagname:"door/13f弱电井#2/1324_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1332小会议室_onoff"]={tagname:"door/13f弱电井#2/1332小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#1/1302北门会议室_onoff"]={tagname:"door/13f弱电井#1/1302北门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#1/1302南门会议室_onoff"]={tagname:"door/13f弱电井#1/1302南门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1326_onoff"]={tagname:"door/13f弱电井#2/1326_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1328_onoff"]={tagname:"door/13f弱电井#2/1328_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/13f弱电井#2/1330_onoff"]={tagname:"door/13f弱电井#2/1330_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item781loopstatus_iopc1_loop_1_45_2_s"]={tagname:"item781loopstatus_iopc1_loop_1_45_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item783loopstatus_iopc1_loop_1_45_4_s"]={tagname:"item783loopstatus_iopc1_loop_1_45_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item776loopstatus_iopc1_loop_1_44_1_s"]={tagname:"item776loopstatus_iopc1_loop_1_44_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item784loopstatus_iopc1_loop_1_45_5_s"]={tagname:"item784loopstatus_iopc1_loop_1_45_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item773loopstatus_iopc1_loop_1_43_4_s"]={tagname:"item773loopstatus_iopc1_loop_1_43_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item774loopstatus_iopc1_loop_1_43_5_s"]={tagname:"item774loopstatus_iopc1_loop_1_43_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item777loopstatus_iopc1_loop_1_44_2_s"]={tagname:"item777loopstatus_iopc1_loop_1_44_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item796loopstatus_iopc1_loop_1_47_5_s"]={tagname:"item796loopstatus_iopc1_loop_1_47_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item794loopstatus_iopc1_loop_1_47_3_s"]={tagname:"item794loopstatus_iopc1_loop_1_47_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item797loopstatus_iopc1_loop_1_47_6_s"]={tagname:"item797loopstatus_iopc1_loop_1_47_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item795loopstatus_iopc1_loop_1_47_4_s"]={tagname:"item795loopstatus_iopc1_loop_1_47_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item791loopstatus_iopc1_loop_1_46_6_s"]={tagname:"item791loopstatus_iopc1_loop_1_46_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item792loopstatus_iopc1_loop_1_47_1_s"]={tagname:"item792loopstatus_iopc1_loop_1_47_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item789loopstatus_iopc1_loop_1_46_4_s"]={tagname:"item789loopstatus_iopc1_loop_1_46_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item786loopstatus_iopc1_loop_1_46_1_s"]={tagname:"item786loopstatus_iopc1_loop_1_46_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item787loopstatus_iopc1_loop_1_46_2_s"]={tagname:"item787loopstatus_iopc1_loop_1_46_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
function door20_js(){
writetag("Door/13F弱电井#1/1301小会议室","");
}
function door21_js(){
writetag("Door/13F弱电井#1/1303","");
}
function door22_js(){
writetag("Door/13F弱电井#1/1305","");
}
function door23_js(){
writetag("Door/13F弱电井#1/1311","");
}
function door24_js(){
writetag("Door/13F弱电井#1/1313","");
}
function door35_js(){
writetag("Door/13F弱电井#2/1325东门","");
}
function door25_js(){
writetag("Door/13F弱电井#1/1315","");
}
function door26_js(){
writetag("Door/13F弱电井#1/1319西门","");
}
function door27_js(){
writetag("Door/13F弱电井#1/1319东门","");
}
function door28_js(){
writetag("Door/13F弱电井#2/1321西门","");
}
function door29_js(){
writetag("Door/13F弱电井#2/1321东门","");
}
function door30_js(){
writetag("Door/13F弱电井#2/1323西门","");
}
function door31_js(){
writetag("Door/13F弱电井#2/1323东门","");
}
function door32_js(){
writetag("Door/13F弱电井#1/1317西门","");
}
function door33_js(){
writetag("Door/13F弱电井#1/1317东门","");
}
function door34_js(){
writetag("Door/13F弱电井#2/1325西门","");
}
function door5_js(){
writetag("Door/13F弱电井#1/1304小会议室","");
}
function door6_js(){
writetag("Door/13F弱电井#1/1305","");
}
function door7_js(){
writetag("Door/13F弱电井#1/1308","");
}
function door10_js(){
writetag("Door/13F弱电井#2/1314","");
}
function door11_js(){
writetag("Door/13F弱电井#2/1316","");
}
function door12_js(){
writetag("Door/13F弱电井#2/1318小会议室","");
}
function door13_js(){
writetag("Door/13F弱电井#2/1320西门","");
}
function door14_js(){
writetag("Door/13F弱电井#2/1320东门","");
}
function door15_js(){
writetag("Door/13F弱电井#2/1322西门小会议室","");
}
function door16_js(){
writetag("Door/13F弱电井#2/1322东门小会议室","");
}
function door17_js(){
writetag("Door/13F弱电井#2/1324","");
}
function door18_js(){
writetag("Door/13F弱电井#2/1332小会议室","");
}
function door19_js(){
writetag("Door/13F弱电井#1/1302北门会议室","");
}
function door36_js(){
writetag("Door/13F弱电井#1/1302南门会议室","");
}
function door37_js(){
writetag("Door/13F弱电井#2/1326","");
}
function door38_js(){
writetag("Door/13F弱电井#2/1328","");
}
function door39_js(){
writetag("Door/13F弱电井#2/1330","");
}
function j1_js(){
var id = "jk";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="jk";
 }
}
function d1_js(){
var id = "zm";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="zm";
 }
}
function m1_js(){
var id = "door";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="door";
 }
}
function j2_js(){
var id = "jk";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="jk";
 }
}
function d2_js(){
var id = "zm";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="zm";
 }
}
function m2_js(){
var id = "door";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="door";
 }
}
function zm1_js(){
writetag("ITEM87LoopControl_IOPC1_LOOP_1_45_2_C","");
}
function zm2_js(){
writetag("ITEM89LoopControl_IOPC1_LOOP_1_45_4_C","");
}
function zm3_js(){
writetag("ITEM82LoopControl_IOPC1_LOOP_1_44_1_C","");
}
function zm4_js(){
writetag("ITEM90LoopControl_IOPC1_LOOP_1_45_5_C","");
}
function zm5_js(){
writetag("ITEM79LoopControl_IOPC1_LOOP_1_43_4_C","");
}
function zm6_js(){
writetag("ITEM80LoopControl_IOPC1_LOOP_1_43_5_C","");
}
function zm7_js(){
writetag("ITEM83LoopControl_IOPC1_LOOP_1_44_2_C","");
}
function zm8_js(){
writetag("ITEM82LoopControl_IOPC1_LOOP_1_44_1_C","");
}
function zm9_js(){
writetag("ITEM102LoopControl_IOPC1_LOOP_1_47_5_C","");
}
function zm10_js(){
writetag("ITEM100LoopControl_IOPC1_LOOP_1_47_3_C","");
}
function zm11_js(){
writetag("ITEM103LoopControl_IOPC1_LOOP_1_47_6_C","");
}
function zm12_js(){
writetag("ITEM101LoopControl_IOPC1_LOOP_1_47_4_C","");
}
function zm13_js(){
writetag("ITEM97LoopControl_IOPC1_LOOP_1_46_6_C","");
}
function zm14_js(){
writetag("ITEM98LoopControl_IOPC1_LOOP_1_47_1_C","");
}
function zm15_js(){
writetag("ITEM95LoopControl_IOPC1_LOOP_1_46_4_C","");
}
function zm16_js(){
writetag("ITEM92LoopControl_IOPC1_LOOP_1_46_1_C","");
}
function zm17_js(){
writetag("ITEM93LoopControl_IOPC1_LOOP_1_46_2_C","");
}
function jk2_js(){
open_video2("192.168.3.188");
}
function jk3_js(){
open_video2("192.168.3.186");
}
function jk4_js(){
open_video2("192.168.3.187");
}
function jk5_js(){
open_video2("192.168.3.194");
}
function jk6_js(){
open_video2("192.168.3.193");
}
function jk7_js(){
open_video2("192.168.3.191");
}
function jk8_js(){
open_video2("192.168.3.192");
}
function jk9_js(){
open_video2("192.168.3.189");
}
function jk10_js(){
open_video2("192.168.3.190");
}
function jk11_js(){
open_video2("192.168.3.183");
}
function jk12_js(){
open_video2("192.168.3.185");
}
function jk13_js(){
open_video2("192.168.3.184");
}
function jk14_js(){
open_video2("192.168.3.195");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door20=new swimgObj('door20','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#1/1301小会议室_onoff"].htmlobj.push(door20);
var door21=new swimgObj('door21','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#1/1303_onoff"].htmlobj.push(door21);
var door22=new swimgObj('door22','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#1/1305_onoff"].htmlobj.push(door22);
var door23=new swimgObj('door23','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#1/1311_onoff"].htmlobj.push(door23);
var door24=new swimgObj('door24','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#1/1313_onoff"].htmlobj.push(door24);
var door35=new swimgObj('door35','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1325东门_onoff"].htmlobj.push(door35);
var door25=new swimgObj('door25','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#1/1315_onoff"].htmlobj.push(door25);
var door26=new swimgObj('door26','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#1/1319西门_onoff"].htmlobj.push(door26);
var door27=new swimgObj('door27','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#1/1319东门_onoff"].htmlobj.push(door27);
var door28=new swimgObj('door28','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1321西门_onoff"].htmlobj.push(door28);
var door29=new swimgObj('door29','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1321东门_onoff"].htmlobj.push(door29);
var door30=new swimgObj('door30','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1323西门_onoff"].htmlobj.push(door30);
var door31=new swimgObj('door31','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1323东门_onoff"].htmlobj.push(door31);
var door32=new swimgObj('door32','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#1/1317西门_onoff"].htmlobj.push(door32);
var door33=new swimgObj('door33','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#1/1317东门_onoff"].htmlobj.push(door33);
var door34=new swimgObj('door34','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1325西门_onoff"].htmlobj.push(door34);
var door5=new swimgObj('door5','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#1/1304小会议室_onoff"].htmlobj.push(door5);
var door6=new swimgObj('door6','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#1/1305_onoff"].htmlobj.push(door6);
var door7=new swimgObj('door7','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#1/1308_onoff"].htmlobj.push(door7);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1314_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1316_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1318小会议室_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1320西门_onoff"].htmlobj.push(door13);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1320东门_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1322西门小会议室_onoff"].htmlobj.push(door15);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1322东门小会议室_onoff"].htmlobj.push(door16);
var door17=new swimgObj('door17','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1324_onoff"].htmlobj.push(door17);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1332小会议室_onoff"].htmlobj.push(door18);
var door19=new swimgObj('door19','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#1/1302北门会议室_onoff"].htmlobj.push(door19);
var door36=new swimgObj('door36','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#1/1302南门会议室_onoff"].htmlobj.push(door36);
var door37=new swimgObj('door37','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1326_onoff"].htmlobj.push(door37);
var door38=new swimgObj('door38','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1328_onoff"].htmlobj.push(door38);
var door39=new swimgObj('door39','images/door_km.gif','images/door_close.gif');
db["door/13f弱电井#2/1330_onoff"].htmlobj.push(door39);
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item781loopstatus_iopc1_loop_1_45_2_s"].htmlobj.push(zm1);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item783loopstatus_iopc1_loop_1_45_4_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item776loopstatus_iopc1_loop_1_44_1_s"].htmlobj.push(zm3);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item784loopstatus_iopc1_loop_1_45_5_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item773loopstatus_iopc1_loop_1_43_4_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item774loopstatus_iopc1_loop_1_43_5_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item777loopstatus_iopc1_loop_1_44_2_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item776loopstatus_iopc1_loop_1_44_1_s"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item796loopstatus_iopc1_loop_1_47_5_s"].htmlobj.push(zm9);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item794loopstatus_iopc1_loop_1_47_3_s"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item797loopstatus_iopc1_loop_1_47_6_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item795loopstatus_iopc1_loop_1_47_4_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item791loopstatus_iopc1_loop_1_46_6_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item792loopstatus_iopc1_loop_1_47_1_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item789loopstatus_iopc1_loop_1_46_4_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item786loopstatus_iopc1_loop_1_46_1_s"].htmlobj.push(zm16);
var zm17=new swimgObj('zm17','images/light_on.png','images/light_off.png');
db["item787loopstatus_iopc1_loop_1_46_2_s"].htmlobj.push(zm17);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/主楼13F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼13F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/13F.jpg" />
<img id="door20" style="position:absolute;border:0px;left:375px;top:637px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door20_js();"/>
<img id="door21" style="position:absolute;border:0px;left:359px;top:711px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door21_js();"/>
<img id="door22" style="position:absolute;border:0px;left:444px;top:710px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door22_js();"/>
<img id="door23" style="position:absolute;border:0px;left:528px;top:711px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door23_js();"/>
<img id="door24" style="position:absolute;border:0px;left:596px;top:711px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door24_js();"/>
<img id="door35" style="position:absolute;border:0px;left:1385px;top:643px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door35_js();"/>
<img id="door25" style="position:absolute;border:0px;left:624px;top:637px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door25_js();"/>
<img id="door26" style="position:absolute;border:0px;left:823px;top:645px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door26_js();"/>
<img id="door27" style="position:absolute;border:0px;left:915px;top:645px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door27_js();"/>
<img id="door28" style="position:absolute;border:0px;left:969px;top:645px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door28_js();"/>
<img id="door29" style="position:absolute;border:0px;left:1079px;top:645px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door29_js();"/>
<img id="door30" style="position:absolute;border:0px;left:1128px;top:645px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door30_js();"/>
<img id="door31" style="position:absolute;border:0px;left:1223px;top:645px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door31_js();"/>
<img id="door32" style="position:absolute;border:0px;left:671px;top:645px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door32_js();"/>
<img id="door33" style="position:absolute;border:0px;left:764px;top:646px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door33_js();"/>
<img id="door34" style="position:absolute;border:0px;left:1284px;top:642px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door34_js();"/>
<img id="door5" style="position:absolute;border:0px;left:586px;top:445px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door5_js();"/>
<img id="door6" style="position:absolute;border:0px;left:594px;top:380px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door6_js();"/>
<img id="door7" style="position:absolute;border:0px;left:641px;top:380px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door7_js();"/>
<img id="door10" style="position:absolute;border:0px;left:713px;top:380px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:787px;top:380px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:783px;top:442px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:826px;top:420px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door14" style="position:absolute;border:0px;left:906px;top:420px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:978px;top:420px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door16" style="position:absolute;border:0px;left:1058px;top:420px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door17" style="position:absolute;border:0px;left:1116px;top:428px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door17_js();"/>
<img id="door18" style="position:absolute;border:0px;left:1254px;top:428px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="door19" style="position:absolute;border:0px;left:310px;top:502px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door19_js();"/>
<img id="door36" style="position:absolute;border:0px;left:302px;top:558px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door36_js();"/>
<img id="door37" style="position:absolute;border:0px;left:1120px;top:377px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door37_js();"/>
<img id="door38" style="position:absolute;border:0px;left:1183px;top:377px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door38_js();"/>
<img id="door39" style="position:absolute;border:0px;left:1246px;top:377px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door39_js();"/>
<img id="j1" style="position:absolute;border:0px;left:2288px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j1_js();"/>
<img id="d1" style="position:absolute;border:0px;left:2368px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d1_js();"/>
<img id="m1" style="position:absolute;border:0px;left:2216px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m1_js();"/>
<img id="j2" style="position:absolute;border:0px;left:1352px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j2_js();"/>
<img id="d2" style="position:absolute;border:0px;left:1432px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d2_js();"/>
<img id="m2" style="position:absolute;border:0px;left:1280px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m2_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:248px;top:672px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="1-45-2"/>
<img id="zm2" style="position:absolute;border:0px;left:264px;top:688px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="1-45-4"/>
<img id="zm3" style="position:absolute;border:0px;left:368px;top:480px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="1-44-3"/>
<img id="zm4" style="position:absolute;border:0px;left:536px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="1-45-5"/>
<img id="zm5" style="position:absolute;border:0px;left:552px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="1-43-4"/>
<img id="zm6" style="position:absolute;border:0px;left:1168px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="1-43-5"/>
<img id="zm7" style="position:absolute;border:0px;left:1344px;top:416px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="1-44-2"/>
<img id="zm8" style="position:absolute;border:0px;left:1400px;top:440px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="1-44-1"/>
<img id="zm9" style="position:absolute;border:0px;left:1440px;top:448px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="1-47-5"/>
<img id="zm10" style="position:absolute;border:0px;left:1408px;top:536px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="1-47-3"/>
<img id="zm11" style="position:absolute;border:0px;left:1536px;top:504px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="1-47-6"/>
<img id="zm12" style="position:absolute;border:0px;left:1592px;top:504px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="1-47-4"/>
<img id="zm13" style="position:absolute;border:0px;left:1552px;top:560px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="1-46-6"/>
<img id="zm14" style="position:absolute;border:0px;left:1608px;top:560px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="1-47-1"/>
<img id="zm15" style="position:absolute;border:0px;left:880px;top:512px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="1-46-4"/>
<img id="zm16" style="position:absolute;border:0px;left:880px;top:544px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="1-46-1"/>
<img id="zm17" style="position:absolute;border:0px;left:880px;top:584px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm17_js();" title="1-46-2"/>
<img id="jk2" style="position:absolute;border:0px;left:904px;top:568px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:802px;top:601px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:960px;top:600px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:1424px;top:576px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:1512px;top:600px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:1328px;top:432px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:1464px;top:480px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:832px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:920px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:332px;top:462px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:248px;top:704px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:264px;top:616px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:344px;top:568px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>

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
