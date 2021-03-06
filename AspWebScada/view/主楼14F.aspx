﻿<%@ Page Language="C#"%>
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
<title>主楼14F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 49;
db["door/14f弱电井#1/1404_onoff"]={tagname:"door/14f弱电井#1/1404_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#1/1406_onoff"]={tagname:"door/14f弱电井#1/1406_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#1/1412_onoff"]={tagname:"door/14f弱电井#1/1412_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#1/1408_onoff"]={tagname:"door/14f弱电井#1/1408_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#1/1410_onoff"]={tagname:"door/14f弱电井#1/1410_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#1/1414西门会议室_onoff"]={tagname:"door/14f弱电井#1/1414西门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1414东门会议室_onoff"]={tagname:"door/14f弱电井#2/1414东门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1416西门_onoff"]={tagname:"door/14f弱电井#2/1416西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1416东门_onoff"]={tagname:"door/14f弱电井#2/1416东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1418西门_onoff"]={tagname:"door/14f弱电井#2/1418西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1418东门_onoff"]={tagname:"door/14f弱电井#2/1418东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1422_onoff"]={tagname:"door/14f弱电井#2/1422_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1424_onoff"]={tagname:"door/14f弱电井#2/1424_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1420_onoff"]={tagname:"door/14f弱电井#2/1420_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1426_onoff"]={tagname:"door/14f弱电井#2/1426_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1428_onoff"]={tagname:"door/14f弱电井#2/1428_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#1/1402北门会议室_onoff"]={tagname:"door/14f弱电井#1/1402北门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#1/1402南门会议室_onoff"]={tagname:"door/14f弱电井#1/1402南门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#1/1401_onoff"]={tagname:"door/14f弱电井#1/1401_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#1/1405_onoff"]={tagname:"door/14f弱电井#1/1405_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#1/1403_onoff"]={tagname:"door/14f弱电井#1/1403_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#1/1407_onoff"]={tagname:"door/14f弱电井#1/1407_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#1/1409_onoff"]={tagname:"door/14f弱电井#1/1409_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#1/1411_onoff"]={tagname:"door/14f弱电井#1/1411_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1413_onoff"]={tagname:"door/14f弱电井#2/1413_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1415_onoff"]={tagname:"door/14f弱电井#2/1415_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1417_onoff"]={tagname:"door/14f弱电井#2/1417_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1419_onoff"]={tagname:"door/14f弱电井#2/1419_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1421_onoff"]={tagname:"door/14f弱电井#2/1421_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1423_onoff"]={tagname:"door/14f弱电井#2/1423_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#2/1425_onoff"]={tagname:"door/14f弱电井#2/1425_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item752loopstatus_iopc1_loop_1_39_7_s"]={tagname:"item752loopstatus_iopc1_loop_1_39_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item757loopstatus_iopc1_loop_1_40_4_s"]={tagname:"item757loopstatus_iopc1_loop_1_40_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item759loopstatus_iopc1_loop_1_40_6_s"]={tagname:"item759loopstatus_iopc1_loop_1_40_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item758loopstatus_iopc1_loop_1_40_5_s"]={tagname:"item758loopstatus_iopc1_loop_1_40_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item761loopstatus_iopc1_loop_1_41_2_s"]={tagname:"item761loopstatus_iopc1_loop_1_41_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item765loopstatus_iopc1_loop_1_41_6_s"]={tagname:"item765loopstatus_iopc1_loop_1_41_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item760loopstatus_iopc1_loop_1_41_1_s"]={tagname:"item760loopstatus_iopc1_loop_1_41_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item768loopstatus_iopc1_loop_1_42_3_s"]={tagname:"item768loopstatus_iopc1_loop_1_42_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item747loopstatus_iopc1_loop_1_39_2_s"]={tagname:"item747loopstatus_iopc1_loop_1_39_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item748loopstatus_iopc1_loop_1_39_3_s"]={tagname:"item748loopstatus_iopc1_loop_1_39_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item751loopstatus_iopc1_loop_1_39_6_s"]={tagname:"item751loopstatus_iopc1_loop_1_39_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item764loopstatus_iopc1_loop_1_41_5_s"]={tagname:"item764loopstatus_iopc1_loop_1_41_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item749loopstatus_iopc1_loop_1_39_4_s"]={tagname:"item749loopstatus_iopc1_loop_1_39_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item750loopstatus_iopc1_loop_1_39_5_s"]={tagname:"item750loopstatus_iopc1_loop_1_39_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item755loopstatus_iopc1_loop_1_40_2_s"]={tagname:"item755loopstatus_iopc1_loop_1_40_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item746loopstatus_iopc1_loop_1_39_1_s"]={tagname:"item746loopstatus_iopc1_loop_1_39_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item753loopstatus_iopc1_loop_1_39_8_s"]={tagname:"item753loopstatus_iopc1_loop_1_39_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item756loopstatus_iopc1_loop_1_40_3_s"]={tagname:"item756loopstatus_iopc1_loop_1_40_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
function door6_js(){
writetag("Door/14F弱电井#1/1404","");
}
function door7_js(){
writetag("Door/14F弱电井#1/1406","");
}
function door8_js(){
writetag("Door/14F弱电井#1/1412","");
}
function door9_js(){
writetag("Door/14F弱电井#1/1408","");
}
function door10_js(){
writetag("Door/14F弱电井#1/1410","");
}
function door11_js(){
writetag("Door/14F弱电井#1/1414西门会议室","");
}
function door12_js(){
writetag("Door/14F弱电井#2/1414东门会议室","");
}
function door13_js(){
writetag("Door/14F弱电井#2/1416西门","");
}
function door14_js(){
writetag("Door/14F弱电井#2/1416东门","");
}
function door15_js(){
writetag("Door/14F弱电井#2/1418西门","");
}
function door16_js(){
writetag("Door/14F弱电井#2/1418东门","");
}
function door17_js(){
writetag("Door/14F弱电井#2/1422","");
}
function door18_js(){
writetag("Door/14F弱电井#2/1424","");
}
function door19_js(){
writetag("Door/14F弱电井#2/1420","");
}
function door20_js(){
writetag("Door/14F弱电井#2/1426","");
}
function door21_js(){
writetag("Door/14F弱电井#2/1428","");
}
function door22_js(){
writetag("Door/14F弱电井#1/1402北门会议室","");
}
function door23_js(){
writetag("Door/14F弱电井#1/1402南门会议室","");
}
function door24_js(){
writetag("Door/14F弱电井#1/1401","");
}
function door25_js(){
writetag("Door/14F弱电井#1/1405","");
}
function door26_js(){
writetag("Door/14F弱电井#1/1403","");
}
function door27_js(){
writetag("Door/14F弱电井#1/1407","");
}
function door28_js(){
writetag("Door/14F弱电井#1/1409","");
}
function door29_js(){
writetag("Door/14F弱电井#1/1411","");
}
function door30_js(){
writetag("Door/14F弱电井#2/1413","");
}
function door31_js(){
writetag("Door/14F弱电井#2/1415","");
}
function door32_js(){
writetag("Door/14F弱电井#2/1417","");
}
function door33_js(){
writetag("Door/14F弱电井#2/1419","");
}
function door34_js(){
writetag("Door/14F弱电井#2/1421","");
}
function door35_js(){
writetag("Door/14F弱电井#2/1423","");
}
function door36_js(){
writetag("Door/14F弱电井#2/1425","");
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
function zm1_js(){
writetag("ITEM58LoopControl_IOPC1_LOOP_1_39_7_C","");
}
function zm2_js(){
writetag("ITEM63LoopControl_IOPC1_LOOP_1_40_4_C","");
}
function zm3_js(){
writetag("ITEM65LoopControl_IOPC1_LOOP_1_40_6_C","");
}
function zm4_js(){
writetag("ITEM64LoopControl_IOPC1_LOOP_1_40_5_C","");
}
function zm5_js(){
writetag("ITEM67LoopControl_IOPC1_LOOP_1_41_2_C","");
}
function zm6_js(){
writetag("ITEM71LoopControl_IOPC1_LOOP_1_41_6_C","");
}
function zm7_js(){
writetag("ITEM66LoopControl_IOPC1_LOOP_1_41_1_C","");
}
function zm8_js(){
writetag("ITEM67LoopControl_IOPC1_LOOP_1_41_2_C","");
}
function zm9_js(){
writetag("ITEM74LoopControl_IOPC1_LOOP_1_42_3_C","");
}
function zm10_js(){
writetag("ITEM53LoopControl_IOPC1_LOOP_1_39_2_C","");
}
function zm11_js(){
writetag("ITEM54LoopControl_IOPC1_LOOP_1_39_3_C","");
}
function zm12_js(){
writetag("ITEM57LoopControl_IOPC1_LOOP_1_39_6_C","");
}
function zm13_js(){
writetag("ITEM70LoopControl_IOPC1_LOOP_1_41_5_C","");
}
function zm14_js(){
writetag("ITEM55LoopControl_IOPC1_LOOP_1_39_4_C","");
}
function zm15_js(){
writetag("ITEM56LoopControl_IOPC1_LOOP_1_39_5_C","");
}
function zm16_js(){
writetag("ITEM61LoopControl_IOPC1_LOOP_1_40_2_C","");
}
function zm17_js(){
writetag("ITEM52LoopControl_IOPC1_LOOP_1_39_1_C","");
}
function zm18_js(){
writetag("ITEM59LoopControl_IOPC1_LOOP_1_39_8_C","");
}
function zm19_js(){
writetag("ITEM62LoopControl_IOPC1_LOOP_1_40_3_C","");
}
function jk2_js(){
open_video2("192.168.3.201");
}
function jk3_js(){
open_video2("192.168.3.199");
}
function jk4_js(){
open_video2("192.168.3.200");
}
function jk5_js(){
open_video2("192.168.3.206");
}
function jk6_js(){
open_video2("192.168.3.208");
}
function jk7_js(){
open_video2("192.168.3.207");
}
function jk8_js(){
open_video2("192.168.3.205");
}
function jk9_js(){
open_video2("192.168.3.204");
}
function jk10_js(){
open_video2("192.168.3.202");
}
function jk11_js(){
open_video2("192.168.3.203");
}
function jk12_js(){
open_video2("192.168.3.196");
}
function jk13_js(){
open_video2("192.168.3.197");
}
function jk14_js(){
open_video2("192.168.3.198");
}
function jk15_js(){
open_video2("192.168.3.27");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door6=new swimgObj('door6','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#1/1404_onoff"].htmlobj.push(door6);
var door7=new swimgObj('door7','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#1/1406_onoff"].htmlobj.push(door7);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#1/1412_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#1/1408_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#1/1410_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#1/1414西门会议室_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1414东门会议室_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1416西门_onoff"].htmlobj.push(door13);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1416东门_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1418西门_onoff"].htmlobj.push(door15);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1418东门_onoff"].htmlobj.push(door16);
var door17=new swimgObj('door17','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1422_onoff"].htmlobj.push(door17);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1424_onoff"].htmlobj.push(door18);
var door19=new swimgObj('door19','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1420_onoff"].htmlobj.push(door19);
var door20=new swimgObj('door20','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1426_onoff"].htmlobj.push(door20);
var door21=new swimgObj('door21','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1428_onoff"].htmlobj.push(door21);
var door22=new swimgObj('door22','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#1/1402北门会议室_onoff"].htmlobj.push(door22);
var door23=new swimgObj('door23','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#1/1402南门会议室_onoff"].htmlobj.push(door23);
var door24=new swimgObj('door24','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#1/1401_onoff"].htmlobj.push(door24);
var door25=new swimgObj('door25','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#1/1405_onoff"].htmlobj.push(door25);
var door26=new swimgObj('door26','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#1/1403_onoff"].htmlobj.push(door26);
var door27=new swimgObj('door27','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#1/1407_onoff"].htmlobj.push(door27);
var door28=new swimgObj('door28','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#1/1409_onoff"].htmlobj.push(door28);
var door29=new swimgObj('door29','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#1/1411_onoff"].htmlobj.push(door29);
var door30=new swimgObj('door30','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1413_onoff"].htmlobj.push(door30);
var door31=new swimgObj('door31','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1415_onoff"].htmlobj.push(door31);
var door32=new swimgObj('door32','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1417_onoff"].htmlobj.push(door32);
var door33=new swimgObj('door33','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1419_onoff"].htmlobj.push(door33);
var door34=new swimgObj('door34','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1421_onoff"].htmlobj.push(door34);
var door35=new swimgObj('door35','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1423_onoff"].htmlobj.push(door35);
var door36=new swimgObj('door36','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#2/1425_onoff"].htmlobj.push(door36);
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item752loopstatus_iopc1_loop_1_39_7_s"].htmlobj.push(zm1);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item757loopstatus_iopc1_loop_1_40_4_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item759loopstatus_iopc1_loop_1_40_6_s"].htmlobj.push(zm3);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item758loopstatus_iopc1_loop_1_40_5_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item761loopstatus_iopc1_loop_1_41_2_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item765loopstatus_iopc1_loop_1_41_6_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item760loopstatus_iopc1_loop_1_41_1_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item761loopstatus_iopc1_loop_1_41_2_s"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item768loopstatus_iopc1_loop_1_42_3_s"].htmlobj.push(zm9);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item747loopstatus_iopc1_loop_1_39_2_s"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item748loopstatus_iopc1_loop_1_39_3_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item751loopstatus_iopc1_loop_1_39_6_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item764loopstatus_iopc1_loop_1_41_5_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item749loopstatus_iopc1_loop_1_39_4_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item750loopstatus_iopc1_loop_1_39_5_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item755loopstatus_iopc1_loop_1_40_2_s"].htmlobj.push(zm16);
var zm17=new swimgObj('zm17','images/light_on.png','images/light_off.png');
db["item746loopstatus_iopc1_loop_1_39_1_s"].htmlobj.push(zm17);
var zm18=new swimgObj('zm18','images/light_on.png','images/light_off.png');
db["item753loopstatus_iopc1_loop_1_39_8_s"].htmlobj.push(zm18);
var zm19=new swimgObj('zm19','images/light_on.png','images/light_off.png');
db["item756loopstatus_iopc1_loop_1_40_3_s"].htmlobj.push(zm19);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/主楼14F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼14F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/14F.jpg" />
<img id="door6" style="position:absolute;border:0px;left:488px;top:400px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door6_js();"/>
<img id="door7" style="position:absolute;border:0px;left:544px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door7_js();"/>
<img id="door8" style="position:absolute;border:0px;left:640px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:560px;top:360px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:640px;top:360px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:688px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:768px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:832px;top:410px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door14" style="position:absolute;border:0px;left:920px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:992px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door16" style="position:absolute;border:0px;left:1064px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door17" style="position:absolute;border:0px;left:1112px;top:360px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door17_js();"/>
<img id="door18" style="position:absolute;border:0px;left:1192px;top:360px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="door19" style="position:absolute;border:0px;left:1104px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door19_js();"/>
<img id="door20" style="position:absolute;border:0px;left:1208px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door20_js();"/>
<img id="door21" style="position:absolute;border:0px;left:1260px;top:402px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door21_js();"/>
<img id="door22" style="position:absolute;border:0px;left:272px;top:504px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door22_js();"/>
<img id="door23" style="position:absolute;border:0px;left:272px;top:568px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door23_js();"/>
<img id="door24" style="position:absolute;border:0px;left:432px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door24_js();"/>
<img id="door25" style="position:absolute;border:0px;left:584px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door25_js();"/>
<img id="door26" style="position:absolute;border:0px;left:576px;top:736px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door26_js();"/>
<img id="door27" style="position:absolute;border:0px;left:744px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door27_js();"/>
<img id="door28" style="position:absolute;border:0px;left:824px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door28_js();"/>
<img id="door29" style="position:absolute;border:0px;left:904px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door29_js();"/>
<img id="door30" style="position:absolute;border:0px;left:998px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door30_js();"/>
<img id="door31" style="position:absolute;border:0px;left:1088px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door31_js();"/>
<img id="door32" style="position:absolute;border:0px;left:1168px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door32_js();"/>
<img id="door33" style="position:absolute;border:0px;left:1254px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door33_js();"/>
<img id="door34" style="position:absolute;border:0px;left:1338px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door34_js();"/>
<img id="door35" style="position:absolute;border:0px;left:1407px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door35_js();"/>
<img id="door36" style="position:absolute;border:0px;left:1518px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door36_js();"/>
<img id="j1" style="position:absolute;border:0px;left:1376px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j1_js();"/>
<img id="d1" style="position:absolute;border:0px;left:1456px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d1_js();"/>
<img id="m1" style="position:absolute;border:0px;left:1304px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m1_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:232px;top:696px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="1-39-7"/>
<img id="zm2" style="position:absolute;border:0px;left:352px;top:616px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="1-40-4"/>
<img id="zm3" style="position:absolute;border:0px;left:648px;top:616px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="1-40-6"/>
<img id="zm4" style="position:absolute;border:0px;left:1232px;top:616px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="1-40-5"/>
<img id="zm5" style="position:absolute;border:0px;left:424px;top:400px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="1-41-2"/>
<img id="zm6" style="position:absolute;border:0px;left:352px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="1-41-6"/>
<img id="zm7" style="position:absolute;border:0px;left:600px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="1-41-1"/>
<img id="zm8" style="position:absolute;border:0px;left:1040px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="1-41-2"/>
<img id="zm9" style="position:absolute;border:0px;left:1176px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="1-42-3"/>
<img id="zm10" style="position:absolute;border:0px;left:872px;top:496px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="1-39-2"/>
<img id="zm11" style="position:absolute;border:0px;left:872px;top:536px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="1-39-3"/>
<img id="zm12" style="position:absolute;border:0px;left:872px;top:584px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="1-39-6"/>
<img id="zm13" style="position:absolute;border:0px;left:1360px;top:424px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="1-41-5"/>
<img id="zm14" style="position:absolute;border:0px;left:1464px;top:440px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="1-39-4"/>
<img id="zm15" style="position:absolute;border:0px;left:1456px;top:504px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="1-39-5"/>
<img id="zm16" style="position:absolute;border:0px;left:1464px;top:552px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="1-40-2"/>
<img id="zm17" style="position:absolute;border:0px;left:1456px;top:648px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm17_js();" title="1-39-1"/>
<img id="zm18" style="position:absolute;border:0px;left:1576px;top:504px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm18_js();" title="1-39-8"/>
<img id="zm19" style="position:absolute;border:0px;left:1584px;top:552px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm19_js();" title="1-40-3"/>
<img id="jk2" style="position:absolute;border:0px;left:896px;top:560px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:808px;top:616px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:952px;top:616px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:1528px;top:608px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:1464px;top:576px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:1432px;top:512px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:1496px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:1352px;top:400px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:824px;top:456px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:928px;top:456px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:320px;top:456px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:240px;top:632px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:224px;top:728px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="jk15" style="position:absolute;border:0px;left:336px;top:568px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk15_js();"/>

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
