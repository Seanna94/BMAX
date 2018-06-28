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
<title>主楼11F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 49;
db["door/11f弱电井#1/1104小会议室_onoff"]={tagname:"door/11f弱电井#1/1104小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#1/1106小会议室_onoff"]={tagname:"door/11f弱电井#1/1106小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#1/1108_onoff"]={tagname:"door/11f弱电井#1/1108_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#2/1120西门_onoff"]={tagname:"door/11f弱电井#2/1120西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#2/1120东门_onoff"]={tagname:"door/11f弱电井#2/1120东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#2/1122西门_onoff"]={tagname:"door/11f弱电井#2/1122西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#2/1022东门_onoff"]={tagname:"door/10f弱电井#2/1022东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#2/1124西门_onoff"]={tagname:"door/11f弱电井#2/1124西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#2/1124东门_onoff"]={tagname:"door/11f弱电井#2/1124东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#1/1102北门会议室_onoff"]={tagname:"door/11f弱电井#1/1102北门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#1/1102南门会议室_onoff"]={tagname:"door/11f弱电井#1/1102南门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#1/1101_onoff"]={tagname:"door/11f弱电井#1/1101_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#1/1103_onoff"]={tagname:"door/11f弱电井#1/1103_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#1/1105_onoff"]={tagname:"door/11f弱电井#1/1105_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#1/1111_onoff"]={tagname:"door/11f弱电井#1/1111_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#1/1113_onoff"]={tagname:"door/11f弱电井#1/1113_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#2/1125东门_onoff"]={tagname:"door/11f弱电井#2/1125东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#1/1115_onoff"]={tagname:"door/11f弱电井#1/1115_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#1/1119西门_onoff"]={tagname:"door/11f弱电井#1/1119西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#1/1119东门_onoff"]={tagname:"door/11f弱电井#1/1119东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#2/1121西门_onoff"]={tagname:"door/11f弱电井#2/1121西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#2/1121东门_onoff"]={tagname:"door/11f弱电井#2/1121东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#2/1123西门_onoff"]={tagname:"door/11f弱电井#2/1123西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#2/1123东门_onoff"]={tagname:"door/11f弱电井#2/1123东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#1/1117西门_onoff"]={tagname:"door/11f弱电井#1/1117西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#1/1117东门_onoff"]={tagname:"door/11f弱电井#1/1117东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/11f弱电井#2/1125西门_onoff"]={tagname:"door/11f弱电井#2/1125西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item847loopstatus_iopc1_loop_1_55_4_s"]={tagname:"item847loopstatus_iopc1_loop_1_55_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item846loopstatus_iopc1_loop_1_55_3_s"]={tagname:"item846loopstatus_iopc1_loop_1_55_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item830loopstatus_iopc1_loop_1_53_1_s"]={tagname:"item830loopstatus_iopc1_loop_1_53_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item842loopstatus_iopc1_loop_1_54_5_s"]={tagname:"item842loopstatus_iopc1_loop_1_54_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item843loopstatus_iopc1_loop_1_54_6_s"]={tagname:"item843loopstatus_iopc1_loop_1_54_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item841loopstatus_iopc1_loop_1_54_4_s"]={tagname:"item841loopstatus_iopc1_loop_1_54_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item839loopstatus_iopc1_loop_1_54_2_s"]={tagname:"item839loopstatus_iopc1_loop_1_54_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1287loopstatus_iopc1_loop_4_31_8_s"]={tagname:"item1287loopstatus_iopc1_loop_4_31_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item848loopstatus_iopc1_loop_1_55_5_s"]={tagname:"item848loopstatus_iopc1_loop_1_55_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item844loopstatus_iopc1_loop_1_55_1_s"]={tagname:"item844loopstatus_iopc1_loop_1_55_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item826loopstatus_iopc1_loop_1_52_3_s"]={tagname:"item826loopstatus_iopc1_loop_1_52_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item832loopstatus_iopc1_loop_1_53_3_s"]={tagname:"item832loopstatus_iopc1_loop_1_53_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item828loopstatus_iopc1_loop_1_52_5_s"]={tagname:"item828loopstatus_iopc1_loop_1_52_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item829loopstatus_iopc1_loop_1_52_6_s"]={tagname:"item829loopstatus_iopc1_loop_1_52_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item824loopstatus_iopc1_loop_1_52_1_s"]={tagname:"item824loopstatus_iopc1_loop_1_52_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item831loopstatus_iopc1_loop_1_53_2_s"]={tagname:"item831loopstatus_iopc1_loop_1_53_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item850loopstatus_iopc1_loop_1_56_1_s"]={tagname:"item850loopstatus_iopc1_loop_1_56_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item851loopstatus_iopc1_loop_1_56_2_s"]={tagname:"item851loopstatus_iopc1_loop_1_56_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item854loopstatus_iopc1_loop_1_56_5_s"]={tagname:"item854loopstatus_iopc1_loop_1_56_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item855loopstatus_iopc1_loop_1_56_6_s"]={tagname:"item855loopstatus_iopc1_loop_1_56_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item853loopstatus_iopc1_loop_1_56_4_s"]={tagname:"item853loopstatus_iopc1_loop_1_56_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item852loopstatus_iopc1_loop_1_56_3_s"]={tagname:"item852loopstatus_iopc1_loop_1_56_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
function door3_js(){
writetag("Door/11F弱电井#1/1104小会议室","");
}
function door4_js(){
writetag("Door/11F弱电井#1/1106小会议室","");
}
function door5_js(){
writetag("Door/11F弱电井#1/1108","");
}
function door8_js(){
writetag("Door/11F弱电井#1/1104小会议室","");
}
function door9_js(){
writetag("Door/11F弱电井#1/1106小会议室","");
}
function door10_js(){
writetag("Door/11F弱电井#1/1108","");
}
function door11_js(){
writetag("Door/11F弱电井#2/1120西门f","");
}
function door12_js(){
writetag("Door/11F弱电井#2/1120东门","");
}
function door13_js(){
writetag("Door/11F弱电井#2/1122西门","");
}
function door14_js(){
writetag("Door/10F弱电井#2/1022东门","");
}
function door15_js(){
writetag("Door/11F弱电井#2/1124西门","");
}
function door16_js(){
writetag("Door/11F弱电井#2/1124东门","");
}
function door17_js(){
writetag("Door/11F弱电井#1/1102北门会议室","");
}
function door18_js(){
writetag("Door/11F弱电井#1/1102南门会议室","");
}
function door19_js(){
writetag("Door/11F弱电井#1/1101","");
}
function door20_js(){
writetag("Door/11F弱电井#1/1103","");
}
function door21_js(){
writetag("Door/11F弱电井#1/1105","");
}
function door22_js(){
writetag("Door/11F弱电井#1/1111","");
}
function door23_js(){
writetag("Door/11F弱电井#1/1113","");
}
function door34_js(){
writetag("Door/11F弱电井#2/1125东门","");
}
function door24_js(){
writetag("Door/11F弱电井#1/1115","");
}
function door25_js(){
writetag("Door/11F弱电井#1/1119西门","");
}
function door26_js(){
writetag("Door/11F弱电井#1/1119东门","");
}
function door27_js(){
writetag("Door/11F弱电井#2/1121西门","");
}
function door28_js(){
writetag("Door/11F弱电井#2/1121东门","");
}
function door29_js(){
writetag("Door/11F弱电井#2/1123西门","");
}
function door30_js(){
writetag("Door/11F弱电井#2/1123东门","");
}
function door31_js(){
writetag("Door/11F弱电井#1/1117西门","");
}
function door32_js(){
writetag("Door/11F弱电井#1/1117东门","");
}
function door33_js(){
writetag("Door/11F弱电井#2/1125西门","");
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
writetag("ITEM153LoopControl_IOPC1_LOOP_1_55_4_C","");
}
function zm2_js(){
writetag("ITEM152LoopControl_IOPC1_LOOP_1_55_3_C","");
}
function zm3_js(){
writetag("ITEM136LoopControl_IOPC1_LOOP_1_53_1_C","");
}
function zm4_js(){
writetag("ITEM148LoopControl_IOPC1_LOOP_1_54_5_C","");
}
function zm5_js(){
writetag("ITEM149LoopControl_IOPC1_LOOP_1_54_6_C","");
}
function zm6_js(){
writetag("ITEM147LoopControl_IOPC1_LOOP_1_54_4_C","");
}
function zm7_js(){
writetag("ITEM145LoopControl_IOPC1_LOOP_1_54_2_C","");
}
function zm8_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm10_js(){
writetag("ITEM154LoopControl_IOPC1_LOOP_1_55_5_C","");
}
function zm11_js(){
writetag("ITEM150LoopControl_IOPC1_LOOP_1_55_1_C","");
}
function zm12_js(){
writetag("ITEM132LoopControl_IOPC1_LOOP_1_52_3_C","");
}
function zm13_js(){
writetag("ITEM138LoopControl_IOPC1_LOOP_1_53_3_C","");
}
function zm14_js(){
writetag("ITEM134LoopControl_IOPC1_LOOP_1_52_5_C","");
}
function zm15_js(){
writetag("ITEM135LoopControl_IOPC1_LOOP_1_52_6_C","");
}
function zm16_js(){
writetag("ITEM130LoopControl_IOPC1_LOOP_1_52_1_C","");
}
function zm17_js(){
writetag("ITEM137LoopControl_IOPC1_LOOP_1_53_2_C","");
}
function zm18_js(){
writetag("ITEM156LoopControl_IOPC1_LOOP_1_56_1_C","");
}
function zm19_js(){
writetag("ITEM157LoopControl_IOPC1_LOOP_1_56_2_C","");
}
function zm20_js(){
writetag("ITEM160LoopControl_IOPC1_LOOP_1_56_5_C","");
}
function zm21_js(){
writetag("ITEM161LoopControl_IOPC1_LOOP_1_56_6_C","");
}
function zm22_js(){
writetag("ITEM159LoopControl_IOPC1_LOOP_1_56_4_C","");
}
function zm23_js(){
writetag("ITEM158LoopControl_IOPC1_LOOP_1_56_3_C","");
}
function jk2_js(){
open_video2("192.168.3.161");
}
function jk3_js(){
open_video2("192.168.3.159");
}
function jk4_js(){
open_video2("192.168.3.160");
}
function jk5_js(){
open_video2("192.168.3.166");
}
function jk6_js(){
open_video2("192.168.3.167");
}
function jk7_js(){
open_video2("192.168.3.164");
}
function jk8_js(){
open_video2("192.168.3.165");
}
function jk9_js(){
open_video2("192.168.3.162");
}
function jk10_js(){
open_video2("192.168.3.163");
}
function jk11_js(){
open_video2("192.168.3.156");
}
function jk12_js(){
open_video2("192.168.3.157");
}
function jk13_js(){
open_video2("192.168.3.158");
}
function jk14_js(){
open_video2("192.168.3.168");
}
function zm24_js(){
writetag("ITEM154LoopControl_IOPC1_LOOP_1_55_5_C","");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door3=new swimgObj('door3','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1104小会议室_onoff"].htmlobj.push(door3);
var door4=new swimgObj('door4','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1106小会议室_onoff"].htmlobj.push(door4);
var door5=new swimgObj('door5','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1108_onoff"].htmlobj.push(door5);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1104小会议室_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1106小会议室_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1108_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#2/1120西门_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#2/1120东门_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#2/1122西门_onoff"].htmlobj.push(door13);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#2/1022东门_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#2/1124西门_onoff"].htmlobj.push(door15);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#2/1124东门_onoff"].htmlobj.push(door16);
var door17=new swimgObj('door17','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1102北门会议室_onoff"].htmlobj.push(door17);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1102南门会议室_onoff"].htmlobj.push(door18);
var door19=new swimgObj('door19','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1101_onoff"].htmlobj.push(door19);
var door20=new swimgObj('door20','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1103_onoff"].htmlobj.push(door20);
var door21=new swimgObj('door21','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1105_onoff"].htmlobj.push(door21);
var door22=new swimgObj('door22','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1111_onoff"].htmlobj.push(door22);
var door23=new swimgObj('door23','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1113_onoff"].htmlobj.push(door23);
var door34=new swimgObj('door34','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#2/1125东门_onoff"].htmlobj.push(door34);
var door24=new swimgObj('door24','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1115_onoff"].htmlobj.push(door24);
var door25=new swimgObj('door25','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1119西门_onoff"].htmlobj.push(door25);
var door26=new swimgObj('door26','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1119东门_onoff"].htmlobj.push(door26);
var door27=new swimgObj('door27','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#2/1121西门_onoff"].htmlobj.push(door27);
var door28=new swimgObj('door28','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#2/1121东门_onoff"].htmlobj.push(door28);
var door29=new swimgObj('door29','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#2/1123西门_onoff"].htmlobj.push(door29);
var door30=new swimgObj('door30','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#2/1123东门_onoff"].htmlobj.push(door30);
var door31=new swimgObj('door31','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1117西门_onoff"].htmlobj.push(door31);
var door32=new swimgObj('door32','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#1/1117东门_onoff"].htmlobj.push(door32);
var door33=new swimgObj('door33','images/door_km.gif','images/door_close.gif');
db["door/11f弱电井#2/1125西门_onoff"].htmlobj.push(door33);
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item847loopstatus_iopc1_loop_1_55_4_s"].htmlobj.push(zm1);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item846loopstatus_iopc1_loop_1_55_3_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item830loopstatus_iopc1_loop_1_53_1_s"].htmlobj.push(zm3);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item842loopstatus_iopc1_loop_1_54_5_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item843loopstatus_iopc1_loop_1_54_6_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item841loopstatus_iopc1_loop_1_54_4_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item839loopstatus_iopc1_loop_1_54_2_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm8);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item848loopstatus_iopc1_loop_1_55_5_s"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item844loopstatus_iopc1_loop_1_55_1_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item826loopstatus_iopc1_loop_1_52_3_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item832loopstatus_iopc1_loop_1_53_3_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item828loopstatus_iopc1_loop_1_52_5_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item829loopstatus_iopc1_loop_1_52_6_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item824loopstatus_iopc1_loop_1_52_1_s"].htmlobj.push(zm16);
var zm17=new swimgObj('zm17','images/light_on.png','images/light_off.png');
db["item831loopstatus_iopc1_loop_1_53_2_s"].htmlobj.push(zm17);
var zm18=new swimgObj('zm18','images/light_on.png','images/light_off.png');
db["item850loopstatus_iopc1_loop_1_56_1_s"].htmlobj.push(zm18);
var zm19=new swimgObj('zm19','images/light_on.png','images/light_off.png');
db["item851loopstatus_iopc1_loop_1_56_2_s"].htmlobj.push(zm19);
var zm20=new swimgObj('zm20','images/light_on.png','images/light_off.png');
db["item854loopstatus_iopc1_loop_1_56_5_s"].htmlobj.push(zm20);
var zm21=new swimgObj('zm21','images/light_on.png','images/light_off.png');
db["item855loopstatus_iopc1_loop_1_56_6_s"].htmlobj.push(zm21);
var zm22=new swimgObj('zm22','images/light_on.png','images/light_off.png');
db["item853loopstatus_iopc1_loop_1_56_4_s"].htmlobj.push(zm22);
var zm23=new swimgObj('zm23','images/light_on.png','images/light_off.png');
db["item852loopstatus_iopc1_loop_1_56_3_s"].htmlobj.push(zm23);
var zm24=new swimgObj('zm24','images/light_on.png','images/light_off.png');
db["item848loopstatus_iopc1_loop_1_55_5_s"].htmlobj.push(zm24);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/主楼11F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼11F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/11F.jpg" />
<img id="door3" style="position:absolute;border:0px;left:604px;top:454px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door3_js();"/>
<img id="door4" style="position:absolute;border:0px;left:612px;top:382px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door4_js();"/>
<img id="door5" style="position:absolute;border:0px;left:652px;top:382px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door5_js();"/>
<img id="door8" style="position:absolute;border:0px;left:708px;top:382px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:780px;top:382px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:780px;top:453px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:828px;top:422px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:908px;top:422px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:980px;top:422px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door14" style="position:absolute;border:0px;left:1060px;top:422px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:1124px;top:422px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door16" style="position:absolute;border:0px;left:1236px;top:422px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door17" style="position:absolute;border:0px;left:304px;top:504px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door17_js();"/>
<img id="door18" style="position:absolute;border:0px;left:296px;top:560px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="door19" style="position:absolute;border:0px;left:368px;top:640px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door19_js();"/>
<img id="door20" style="position:absolute;border:0px;left:352px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door20_js();"/>
<img id="door21" style="position:absolute;border:0px;left:440px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door21_js();"/>
<img id="door22" style="position:absolute;border:0px;left:528px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door22_js();"/>
<img id="door23" style="position:absolute;border:0px;left:592px;top:723px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door23_js();"/>
<img id="door34" style="position:absolute;border:0px;left:1382px;top:642px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door34_js();"/>
<img id="door24" style="position:absolute;border:0px;left:624px;top:640px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door24_js();"/>
<img id="door25" style="position:absolute;border:0px;left:824px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door25_js();"/>
<img id="door26" style="position:absolute;border:0px;left:914px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door26_js();"/>
<img id="door27" style="position:absolute;border:0px;left:976px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door27_js();"/>
<img id="door28" style="position:absolute;border:0px;left:1079px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door28_js();"/>
<img id="door29" style="position:absolute;border:0px;left:1130px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door29_js();"/>
<img id="door30" style="position:absolute;border:0px;left:1228px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door30_js();"/>
<img id="door31" style="position:absolute;border:0px;left:672px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door31_js();"/>
<img id="door32" style="position:absolute;border:0px;left:765px;top:649px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door32_js();"/>
<img id="door33" style="position:absolute;border:0px;left:1282px;top:647px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door33_js();"/>
<img id="j1" style="position:absolute;border:0px;left:1432px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j1_js();"/>
<img id="d1" style="position:absolute;border:0px;left:1512px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d1_js();"/>
<img id="m1" style="position:absolute;border:0px;left:1360px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m1_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:256px;top:672px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="1-55-4"/>
<img id="zm2" style="position:absolute;border:0px;left:250px;top:706px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="1-55-3"/>
<img id="zm3" style="position:absolute;border:0px;left:376px;top:488px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="1-53-1"/>
<img id="zm4" style="position:absolute;border:0px;left:280px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="1-54-5"/>
<img id="zm5" style="position:absolute;border:0px;left:424px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="1-54-6"/>
<img id="zm6" style="position:absolute;border:0px;left:592px;top:607px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="1-54-4"/>
<img id="zm7" style="position:absolute;border:0px;left:880px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="1-54-2"/>
<img id="zm8" style="position:absolute;border:0px;left:1064px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="1-54-1"/>
<img id="zm10" style="position:absolute;border:0px;left:1496px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="1-55-5"/>
<img id="zm11" style="position:absolute;border:0px;left:1408px;top:536px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="1-55-1"/>
<img id="zm12" style="position:absolute;border:0px;left:1352px;top:432px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="1-52-3"/>
<img id="zm13" style="position:absolute;border:0px;left:432px;top:424px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="1-53-3"/>
<img id="zm14" style="position:absolute;border:0px;left:328px;top:456px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="1-52-5"/>
<img id="zm15" style="position:absolute;border:0px;left:480px;top:480px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="1-52-6"/>
<img id="zm16" style="position:absolute;border:0px;left:672px;top:474px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="1-52-1"/>
<img id="zm17" style="position:absolute;border:0px;left:1048px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm17_js();" title="1-53-2"/>
<img id="zm18" style="position:absolute;border:0px;left:856px;top:528px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm18_js();" title="1-56-1"/>
<img id="zm19" style="position:absolute;border:0px;left:912px;top:528px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm19_js();" title="1-56-2"/>
<img id="zm20" style="position:absolute;border:0px;left:1520px;top:520px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm20_js();" title="1-56-5"/>
<img id="zm21" style="position:absolute;border:0px;left:1592px;top:514px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm21_js();" title="1-56-6"/>
<img id="zm22" style="position:absolute;border:0px;left:1528px;top:568px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm22_js();" title="1-56-4"/>
<img id="zm23" style="position:absolute;border:0px;left:1592px;top:560px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm23_js();" title="1-56-3"/>
<img id="jk2" style="position:absolute;border:0px;left:896px;top:584px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:800px;top:608px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:936px;top:608px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:1528px;top:608px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:1416px;top:576px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:1336px;top:408px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:1480px;top:480px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:824px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:928px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:360px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:264px;top:624px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:232px;top:712px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:352px;top:560px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="zm24" style="position:absolute;border:0px;left:1448px;top:640px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm24_js();" title="1-55-5"/>

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
