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
<title>主楼9F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 54;
db["door/9f弱电井#1/904_onoff"]={tagname:"door/9f弱电井#1/904_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#1/906_onoff"]={tagname:"door/9f弱电井#1/906_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#1/908_onoff"]={tagname:"door/9f弱电井#1/908_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#1/914_onoff"]={tagname:"door/9f弱电井#1/914_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#1/916_onoff"]={tagname:"door/9f弱电井#1/916_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#1/918小会议室_onoff"]={tagname:"door/9f弱电井#1/918小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#2/920西门_onoff"]={tagname:"door/9f弱电井#2/920西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#2/920东门_onoff"]={tagname:"door/9f弱电井#2/920东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#2/922西门_onoff"]={tagname:"door/9f弱电井#2/922西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#2/922东门_onoff"]={tagname:"door/9f弱电井#2/922东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#2/924西门_onoff"]={tagname:"door/9f弱电井#2/924西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#2/924东门_onoff"]={tagname:"door/9f弱电井#2/924东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#1/902北门会议室_onoff"]={tagname:"door/9f弱电井#1/902北门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#1/902南门会议室_onoff"]={tagname:"door/9f弱电井#1/902南门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#1/901小会议室_onoff"]={tagname:"door/9f弱电井#1/901小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#1/903_onoff"]={tagname:"door/9f弱电井#1/903_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#1/905_onoff"]={tagname:"door/9f弱电井#1/905_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#1/911_onoff"]={tagname:"door/9f弱电井#1/911_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#1/913_onoff"]={tagname:"door/9f弱电井#1/913_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#1/915小会议室_onoff"]={tagname:"door/9f弱电井#1/915小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#1/917西门_onoff"]={tagname:"door/9f弱电井#1/917西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#1/917东门_onoff"]={tagname:"door/9f弱电井#1/917东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#1/919西门_onoff"]={tagname:"door/9f弱电井#1/919西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#2/919东门_onoff"]={tagname:"door/9f弱电井#2/919东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#2/921西门_onoff"]={tagname:"door/9f弱电井#2/921西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#2/921东门_onoff"]={tagname:"door/9f弱电井#2/921东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#2/923西门_onoff"]={tagname:"door/9f弱电井#2/923西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#2/923东门_onoff"]={tagname:"door/9f弱电井#2/923东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#2/925_onoff"]={tagname:"door/9f弱电井#2/925_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/9f弱电井#2/927_onoff"]={tagname:"door/9f弱电井#2/927_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item898loopstatus_iopc1_loop_1_64_3_s"]={tagname:"item898loopstatus_iopc1_loop_1_64_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item901loopstatus_iopc1_loop_1_64_6_s"]={tagname:"item901loopstatus_iopc1_loop_1_64_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item897loopstatus_iopc1_loop_1_64_2_s"]={tagname:"item897loopstatus_iopc1_loop_1_64_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item890loopstatus_iopc1_loop_1_63_1_s"]={tagname:"item890loopstatus_iopc1_loop_1_63_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item884loopstatus_iopc1_loop_1_61_5_s"]={tagname:"item884loopstatus_iopc1_loop_1_61_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item888loopstatus_iopc1_loop_1_62_3_s"]={tagname:"item888loopstatus_iopc1_loop_1_62_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item880loopstatus_iopc1_loop_1_61_1_s"]={tagname:"item880loopstatus_iopc1_loop_1_61_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item881loopstatus_iopc1_loop_1_61_2_s"]={tagname:"item881loopstatus_iopc1_loop_1_61_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item885loopstatus_iopc1_loop_1_61_6_s"]={tagname:"item885loopstatus_iopc1_loop_1_61_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item883loopstatus_iopc1_loop_1_61_4_s"]={tagname:"item883loopstatus_iopc1_loop_1_61_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item906loopstatus_iopc1_loop_1_65_5_s"]={tagname:"item906loopstatus_iopc1_loop_1_65_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item882loopstatus_iopc1_loop_1_61_3_s"]={tagname:"item882loopstatus_iopc1_loop_1_61_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item889loopstatus_iopc1_loop_1_62_4_s"]={tagname:"item889loopstatus_iopc1_loop_1_62_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item899loopstatus_iopc1_loop_1_64_4_s"]={tagname:"item899loopstatus_iopc1_loop_1_64_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item896loopstatus_iopc1_loop_1_64_1_s"]={tagname:"item896loopstatus_iopc1_loop_1_64_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item907loopstatus_iopc1_loop_1_65_6_s"]={tagname:"item907loopstatus_iopc1_loop_1_65_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item893loopstatus_iopc1_loop_1_63_4_s"]={tagname:"item893loopstatus_iopc1_loop_1_63_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item894loopstatus_iopc1_loop_1_63_5_s"]={tagname:"item894loopstatus_iopc1_loop_1_63_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item891loopstatus_iopc1_loop_1_63_2_s"]={tagname:"item891loopstatus_iopc1_loop_1_63_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item892loopstatus_iopc1_loop_1_63_3_s"]={tagname:"item892loopstatus_iopc1_loop_1_63_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item902loopstatus_iopc1_loop_1_65_1_s"]={tagname:"item902loopstatus_iopc1_loop_1_65_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item904loopstatus_iopc1_loop_1_65_3_s"]={tagname:"item904loopstatus_iopc1_loop_1_65_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item903loopstatus_iopc1_loop_1_65_2_s"]={tagname:"item903loopstatus_iopc1_loop_1_65_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item900loopstatus_iopc1_loop_1_64_5_s"]={tagname:"item900loopstatus_iopc1_loop_1_64_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
function door1_js(){
writetag("Door/9F弱电井#1/904","");
}
function door2_js(){
writetag("Door/9F弱电井#1/906","");
}
function door3_js(){
writetag("Door/9F弱电井#1/908","");
}
function door6_js(){
writetag("Door/9F弱电井#1/914","");
}
function door7_js(){
writetag("Door/9F弱电井#1/916","");
}
function door8_js(){
writetag("Door/9F弱电井#1/918小会议室","");
}
function door9_js(){
writetag("Door/9F弱电井#2/920西门","");
}
function door10_js(){
writetag("Door/9F弱电井#2/920东门","");
}
function door11_js(){
writetag("Door/9F弱电井#2/922西门","");
}
function door12_js(){
writetag("Door/9F弱电井#2/922东门","");
}
function door13_js(){
writetag("Door/9F弱电井#2/924西门","");
}
function door14_js(){
writetag("Door/9F弱电井#2/924东门","");
}
function door15_js(){
writetag("Door/9F弱电井#1/902北门会议室","");
}
function door16_js(){
writetag("Door/9F弱电井#1/902南门会议室","");
}
function door17_js(){
writetag("Door/9F弱电井#1/901小会议室","");
}
function door18_js(){
writetag("Door/9F弱电井#1/903","");
}
function door19_js(){
writetag("Door/9F弱电井#1/905","");
}
function door20_js(){
writetag("Door/9F弱电井#1/911","");
}
function door21_js(){
writetag("Door/9F弱电井#1/913","");
}
function door22_js(){
writetag("Door/9F弱电井#1/915小会议室","");
}
function door23_js(){
writetag("Door/9F弱电井#1/915小会议室","");
}
function door24_js(){
writetag("Door/9F弱电井#1/917东门","");
}
function door25_js(){
writetag("Door/9F弱电井#1/919西门","");
}
function door26_js(){
writetag("Door/9F弱电井#2/919东门","");
}
function door27_js(){
writetag("Door/9F弱电井#2/921西门","");
}
function door28_js(){
writetag("Door/9F弱电井#2/921东门","");
}
function door29_js(){
writetag("Door/9F弱电井#2/923西门","");
}
function door30_js(){
writetag("Door/9F弱电井#2/923东门","");
}
function door31_js(){
writetag("Door/9F弱电井#2/925","");
}
function door32_js(){
writetag("Door/9F弱电井#2/927","");
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
writetag("ITEM204LoopControl_IOPC1_LOOP_1_64_3_C","");
}
function zm2_js(){
writetag("ITEM207LoopControl_IOPC1_LOOP_1_64_6_C","");
}
function zm3_js(){
writetag("ITEM203LoopControl_IOPC1_LOOP_1_64_2_C","");
}
function zm4_js(){
writetag("ITEM196LoopControl_IOPC1_LOOP_1_63_1_C","");
}
function zm5_js(){
writetag("ITEM190LoopControl_IOPC1_LOOP_1_61_5_C","");
}
function zm6_js(){
writetag("ITEM194LoopControl_IOPC1_LOOP_1_62_3_C","");
}
function zm7_js(){
writetag("ITEM186LoopControl_IOPC1_LOOP_1_61_1_C","");
}
function zm8_js(){
writetag("ITEM187LoopControl_IOPC1_LOOP_1_61_2_C","");
}
function zm9_js(){
writetag("ITEM191LoopControl_IOPC1_LOOP_1_61_6_C","");
}
function zm10_js(){
writetag("ITEM189LoopControl_IOPC1_LOOP_1_61_4_C","");
}
function zm11_js(){
writetag("ITEM212LoopControl_IOPC1_LOOP_1_65_5_C","");
}
function zm12_js(){
writetag("ITEM188LoopControl_IOPC1_LOOP_1_61_3_C","");
}
function zm13_js(){
writetag("ITEM195LoopControl_IOPC1_LOOP_1_62_4_C","");
}
function zm14_js(){
writetag("ITEM205LoopControl_IOPC1_LOOP_1_64_4_C","");
}
function zm15_js(){
writetag("ITEM202LoopControl_IOPC1_LOOP_1_64_1_C","");
}
function zm16_js(){
writetag("ITEM212LoopControl_IOPC1_LOOP_1_65_5_C","");
}
function zm17_js(){
writetag("ITEM213LoopControl_IOPC1_LOOP_1_65_6_C","");
}
function zm18_js(){
writetag("ITEM199LoopControl_IOPC1_LOOP_1_63_4_C","");
}
function zm19_js(){
writetag("ITEM200LoopControl_IOPC1_LOOP_1_63_5_C","");
}
function zm20_js(){
writetag("ITEM197LoopControl_IOPC1_LOOP_1_63_2_C","");
}
function zm21_js(){
writetag("ITEM198LoopControl_IOPC1_LOOP_1_63_3_C","");
}
function zm22_js(){
writetag("ITEM208LoopControl_IOPC1_LOOP_1_65_1_C","");
}
function zm23_js(){
writetag("ITEM210LoopControl_IOPC1_LOOP_1_65_3_C","");
}
function zm24_js(){
writetag("ITEM209LoopControl_IOPC1_LOOP_1_65_2_C","");
}
function zm25_js(){
writetag("ITEM206LoopControl_IOPC1_LOOP_1_64_5_C","");
}
function jk2_js(){
open_video2("192.168.3.132");
}
function jk3_js(){
open_video2("192.168.3.30");
}
function jk4_js(){
open_video2("192.168.3.31");
}
function jk5_js(){
open_video2("192.168.3.137");
}
function jk6_js(){
open_video2("192.168.3.138");
}
function jk7_js(){
open_video2("192.168.3.135");
}
function jk8_js(){
open_video2("192.168.3.136");
}
function jk9_js(){
open_video2("192.168.3.133");
}
function jk10_js(){
open_video2("192.168.3.134");
}
function jk11_js(){
open_video2("192.168.3.127");
}
function jk12_js(){
open_video2("192.168.3.129");
}
function jk13_js(){
open_video2("192.168.3.128");
}
function jk14_js(){
open_video2("192.168.3.139");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door1=new swimgObj('door1','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/904_onoff"].htmlobj.push(door1);
var door2=new swimgObj('door2','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/906_onoff"].htmlobj.push(door2);
var door3=new swimgObj('door3','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/908_onoff"].htmlobj.push(door3);
var door6=new swimgObj('door6','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/914_onoff"].htmlobj.push(door6);
var door7=new swimgObj('door7','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/916_onoff"].htmlobj.push(door7);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/918小会议室_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#2/920西门_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#2/920东门_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#2/922西门_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#2/922东门_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#2/924西门_onoff"].htmlobj.push(door13);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#2/924东门_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/902北门会议室_onoff"].htmlobj.push(door15);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/902南门会议室_onoff"].htmlobj.push(door16);
var door17=new swimgObj('door17','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/901小会议室_onoff"].htmlobj.push(door17);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/903_onoff"].htmlobj.push(door18);
var door19=new swimgObj('door19','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/905_onoff"].htmlobj.push(door19);
var door20=new swimgObj('door20','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/911_onoff"].htmlobj.push(door20);
var door21=new swimgObj('door21','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/913_onoff"].htmlobj.push(door21);
var door22=new swimgObj('door22','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/915小会议室_onoff"].htmlobj.push(door22);
var door23=new swimgObj('door23','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/917西门_onoff"].htmlobj.push(door23);
var door24=new swimgObj('door24','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/917东门_onoff"].htmlobj.push(door24);
var door25=new swimgObj('door25','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#1/919西门_onoff"].htmlobj.push(door25);
var door26=new swimgObj('door26','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#2/919东门_onoff"].htmlobj.push(door26);
var door27=new swimgObj('door27','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#2/921西门_onoff"].htmlobj.push(door27);
var door28=new swimgObj('door28','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#2/921东门_onoff"].htmlobj.push(door28);
var door29=new swimgObj('door29','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#2/923西门_onoff"].htmlobj.push(door29);
var door30=new swimgObj('door30','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#2/923东门_onoff"].htmlobj.push(door30);
var door31=new swimgObj('door31','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#2/925_onoff"].htmlobj.push(door31);
var door32=new swimgObj('door32','images/door_km.gif','images/door_close.gif');
db["door/9f弱电井#2/927_onoff"].htmlobj.push(door32);
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item898loopstatus_iopc1_loop_1_64_3_s"].htmlobj.push(zm1);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item901loopstatus_iopc1_loop_1_64_6_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item897loopstatus_iopc1_loop_1_64_2_s"].htmlobj.push(zm3);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item890loopstatus_iopc1_loop_1_63_1_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item884loopstatus_iopc1_loop_1_61_5_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item888loopstatus_iopc1_loop_1_62_3_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item880loopstatus_iopc1_loop_1_61_1_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item881loopstatus_iopc1_loop_1_61_2_s"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item885loopstatus_iopc1_loop_1_61_6_s"].htmlobj.push(zm9);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item883loopstatus_iopc1_loop_1_61_4_s"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item906loopstatus_iopc1_loop_1_65_5_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item882loopstatus_iopc1_loop_1_61_3_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item889loopstatus_iopc1_loop_1_62_4_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item899loopstatus_iopc1_loop_1_64_4_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item896loopstatus_iopc1_loop_1_64_1_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item906loopstatus_iopc1_loop_1_65_5_s"].htmlobj.push(zm16);
var zm17=new swimgObj('zm17','images/light_on.png','images/light_off.png');
db["item907loopstatus_iopc1_loop_1_65_6_s"].htmlobj.push(zm17);
var zm18=new swimgObj('zm18','images/light_on.png','images/light_off.png');
db["item893loopstatus_iopc1_loop_1_63_4_s"].htmlobj.push(zm18);
var zm19=new swimgObj('zm19','images/light_on.png','images/light_off.png');
db["item894loopstatus_iopc1_loop_1_63_5_s"].htmlobj.push(zm19);
var zm20=new swimgObj('zm20','images/light_on.png','images/light_off.png');
db["item891loopstatus_iopc1_loop_1_63_2_s"].htmlobj.push(zm20);
var zm21=new swimgObj('zm21','images/light_on.png','images/light_off.png');
db["item892loopstatus_iopc1_loop_1_63_3_s"].htmlobj.push(zm21);
var zm22=new swimgObj('zm22','images/light_on.png','images/light_off.png');
db["item902loopstatus_iopc1_loop_1_65_1_s"].htmlobj.push(zm22);
var zm23=new swimgObj('zm23','images/light_on.png','images/light_off.png');
db["item904loopstatus_iopc1_loop_1_65_3_s"].htmlobj.push(zm23);
var zm24=new swimgObj('zm24','images/light_on.png','images/light_off.png');
db["item903loopstatus_iopc1_loop_1_65_2_s"].htmlobj.push(zm24);
var zm25=new swimgObj('zm25','images/light_on.png','images/light_off.png');
db["item900loopstatus_iopc1_loop_1_64_5_s"].htmlobj.push(zm25);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/主楼9F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼9F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/9F.jpg" />
<img id="door1" style="position:absolute;border:0px;left:592px;top:448px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door1_js();"/>
<img id="door2" style="position:absolute;border:0px;left:600px;top:376px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door2_js();"/>
<img id="door3" style="position:absolute;border:0px;left:648px;top:377px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door3_js();"/>
<img id="door6" style="position:absolute;border:0px;left:704px;top:377px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door6_js();"/>
<img id="door7" style="position:absolute;border:0px;left:791px;top:377px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door7_js();"/>
<img id="door8" style="position:absolute;border:0px;left:791px;top:446px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:832px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:912px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:984px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:1064px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:1128px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door14" style="position:absolute;border:0px;left:1240px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:304px;top:496px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door16" style="position:absolute;border:0px;left:296px;top:552px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door17" style="position:absolute;border:0px;left:376px;top:624px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door17_js();"/>
<img id="door18" style="position:absolute;border:0px;left:360px;top:704px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="door19" style="position:absolute;border:0px;left:448px;top:704px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door19_js();"/>
<img id="door20" style="position:absolute;border:0px;left:536px;top:712px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door20_js();"/>
<img id="door21" style="position:absolute;border:0px;left:592px;top:714px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door21_js();"/>
<img id="door22" style="position:absolute;border:0px;left:624px;top:632px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door22_js();"/>
<img id="door23" style="position:absolute;border:0px;left:672px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door23_js();"/>
<img id="door24" style="position:absolute;border:0px;left:761px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door24_js();"/>
<img id="door25" style="position:absolute;border:0px;left:829px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door25_js();"/>
<img id="door26" style="position:absolute;border:0px;left:928px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door26_js();"/>
<img id="door27" style="position:absolute;border:0px;left:982px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door27_js();"/>
<img id="door28" style="position:absolute;border:0px;left:1077px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door28_js();"/>
<img id="door29" style="position:absolute;border:0px;left:1144px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door29_js();"/>
<img id="door30" style="position:absolute;border:0px;left:1236px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door30_js();"/>
<img id="door31" style="position:absolute;border:0px;left:1286px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door31_js();"/>
<img id="door32" style="position:absolute;border:0px;left:1380px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door32_js();"/>
<img id="j1" style="position:absolute;border:0px;left:1408px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j1_js();"/>
<img id="d1" style="position:absolute;border:0px;left:1488px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d1_js();"/>
<img id="m1" style="position:absolute;border:0px;left:1336px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m1_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:256px;top:672px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="1-64-3"/>
<img id="zm2" style="position:absolute;border:0px;left:256px;top:712px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="1-64-6"/>
<img id="zm3" style="position:absolute;border:0px;left:280px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="1-64-2"/>
<img id="zm4" style="position:absolute;border:0px;left:440px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="1-63-1"/>
<img id="zm5" style="position:absolute;border:0px;left:376px;top:488px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="1-61-5"/>
<img id="zm6" style="position:absolute;border:0px;left:464px;top:400px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="1-62-3"/>
<img id="zm7" style="position:absolute;border:0px;left:456px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="1-61-1"/>
<img id="zm8" style="position:absolute;border:0px;left:544px;top:474px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="1-61-2"/>
<img id="zm9" style="position:absolute;border:0px;left:712px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="1-61-6"/>
<img id="zm10" style="position:absolute;border:0px;left:1040px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="1-61-4"/>
<img id="zm11" style="position:absolute;border:0px;left:1448px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="1-65-5"/>
<img id="zm12" style="position:absolute;border:0px;left:1384px;top:424px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="1-61-3"/>
<img id="zm13" style="position:absolute;border:0px;left:1344px;top:416px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="1-62-4"/>
<img id="zm14" style="position:absolute;border:0px;left:696px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="1-64-4"/>
<img id="zm15" style="position:absolute;border:0px;left:1032px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="1-64-1"/>
<img id="zm16" style="position:absolute;border:0px;left:1488px;top:617px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="1-65-5"/>
<img id="zm17" style="position:absolute;border:0px;left:1408px;top:536px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm17_js();" title="1-65-6"/>
<img id="zm18" style="position:absolute;border:0px;left:1528px;top:512px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm18_js();" title="1-63-4"/>
<img id="zm19" style="position:absolute;border:0px;left:1584px;top:509px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm19_js();" title="1-63-5"/>
<img id="zm20" style="position:absolute;border:0px;left:1544px;top:568px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm20_js();" title="1-63-2"/>
<img id="zm21" style="position:absolute;border:0px;left:1608px;top:560px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm21_js();" title="1-63-3"/>
<img id="zm22" style="position:absolute;border:0px;left:880px;top:504px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm22_js();" title="1-65-1"/>
<img id="zm23" style="position:absolute;border:0px;left:880px;top:543px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm23_js();" title="1-65-3"/>
<img id="zm24" style="position:absolute;border:0px;left:880px;top:583px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm24_js();" title="1-65-2"/>
<img id="zm25" style="position:absolute;border:0px;left:1184px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm25_js();" title="1-64-5"/>
<img id="jk2" style="position:absolute;border:0px;left:912px;top:568px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:816px;top:600px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:952px;top:600px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:1520px;top:600px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:1416px;top:568px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:1336px;top:440px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:1488px;top:472px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:832px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:928px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:336px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:240px;top:696px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:256px;top:624px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:352px;top:552px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>

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
