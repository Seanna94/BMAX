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
<title>西楼2F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 35;
db["door/西附楼2f弱电井#6/西附楼3216北门_onoff"]={tagname:"door/西附楼2f弱电井#6/西附楼3216北门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#6/西附楼3216南门_onoff"]={tagname:"door/西附楼2f弱电井#6/西附楼3216南门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#6/西附楼3214_onoff"]={tagname:"door/西附楼2f弱电井#6/西附楼3214_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#6/西附楼3212_onoff"]={tagname:"door/西附楼2f弱电井#6/西附楼3212_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#6/西附楼3210_onoff"]={tagname:"door/西附楼2f弱电井#6/西附楼3210_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#6/西附楼3202_onoff"]={tagname:"door/西附楼2f弱电井#6/西附楼3202_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#6/西附楼3204_onoff"]={tagname:"door/西附楼2f弱电井#6/西附楼3204_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#6/西附楼3206_onoff"]={tagname:"door/西附楼2f弱电井#6/西附楼3206_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#6/西附楼3208_onoff"]={tagname:"door/西附楼2f弱电井#6/西附楼3208_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#6/西附楼3201西门_onoff"]={tagname:"door/西附楼2f弱电井#6/西附楼3201西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#6/西附楼3201东门_onoff"]={tagname:"door/西附楼2f弱电井#6/西附楼3201东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#6/西附楼3203西门_onoff"]={tagname:"door/西附楼2f弱电井#6/西附楼3203西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#6/西附楼3203东门_onoff"]={tagname:"door/西附楼2f弱电井#6/西附楼3203东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#6/西附楼3205西门_onoff"]={tagname:"door/西附楼2f弱电井#6/西附楼3205西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#6/西附楼3205东门_onoff"]={tagname:"door/西附楼2f弱电井#6/西附楼3205东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#6/西附楼3218_onoff"]={tagname:"door/西附楼2f弱电井#6/西附楼3218_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼1f弱电井#5/西附楼3220东门（一层）_onoff"]={tagname:"door/西附楼1f弱电井#5/西附楼3220东门（一层）_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#5/西附楼3222_onoff"]={tagname:"door/西附楼2f弱电井#5/西附楼3222_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼2f弱电井#5/西附楼3224_onoff"]={tagname:"door/西附楼2f弱电井#5/西附楼3224_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1241loopstatus_iopc1_loop_3_34_2_s"]={tagname:"item1241loopstatus_iopc1_loop_3_34_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1242loopstatus_iopc1_loop_3_34_3_s"]={tagname:"item1242loopstatus_iopc1_loop_3_34_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1234loopstatus_iopc1_loop_3_33_3_s"]={tagname:"item1234loopstatus_iopc1_loop_3_33_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1238loopstatus_iopc1_loop_3_33_7_s"]={tagname:"item1238loopstatus_iopc1_loop_3_33_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1237loopstatus_iopc1_loop_3_33_6_s"]={tagname:"item1237loopstatus_iopc1_loop_3_33_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1246loopstatus_iopc1_loop_3_34_7_s"]={tagname:"item1246loopstatus_iopc1_loop_3_34_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1239loopstatus_iopc1_loop_3_33_8_s"]={tagname:"item1239loopstatus_iopc1_loop_3_33_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1233loopstatus_iopc1_loop_3_33_2_s"]={tagname:"item1233loopstatus_iopc1_loop_3_33_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1243loopstatus_iopc1_loop_3_34_4_s"]={tagname:"item1243loopstatus_iopc1_loop_3_34_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1232loopstatus_iopc1_loop_3_33_1_s"]={tagname:"item1232loopstatus_iopc1_loop_3_33_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1244loopstatus_iopc1_loop_3_34_5_s"]={tagname:"item1244loopstatus_iopc1_loop_3_34_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1236loopstatus_iopc1_loop_3_33_5_s"]={tagname:"item1236loopstatus_iopc1_loop_3_33_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1247loopstatus_iopc1_loop_3_34_8_s"]={tagname:"item1247loopstatus_iopc1_loop_3_34_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1245loopstatus_iopc1_loop_3_34_6_s"]={tagname:"item1245loopstatus_iopc1_loop_3_34_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1235loopstatus_iopc1_loop_3_33_4_s"]={tagname:"item1235loopstatus_iopc1_loop_3_33_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1240loopstatus_iopc1_loop_3_34_1_s"]={tagname:"item1240loopstatus_iopc1_loop_3_34_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
function door2_js(){
writetag("Door/西附楼2F弱电井#6/西附楼3216北门","");
}
function door3_js(){
writetag("Door/西附楼2F弱电井#6/西附楼3216南门","");
}
function door4_js(){
writetag("Door/西附楼2F弱电井#6/西附楼3214","");
}
function door5_js(){
writetag("Door/西附楼2F弱电井#6/西附楼3212","");
}
function door6_js(){
writetag("Door/西附楼2F弱电井#6/西附楼3210","");
}
function door7_js(){
writetag("Door/西附楼2F弱电井#6/西附楼3202","");
}
function door8_js(){
writetag("Door/西附楼2F弱电井#6/西附楼3204","");
}
function door9_js(){
writetag("Door/西附楼2F弱电井#6/西附楼3206","");
}
function door10_js(){
writetag("Door/西附楼2F弱电井#6/西附楼3208","");
}
function door11_js(){
writetag("Door/西附楼2F弱电井#6/西附楼3201西门","");
}
function door12_js(){
writetag("Door/西附楼2F弱电井#6/西附楼3201东门","");
}
function door13_js(){
writetag("Door/西附楼2F弱电井#6/西附楼3203西门","");
}
function door14_js(){
writetag("Door/西附楼2F弱电井#6/西附楼3203东门","");
}
function door15_js(){
writetag("Door/西附楼2F弱电井#6/西附楼3205西门","");
}
function door16_js(){
writetag("Door/西附楼2F弱电井#6/西附楼3214","");
}
function door17_js(){
writetag("Door/西附楼2F弱电井#6/西附楼3218","");
}
function door18_js(){
writetag("user.Door/西附楼1F弱电井#5/西附楼3220东门(一层)_OnOff","");
}
function door19_js(){
writetag("user.Door/西附楼2F弱电井#5/西附楼3222_OnOff","");
}
function door20_js(){
writetag("user.Door/西附楼2F弱电井#5/西附楼3224_OnOff","");
}
function jk2_js(){
open_video("192.168.1.45");
}
function jk3_js(){
open_video("192.168.1.46");
}
function jk4_js(){
open_video("192.168.1.3");
}
function jk5_js(){
open_video("192.168.1.4");
}
function jk6_js(){
open_video("192.168.1.5");
}
function jk7_js(){
open_video("192.168.1.60");
}
function jk8_js(){
open_video("192.168.1.59");
}
function jk9_js(){
open_video("192.168.1.58");
}
function jk10_js(){
open_video("192.168.1.13");
}
function jk11_js(){
open_video("192.168.1.73");
}
function jk12_js(){
open_video("192.168.1.45");
}
function jk13_js(){
open_video("192.168.1.55");
}
function jk14_js(){
open_video("192.168.1.54");
}
function jk15_js(){
open_video("192.168.1.53");
}
function jk16_js(){
open_video("192.168.1.61");
}
function jk17_js(){
open_video("192.168.1.64");
}
function jk18_js(){
open_video("192.168.1.45");
}
function jk19_js(){
open_video("192.168.1.65");
}
function jk20_js(){
open_video("192.168.1.66");
}
function jk21_js(){
open_video("192.168.1.67");
}
function jk22_js(){
open_video("192.168.1.68");
}
function jk23_js(){
open_video("192.168.1.69");
}
function jk24_js(){
open_video("70");
}
function jk25_js(){
open_video("192.168.1.71");
}
function jk26_js(){
open_video("192.168.1.72");
}
function jk27_js(){
open_video("192.168.1.72");
}
function jk28_js(){
open_video("192.168.1.63");
}
function jk29_js(){
open_video("192.168.1.51");
}
function jk30_js(){
open_video("192.168.1.52");
}
function jk_js(){
var id = "jk";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="jk";
 }
}
function image_js(){
var id = "zm";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="zm";
 }
}
function door_js(){
var id = "door";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="door";
 }
}
function zm21_js(){
writetag("ITEM547LoopControl_IOPC1_LOOP_3_34_2_C","");
}
function zm22_js(){
writetag("ITEM548LoopControl_IOPC1_LOOP_3_34_3_C","");
}
function zm23_js(){
writetag("ITEM540LoopControl_IOPC1_LOOP_3_33_3_C","");
}
function zm24_js(){
writetag("ITEM544LoopControl_IOPC1_LOOP_3_33_7_C","");
}
function zm25_js(){
writetag("ITEM543LoopControl_IOPC1_LOOP_3_33_6_C","");
}
function zm26_js(){
writetag("ITEM552LoopControl_IOPC1_LOOP_3_34_7_C","");
}
function zm27_js(){
writetag("ITEM545LoopControl_IOPC1_LOOP_3_33_8_C","");
}
function zm28_js(){
writetag("ITEM539LoopControl_IOPC1_LOOP_3_33_2_C","");
}
function zm29_js(){
writetag("ITEM549LoopControl_IOPC1_LOOP_3_34_4_C","");
}
function zm30_js(){
writetag("ITEM538LoopControl_IOPC1_LOOP_3_33_1_C","");
}
function zm31_js(){
writetag("ITEM550LoopControl_IOPC1_LOOP_3_34_5_C","");
}
function zm32_js(){
writetag("ITEM542LoopControl_IOPC1_LOOP_3_33_5_C","");
}
function zm33_js(){
writetag("ITEM553LoopControl_IOPC1_LOOP_3_34_8_C","");
}
function zm34_js(){
writetag("ITEM551LoopControl_IOPC1_LOOP_3_34_6_C","");
}
function zm35_js(){
writetag("ITEM541LoopControl_IOPC1_LOOP_3_33_4_C","");
}
function zm36_js(){
writetag("ITEM542LoopControl_IOPC1_LOOP_3_33_5_C","");
}
function zm37_js(){
writetag("ITEM550LoopControl_IOPC1_LOOP_3_34_5_C","");
}
function zm38_js(){
writetag("ITEM546LoopControl_IOPC1_LOOP_3_34_1_C","");
}
function zm39_js(){
writetag("ITEM553LoopControl_IOPC1_LOOP_3_34_8_C","");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door2=new swimgObj('door2','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#6/西附楼3216北门_onoff"].htmlobj.push(door2);
var door3=new swimgObj('door3','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#6/西附楼3216南门_onoff"].htmlobj.push(door3);
var door4=new swimgObj('door4','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#6/西附楼3214_onoff"].htmlobj.push(door4);
var door5=new swimgObj('door5','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#6/西附楼3212_onoff"].htmlobj.push(door5);
var door6=new swimgObj('door6','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#6/西附楼3210_onoff"].htmlobj.push(door6);
var door7=new swimgObj('door7','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#6/西附楼3202_onoff"].htmlobj.push(door7);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#6/西附楼3204_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#6/西附楼3206_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#6/西附楼3208_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#6/西附楼3201西门_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#6/西附楼3201东门_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#6/西附楼3203西门_onoff"].htmlobj.push(door13);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#6/西附楼3203东门_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#6/西附楼3205西门_onoff"].htmlobj.push(door15);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#6/西附楼3205东门_onoff"].htmlobj.push(door16);
var door17=new swimgObj('door17','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#6/西附楼3218_onoff"].htmlobj.push(door17);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/西附楼1f弱电井#5/西附楼3220东门（一层）_onoff"].htmlobj.push(door18);
var door19=new swimgObj('door19','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#5/西附楼3222_onoff"].htmlobj.push(door19);
var door20=new swimgObj('door20','images/door_km.gif','images/door_close.gif');
db["door/西附楼2f弱电井#5/西附楼3224_onoff"].htmlobj.push(door20);
var zm21=new swimgObj('zm21','images/light_on.png','images/light_off.png');
db["item1241loopstatus_iopc1_loop_3_34_2_s"].htmlobj.push(zm21);
var zm22=new swimgObj('zm22','images/light_on.png','images/light_off.png');
db["item1242loopstatus_iopc1_loop_3_34_3_s"].htmlobj.push(zm22);
var zm23=new swimgObj('zm23','images/light_on.png','images/light_off.png');
db["item1234loopstatus_iopc1_loop_3_33_3_s"].htmlobj.push(zm23);
var zm24=new swimgObj('zm24','images/light_on.png','images/light_off.png');
db["item1238loopstatus_iopc1_loop_3_33_7_s"].htmlobj.push(zm24);
var zm25=new swimgObj('zm25','images/light_on.png','images/light_off.png');
db["item1237loopstatus_iopc1_loop_3_33_6_s"].htmlobj.push(zm25);
var zm26=new swimgObj('zm26','images/light_on.png','images/light_off.png');
db["item1246loopstatus_iopc1_loop_3_34_7_s"].htmlobj.push(zm26);
var zm27=new swimgObj('zm27','images/light_on.png','images/light_off.png');
db["item1239loopstatus_iopc1_loop_3_33_8_s"].htmlobj.push(zm27);
var zm28=new swimgObj('zm28','images/light_on.png','images/light_off.png');
db["item1233loopstatus_iopc1_loop_3_33_2_s"].htmlobj.push(zm28);
var zm29=new swimgObj('zm29','images/light_on.png','images/light_off.png');
db["item1243loopstatus_iopc1_loop_3_34_4_s"].htmlobj.push(zm29);
var zm30=new swimgObj('zm30','images/light_on.png','images/light_off.png');
db["item1232loopstatus_iopc1_loop_3_33_1_s"].htmlobj.push(zm30);
var zm31=new swimgObj('zm31','images/light_on.png','images/light_off.png');
db["item1244loopstatus_iopc1_loop_3_34_5_s"].htmlobj.push(zm31);
var zm32=new swimgObj('zm32','images/light_on.png','images/light_off.png');
db["item1236loopstatus_iopc1_loop_3_33_5_s"].htmlobj.push(zm32);
var zm33=new swimgObj('zm33','images/light_on.png','images/light_off.png');
db["item1247loopstatus_iopc1_loop_3_34_8_s"].htmlobj.push(zm33);
var zm34=new swimgObj('zm34','images/light_on.png','images/light_off.png');
db["item1245loopstatus_iopc1_loop_3_34_6_s"].htmlobj.push(zm34);
var zm35=new swimgObj('zm35','images/light_on.png','images/light_off.png');
db["item1235loopstatus_iopc1_loop_3_33_4_s"].htmlobj.push(zm35);
var zm36=new swimgObj('zm36','images/light_on.png','images/light_off.png');
db["item1236loopstatus_iopc1_loop_3_33_5_s"].htmlobj.push(zm36);
var zm37=new swimgObj('zm37','images/light_on.png','images/light_off.png');
db["item1244loopstatus_iopc1_loop_3_34_5_s"].htmlobj.push(zm37);
var zm38=new swimgObj('zm38','images/light_on.png','images/light_off.png');
db["item1240loopstatus_iopc1_loop_3_34_1_s"].htmlobj.push(zm38);
var zm39=new swimgObj('zm39','images/light_on.png','images/light_off.png');
db["item1247loopstatus_iopc1_loop_3_34_8_s"].htmlobj.push(zm39);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/西楼2F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 西楼2F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/2XF.jpg" />
<img id="door2" style="position:absolute;border:0px;left:512px;top:200px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door2_js();"/>
<img id="door3" style="position:absolute;border:0px;left:512px;top:248px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door3_js();"/>
<img id="door4" style="position:absolute;border:0px;left:632px;top:192px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door4_js();"/>
<img id="door5" style="position:absolute;border:0px;left:1184px;top:184px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door5_js();"/>
<img id="door6" style="position:absolute;border:0px;left:1360px;top:176px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door6_js();"/>
<img id="door7" style="position:absolute;border:0px;left:1416px;top:368px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door7_js();"/>
<img id="door8" style="position:absolute;border:0px;left:1488px;top:328px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:1408px;top:280px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:1384px;top:232px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:1144px;top:248px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:1312px;top:248px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:864px;top:248px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door14" style="position:absolute;border:0px;left:1096px;top:248px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:608px;top:248px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door16" style="position:absolute;border:0px;left:824px;top:248px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door17" style="position:absolute;border:0px;left:488px;top:296px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door17_js();"/>
<img id="door18" style="position:absolute;border:0px;left:528px;top:1056px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="door19" style="position:absolute;border:0px;left:616px;top:1064px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door19_js();"/>
<img id="door20" style="position:absolute;border:0px;left:688px;top:1064px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door20_js();"/>
<img id="jk2" style="position:absolute;border:0px;left:1152px;top:288px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:1008px;top:256px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:912px;top:256px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:768px;top:256px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:688px;top:256px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:568px;top:208px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:608px;top:216px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:664px;top:216px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:960px;top:216px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:1008px;top:208px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:1360px;top:224px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:1496px;top:248px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:1456px;top:288px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="jk15" style="position:absolute;border:0px;left:1480px;top:384px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk15_js();"/>
<img id="jk16" style="position:absolute;border:0px;left:456px;top:400px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk16_js();"/>
<img id="jk17" style="position:absolute;border:0px;left:578px;top:411px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk17_js();"/>
<img id="jk18" style="position:absolute;border:0px;left:536px;top:448px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk18_js();"/>
<img id="jk19" style="position:absolute;border:0px;left:608px;top:520px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk19_js();"/>
<img id="jk20" style="position:absolute;border:0px;left:936px;top:560px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk20_js();"/>
<img id="jk21" style="position:absolute;border:0px;left:712px;top:568px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk21_js();"/>
<img id="jk22" style="position:absolute;border:0px;left:712px;top:640px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk22_js();"/>
<img id="jk23" style="position:absolute;border:0px;left:920px;top:672px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk23_js();"/>
<img id="jk24" style="position:absolute;border:0px;left:592px;top:680px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk24_js();"/>
<img id="jk25" style="position:absolute;border:0px;left:488px;top:800px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk25_js();"/>
<img id="jk26" style="position:absolute;border:0px;left:1048px;top:792px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk26_js();"/>
<img id="jk27" style="position:absolute;border:0px;left:992px;top:368px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk27_js();"/>
<img id="jk28" style="position:absolute;border:0px;left:1024px;top:424px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk28_js();"/>
<img id="jk29" style="position:absolute;border:0px;left:1224px;top:408px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk29_js();"/>
<img id="jk30" style="position:absolute;border:0px;left:1360px;top:408px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk30_js();"/>
<img id="jk" style="position:absolute;border:0px;left:1472px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk_js();"/>
<img id="image" style="position:absolute;border:0px;left:1536px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:image_js();"/>
<img id="door" style="position:absolute;border:0px;left:1408px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door_js();"/>
<img id="zm21" style="position:absolute;border:0px;left:976px;top:800px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm21_js();" title="3-34-2"/>
<img id="zm22" style="position:absolute;border:0px;left:824px;top:792px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm22_js();" title="3-34-3"/>
<img id="zm23" style="position:absolute;border:0px;left:640px;top:792px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm23_js();" title="3-33-3"/>
<img id="zm24" style="position:absolute;border:0px;left:512px;top:680px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm24_js();" title="3-33-7"/>
<img id="zm25" style="position:absolute;border:0px;left:512px;top:552px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm25_js();" title="3-33-6"/>
<img id="zm26" style="position:absolute;border:0px;left:520px;top:496px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm26_js();" title="3-34-7"/>
<img id="zm27" style="position:absolute;border:0px;left:488px;top:416px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm27_js();" title="3-33-8"/>
<img id="zm28" style="position:absolute;border:0px;left:688px;top:408px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm28_js();" title="3-33-2"/>
<img id="zm29" style="position:absolute;border:0px;left:800px;top:408px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm29_js();" title="3-34-4"/>
<img id="zm30" style="position:absolute;border:0px;left:1112px;top:400px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm30_js();" title="3-33-1"/>
<img id="zm31" style="position:absolute;border:0px;left:1382px;top:365px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm31_js();" title="3-34-5"/>
<img id="zm32" style="position:absolute;border:0px;left:1400px;top:336px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm32_js();" title="3-33-5"/>
<img id="zm33" style="position:absolute;border:0px;left:1376px;top:288px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm33_js();" title="3-34-8"/>
<img id="zm34" style="position:absolute;border:0px;left:1352px;top:256px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm34_js();" title="3-34-6"/>
<img id="zm35" style="position:absolute;border:0px;left:568px;top:320px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm35_js();" title="3-33-4"/>
<img id="zm36" style="position:absolute;border:0px;left:568px;top:248px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm36_js();" title="3-33-5"/>
<img id="zm37" style="position:absolute;border:0px;left:736px;top:216px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm37_js();" title="3-34-5"/>
<img id="zm38" style="position:absolute;border:0px;left:952px;top:192px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm38_js();" title="3-34-1"/>
<img id="zm39" style="position:absolute;border:0px;left:1248px;top:205px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm39_js();" title="3-34-8"/>

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
