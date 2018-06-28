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
<title>主楼12F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 50;
db["door/12f弱电井#1/1204小会议室_onoff"]={tagname:"door/12f弱电井#1/1204小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#1/1206_onoff"]={tagname:"door/12f弱电井#1/1206_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#1/1208_onoff"]={tagname:"door/12f弱电井#1/1208_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1214_onoff"]={tagname:"door/12f弱电井#2/1214_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1216_onoff"]={tagname:"door/12f弱电井#2/1216_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1218小会议室_onoff"]={tagname:"door/12f弱电井#2/1218小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1220西门_onoff"]={tagname:"door/12f弱电井#2/1220西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1220东门_onoff"]={tagname:"door/12f弱电井#2/1220东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1222_onoff"]={tagname:"door/12f弱电井#2/1222_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1224_onoff"]={tagname:"door/12f弱电井#2/1224_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1226小会议室_onoff"]={tagname:"door/12f弱电井#2/1226小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1234_onoff"]={tagname:"door/12f弱电井#2/1234_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#1/1202北门会议室_onoff"]={tagname:"door/12f弱电井#1/1202北门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#1/1202南门会议室_onoff"]={tagname:"door/12f弱电井#1/1202南门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1228_onoff"]={tagname:"door/12f弱电井#2/1228_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1230_onoff"]={tagname:"door/12f弱电井#2/1230_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1232_onoff"]={tagname:"door/12f弱电井#2/1232_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#1/1201小会议室_onoff"]={tagname:"door/12f弱电井#1/1201小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#1/1203_onoff"]={tagname:"door/12f弱电井#1/1203_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#1/1205_onoff"]={tagname:"door/12f弱电井#1/1205_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#1/1211_onoff"]={tagname:"door/12f弱电井#1/1211_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#1/1213_onoff"]={tagname:"door/12f弱电井#1/1213_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1225东门_onoff"]={tagname:"door/12f弱电井#2/1225东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#1/1215_onoff"]={tagname:"door/12f弱电井#1/1215_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#1/1219西门_onoff"]={tagname:"door/12f弱电井#1/1219西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#1/1219东门_onoff"]={tagname:"door/12f弱电井#1/1219东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1221西门_onoff"]={tagname:"door/12f弱电井#2/1221西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1221东门_onoff"]={tagname:"door/12f弱电井#2/1221东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1223西门_onoff"]={tagname:"door/12f弱电井#2/1223西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1223东门_onoff"]={tagname:"door/12f弱电井#2/1223东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#1/1217西门_onoff"]={tagname:"door/12f弱电井#1/1217西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#1/1217东门_onoff"]={tagname:"door/12f弱电井#1/1217东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/12f弱电井#2/1225西门_onoff"]={tagname:"door/12f弱电井#2/1225西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item811loopstatus_iopc1_loop_1_49_6_s"]={tagname:"item811loopstatus_iopc1_loop_1_49_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item809loopstatus_iopc1_loop_1_49_4_s"]={tagname:"item809loopstatus_iopc1_loop_1_49_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item801loopstatus_iopc1_loop_1_48_4_s"]={tagname:"item801loopstatus_iopc1_loop_1_48_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item800loopstatus_iopc1_loop_1_48_3_s"]={tagname:"item800loopstatus_iopc1_loop_1_48_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item799loopstatus_iopc1_loop_1_48_2_s"]={tagname:"item799loopstatus_iopc1_loop_1_48_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1287loopstatus_iopc1_loop_4_31_8_s"]={tagname:"item1287loopstatus_iopc1_loop_4_31_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item798loopstatus_iopc1_loop_1_48_1_s"]={tagname:"item798loopstatus_iopc1_loop_1_48_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item814loopstatus_iopc1_loop_1_50_1_s"]={tagname:"item814loopstatus_iopc1_loop_1_50_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item815loopstatus_iopc1_loop_1_50_2_s"]={tagname:"item815loopstatus_iopc1_loop_1_50_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item819loopstatus_iopc1_loop_1_50_6_s"]={tagname:"item819loopstatus_iopc1_loop_1_50_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item821loopstatus_iopc1_loop_1_51_2_s"]={tagname:"item821loopstatus_iopc1_loop_1_51_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item822loopstatus_iopc1_loop_1_51_3_s"]={tagname:"item822loopstatus_iopc1_loop_1_51_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item817loopstatus_iopc1_loop_1_50_4_s"]={tagname:"item817loopstatus_iopc1_loop_1_50_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item818loopstatus_iopc1_loop_1_50_5_s"]={tagname:"item818loopstatus_iopc1_loop_1_50_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item823loopstatus_iopc1_loop_1_51_4_s"]={tagname:"item823loopstatus_iopc1_loop_1_51_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item806loopstatus_iopc1_loop_1_49_1_s"]={tagname:"item806loopstatus_iopc1_loop_1_49_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item802loopstatus_iopc1_loop_1_48_5_s"]={tagname:"item802loopstatus_iopc1_loop_1_48_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
function door4_js(){
writetag("Door/12F弱电井#1/1204小会议室","");
}
function door5_js(){
writetag("Door/12F弱电井#1/1206","");
}
function door6_js(){
writetag("Door/12F弱电井#1/1208","");
}
function door9_js(){
writetag("Door/12F弱电井#2/1214","");
}
function door10_js(){
writetag("Door/12F弱电井#2/1216","");
}
function door11_js(){
writetag("Door/12F弱电井#2/1218小会议室","");
}
function door12_js(){
writetag("Door/12F弱电井#2/1220西门","");
}
function door13_js(){
writetag("Door/12F弱电井#2/1220东门","");
}
function door14_js(){
writetag("Door/12F弱电井#2/1222","");
}
function door15_js(){
writetag("Door/12F弱电井#2/1224","");
}
function door16_js(){
writetag("Door/12F弱电井#2/1226小会议室","");
}
function door17_js(){
writetag("Door/12F弱电井#2/1234","");
}
function door18_js(){
writetag("Door/12F弱电井#1/1202北门会议室","");
}
function door19_js(){
writetag("Door/12F弱电井#1/1202南门会议室","");
}
function door20_js(){
writetag("Door/12F弱电井#2/1228","");
}
function door21_js(){
writetag("Door/12F弱电井#2/1230","");
}
function door22_js(){
writetag("Door/12F弱电井#2/1232","");
}
function door23_js(){
writetag("Door/12F弱电井#1/1201小会议室","");
}
function door24_js(){
writetag("Door/12F弱电井#1/1203","");
}
function door25_js(){
writetag("Door/12F弱电井#1/1203","");
}
function door26_js(){
writetag("Door/12F弱电井#1/1211","");
}
function door27_js(){
writetag("Door/12F弱电井#1/1213","");
}
function door35_js(){
writetag("Door/12F弱电井#2/1225东门","");
}
function door28_js(){
writetag("user.Door/12F弱电井#1/1215_OnOff","");
}
function door29_js(){
writetag("Door/12F弱电井#1/1219西门","");
}
function door30_js(){
writetag("Door/12F弱电井#1/1219东门","");
}
function door31_js(){
writetag("Door/12F弱电井#2/1221西门","");
}
function door32_js(){
writetag("Door/12F弱电井#2/1221东门","");
}
function door33_js(){
writetag("Door/12F弱电井#2/1223西门","");
}
function door34_js(){
writetag("Door/12F弱电井#2/1223东门","");
}
function door36_js(){
writetag("Door/12F弱电井#1/1217西门","");
}
function door37_js(){
writetag("Door/12F弱电井#1/1217东门","");
}
function door38_js(){
writetag("Door/12F弱电井#2/1225西门","");
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
writetag("ITEM117LoopControl_IOPC1_LOOP_1_49_6_C","");
}
function zm2_js(){
writetag("ITEM115LoopControl_IOPC1_LOOP_1_49_4_C","");
}
function zm3_js(){
writetag("ITEM107LoopControl_IOPC1_LOOP_1_48_4_C","");
}
function zm4_js(){
writetag("ITEM106LoopControl_IOPC1_LOOP_1_48_3_C","");
}
function zm5_js(){
writetag("ITEM105LoopControl_IOPC1_LOOP_1_48_2_C","");
}
function zm6_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm7_js(){
writetag("ITEM104LoopControl_IOPC1_LOOP_1_48_1_C","");
}
function zm8_js(){
writetag("ITEM120LoopControl_IOPC1_LOOP_1_50_1_C","");
}
function zm9_js(){
writetag("ITEM121LoopControl_IOPC1_LOOP_1_50_2_C","");
}
function zm10_js(){
writetag("ITEM125LoopControl_IOPC1_LOOP_1_50_6_C","");
}
function zm11_js(){
writetag("ITEM127LoopControl_IOPC1_LOOP_1_51_2_C","");
}
function zm12_js(){
writetag("ITEM128LoopControl_IOPC1_LOOP_1_51_3_C","");
}
function zm13_js(){
writetag("ITEM125LoopControl_IOPC1_LOOP_1_50_6_C","");
}
function zm14_js(){
writetag("ITEM123LoopControl_IOPC1_LOOP_1_50_4_C","");
}
function zm15_js(){
writetag("ITEM124LoopControl_IOPC1_LOOP_1_50_5_C","");
}
function zm16_js(){
writetag("ITEM129LoopControl_IOPC1_LOOP_1_51_4_C","");
}
function zm17_js(){
writetag("ITEM112LoopControl_IOPC1_LOOP_1_49_1_C","");
}
function zm18_js(){
writetag("ITEM108LoopControl_IOPC1_LOOP_1_48_5_C","");
}
function jk2_js(){
open_video2("192.168.3.174");
}
function jk3_js(){
open_video2("192.168.3.172");
}
function jk4_js(){
open_video2("192.168.3.173");
}
function jk5_js(){
open_video2("192.168.3.179");
}
function jk6_js(){
open_video2("192.168.3.181");
}
function jk7_js(){
open_video2("192.168.3.180");
}
function jk8_js(){
open_video2("192.168.3.178");
}
function jk9_js(){
open_video2("192.168.3.175");
}
function jk10_js(){
open_video2("192.168.3.176");
}
function jk11_js(){
open_video2("192.168.3.177");
}
function jk12_js(){
open_video2("192.168.3.169");
}
function jk13_js(){
open_video2("192.168.3.170");
}
function jk14_js(){
open_video2("192.168.3.171");
}
function jk15_js(){
open_video2("192.168.3.182");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door4=new swimgObj('door4','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#1/1204小会议室_onoff"].htmlobj.push(door4);
var door5=new swimgObj('door5','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#1/1206_onoff"].htmlobj.push(door5);
var door6=new swimgObj('door6','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#1/1208_onoff"].htmlobj.push(door6);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1214_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1216_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1218小会议室_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1220西门_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1220东门_onoff"].htmlobj.push(door13);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1222_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1224_onoff"].htmlobj.push(door15);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1226小会议室_onoff"].htmlobj.push(door16);
var door17=new swimgObj('door17','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1234_onoff"].htmlobj.push(door17);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#1/1202北门会议室_onoff"].htmlobj.push(door18);
var door19=new swimgObj('door19','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#1/1202南门会议室_onoff"].htmlobj.push(door19);
var door20=new swimgObj('door20','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1228_onoff"].htmlobj.push(door20);
var door21=new swimgObj('door21','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1230_onoff"].htmlobj.push(door21);
var door22=new swimgObj('door22','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1232_onoff"].htmlobj.push(door22);
var door23=new swimgObj('door23','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#1/1201小会议室_onoff"].htmlobj.push(door23);
var door24=new swimgObj('door24','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#1/1203_onoff"].htmlobj.push(door24);
var door25=new swimgObj('door25','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#1/1205_onoff"].htmlobj.push(door25);
var door26=new swimgObj('door26','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#1/1211_onoff"].htmlobj.push(door26);
var door27=new swimgObj('door27','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#1/1213_onoff"].htmlobj.push(door27);
var door35=new swimgObj('door35','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1225东门_onoff"].htmlobj.push(door35);
var door28=new swimgObj('door28','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#1/1215_onoff"].htmlobj.push(door28);
var door29=new swimgObj('door29','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#1/1219西门_onoff"].htmlobj.push(door29);
var door30=new swimgObj('door30','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#1/1219东门_onoff"].htmlobj.push(door30);
var door31=new swimgObj('door31','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1221西门_onoff"].htmlobj.push(door31);
var door32=new swimgObj('door32','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1221东门_onoff"].htmlobj.push(door32);
var door33=new swimgObj('door33','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1223西门_onoff"].htmlobj.push(door33);
var door34=new swimgObj('door34','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1223东门_onoff"].htmlobj.push(door34);
var door36=new swimgObj('door36','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#1/1217西门_onoff"].htmlobj.push(door36);
var door37=new swimgObj('door37','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#1/1217东门_onoff"].htmlobj.push(door37);
var door38=new swimgObj('door38','images/door_km.gif','images/door_close.gif');
db["door/12f弱电井#2/1225西门_onoff"].htmlobj.push(door38);
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item811loopstatus_iopc1_loop_1_49_6_s"].htmlobj.push(zm1);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item809loopstatus_iopc1_loop_1_49_4_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item801loopstatus_iopc1_loop_1_48_4_s"].htmlobj.push(zm3);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item800loopstatus_iopc1_loop_1_48_3_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item799loopstatus_iopc1_loop_1_48_2_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item798loopstatus_iopc1_loop_1_48_1_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item814loopstatus_iopc1_loop_1_50_1_s"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item815loopstatus_iopc1_loop_1_50_2_s"].htmlobj.push(zm9);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item819loopstatus_iopc1_loop_1_50_6_s"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item821loopstatus_iopc1_loop_1_51_2_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item822loopstatus_iopc1_loop_1_51_3_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item819loopstatus_iopc1_loop_1_50_6_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item817loopstatus_iopc1_loop_1_50_4_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item818loopstatus_iopc1_loop_1_50_5_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item823loopstatus_iopc1_loop_1_51_4_s"].htmlobj.push(zm16);
var zm17=new swimgObj('zm17','images/light_on.png','images/light_off.png');
db["item806loopstatus_iopc1_loop_1_49_1_s"].htmlobj.push(zm17);
var zm18=new swimgObj('zm18','images/light_on.png','images/light_off.png');
db["item802loopstatus_iopc1_loop_1_48_5_s"].htmlobj.push(zm18);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/主楼12F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼12F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/12F.jpg" />
<img id="door4" style="position:absolute;border:0px;left:596px;top:451px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door4_js();"/>
<img id="door5" style="position:absolute;border:0px;left:604px;top:379px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door5_js();"/>
<img id="door6" style="position:absolute;border:0px;left:648px;top:379px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door6_js();"/>
<img id="door9" style="position:absolute;border:0px;left:702px;top:379px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:780px;top:379px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:780px;top:445px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:831px;top:419px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:903px;top:419px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door14" style="position:absolute;border:0px;left:975px;top:419px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:1055px;top:419px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door16" style="position:absolute;border:0px;left:1111px;top:419px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door17" style="position:absolute;border:0px;left:1256px;top:430px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door17_js();"/>
<img id="door18" style="position:absolute;border:0px;left:304px;top:509px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="door19" style="position:absolute;border:0px;left:296px;top:565px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door19_js();"/>
<img id="door20" style="position:absolute;border:0px;left:1115px;top:376px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door20_js();"/>
<img id="door21" style="position:absolute;border:0px;left:1187px;top:376px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door21_js();"/>
<img id="door22" style="position:absolute;border:0px;left:1252px;top:376px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door22_js();"/>
<img id="door23" style="position:absolute;border:0px;left:376px;top:627px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door23_js();"/>
<img id="door24" style="position:absolute;border:0px;left:360px;top:715px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door24_js();"/>
<img id="door25" style="position:absolute;border:0px;left:448px;top:715px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door25_js();"/>
<img id="door26" style="position:absolute;border:0px;left:536px;top:717px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door26_js();"/>
<img id="door27" style="position:absolute;border:0px;left:596px;top:717px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door27_js();"/>
<img id="door35" style="position:absolute;border:0px;left:1375px;top:649px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door35_js();"/>
<img id="door28" style="position:absolute;border:0px;left:628px;top:635px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door28_js();"/>
<img id="door29" style="position:absolute;border:0px;left:824px;top:651px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door29_js();"/>
<img id="door30" style="position:absolute;border:0px;left:917px;top:651px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door30_js();"/>
<img id="door31" style="position:absolute;border:0px;left:974px;top:651px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door31_js();"/>
<img id="door32" style="position:absolute;border:0px;left:1080px;top:651px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door32_js();"/>
<img id="door33" style="position:absolute;border:0px;left:1133px;top:651px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door33_js();"/>
<img id="door34" style="position:absolute;border:0px;left:1234px;top:651px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door34_js();"/>
<img id="door36" style="position:absolute;border:0px;left:672px;top:651px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door36_js();"/>
<img id="door37" style="position:absolute;border:0px;left:765px;top:652px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door37_js();"/>
<img id="door38" style="position:absolute;border:0px;left:1284px;top:650px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door38_js();"/>
<img id="j1" style="position:absolute;border:0px;left:1320px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j1_js();"/>
<img id="d1" style="position:absolute;border:0px;left:1400px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d1_js();"/>
<img id="m1" style="position:absolute;border:0px;left:1248px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m1_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:264px;top:680px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="1-49-6"/>
<img id="zm2" style="position:absolute;border:0px;left:256px;top:704px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="1-49-4"/>
<img id="zm3" style="position:absolute;border:0px;left:280px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="1-48-4"/>
<img id="zm4" style="position:absolute;border:0px;left:1304px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="1-48-3"/>
<img id="zm5" style="position:absolute;border:0px;left:584px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="1-48-2"/>
<img id="zm6" style="position:absolute;border:0px;left:1152px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="1-49-2"/>
<img id="zm7" style="position:absolute;border:0px;left:880px;top:600px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="1-48-1"/>
<img id="zm8" style="position:absolute;border:0px;left:448px;top:416px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="1-50-1"/>
<img id="zm9" style="position:absolute;border:0px;left:320px;top:456px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="1-50-2"/>
<img id="zm10" style="position:absolute;border:0px;left:360px;top:512px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="1-50-6"/>
<img id="zm11" style="position:absolute;border:0px;left:440px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="1-51-2"/>
<img id="zm12" style="position:absolute;border:0px;left:544px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="1-51-3"/>
<img id="zm13" style="position:absolute;border:0px;left:712px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="1-50-6"/>
<img id="zm14" style="position:absolute;border:0px;left:1104px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="1-50-4"/>
<img id="zm15" style="position:absolute;border:0px;left:1344px;top:416px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="1-50-5"/>
<img id="zm16" style="position:absolute;border:0px;left:1400px;top:432px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="1-51-4"/>
<img id="zm17" style="position:absolute;border:0px;left:1440px;top:456px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm17_js();" title="1-49-1"/>
<img id="zm18" style="position:absolute;border:0px;left:1416px;top:528px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm18_js();" title="1-48-5"/>
<img id="jk2" style="position:absolute;border:0px;left:880px;top:560px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:808px;top:600px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:952px;top:600px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:1504px;top:600px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:1456px;top:568px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:1446px;top:516px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:1464px;top:487px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:816px;top:472px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:944px;top:472px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:1328px;top:432px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:344px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:256px;top:624px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:232px;top:712px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="jk15" style="position:absolute;border:0px;left:352px;top:560px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk15_js();"/>

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
