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
<title>东楼2F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 45;
db["door/东附楼2f弱电井#4/东附楼2201西门_onoff"]={tagname:"door/东附楼2f弱电井#4/东附楼2201西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼2f弱电井#4/东附楼2201东门_onoff"]={tagname:"door/东附楼2f弱电井#4/东附楼2201东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#2/1602_onoff"]={tagname:"door/16f弱电井#2/1602_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼2f弱电井#4/东附楼2202东门_onoff"]={tagname:"door/东附楼2f弱电井#4/东附楼2202东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼2f弱电井#4/东附楼2204北门_onoff"]={tagname:"door/东附楼2f弱电井#4/东附楼2204北门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼2f弱电井#4/东附楼2204中门_onoff"]={tagname:"door/东附楼2f弱电井#4/东附楼2204中门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼2f弱电井#3/东附楼2203东门_onoff"]={tagname:"door/东附楼2f弱电井#3/东附楼2203东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼2f弱电井#3/东附楼2206_onoff"]={tagname:"door/东附楼2f弱电井#3/东附楼2206_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼2f弱电井#3/东附楼2205西门_onoff"]={tagname:"door/东附楼2f弱电井#3/东附楼2205西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼2f弱电井#3/东附楼2209东门_onoff"]={tagname:"door/东附楼2f弱电井#3/东附楼2209东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼2f弱电井#3/东附楼2208东门_onoff"]={tagname:"door/东附楼2f弱电井#3/东附楼2208东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼2f弱电井#3/东附楼2206南侧房间_onoff"]={tagname:"door/东附楼2f弱电井#3/东附楼2206南侧房间_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1296loopstatus_iopc1_loop_4_33_1_s"]={tagname:"item1296loopstatus_iopc1_loop_4_33_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1297loopstatus_iopc1_loop_4_33_2_s"]={tagname:"item1297loopstatus_iopc1_loop_4_33_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1298loopstatus_iopc1_loop_4_33_3_s"]={tagname:"item1298loopstatus_iopc1_loop_4_33_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1302loopstatus_iopc1_loop_4_33_7_s"]={tagname:"item1302loopstatus_iopc1_loop_4_33_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1304loopstatus_iopc1_loop_4_34_1_s"]={tagname:"item1304loopstatus_iopc1_loop_4_34_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1305loopstatus_iopc1_loop_4_34_2_s"]={tagname:"item1305loopstatus_iopc1_loop_4_34_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1301loopstatus_iopc1_loop_4_33_6_s"]={tagname:"item1301loopstatus_iopc1_loop_4_33_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1306loopstatus_iopc1_loop_4_34_3_s"]={tagname:"item1306loopstatus_iopc1_loop_4_34_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1300loopstatus_iopc1_loop_4_33_5_s"]={tagname:"item1300loopstatus_iopc1_loop_4_33_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1315loopstatus_iopc1_loop_4_35_4_s"]={tagname:"item1315loopstatus_iopc1_loop_4_35_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1307loopstatus_iopc1_loop_4_34_4_s"]={tagname:"item1307loopstatus_iopc1_loop_4_34_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1310loopstatus_iopc1_loop_4_34_7_s"]={tagname:"item1310loopstatus_iopc1_loop_4_34_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1308loopstatus_iopc1_loop_4_34_5_s"]={tagname:"item1308loopstatus_iopc1_loop_4_34_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1311loopstatus_iopc1_loop_4_34_8_s"]={tagname:"item1311loopstatus_iopc1_loop_4_34_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1314loopstatus_iopc1_loop_4_35_3_s"]={tagname:"item1314loopstatus_iopc1_loop_4_35_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1313loopstatus_iopc1_loop_4_35_2_s"]={tagname:"item1313loopstatus_iopc1_loop_4_35_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1323loopstatus_iopc1_loop_4_36_4_s"]={tagname:"item1323loopstatus_iopc1_loop_4_36_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1316loopstatus_iopc1_loop_4_35_5_s"]={tagname:"item1316loopstatus_iopc1_loop_4_35_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1317loopstatus_iopc1_loop_4_35_6_s"]={tagname:"item1317loopstatus_iopc1_loop_4_35_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1318loopstatus_iopc1_loop_4_35_7_s"]={tagname:"item1318loopstatus_iopc1_loop_4_35_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1319loopstatus_iopc1_loop_4_35_8_s"]={tagname:"item1319loopstatus_iopc1_loop_4_35_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1320loopstatus_iopc1_loop_4_36_1_s"]={tagname:"item1320loopstatus_iopc1_loop_4_36_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1321loopstatus_iopc1_loop_4_36_2_s"]={tagname:"item1321loopstatus_iopc1_loop_4_36_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1322loopstatus_iopc1_loop_4_36_3_s"]={tagname:"item1322loopstatus_iopc1_loop_4_36_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1333loopstatus_iopc1_loop_4_37_6_s"]={tagname:"item1333loopstatus_iopc1_loop_4_37_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1325loopstatus_iopc1_loop_4_36_6_s"]={tagname:"item1325loopstatus_iopc1_loop_4_36_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1326loopstatus_iopc1_loop_4_36_7_s"]={tagname:"item1326loopstatus_iopc1_loop_4_36_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1327loopstatus_iopc1_loop_4_36_8_s"]={tagname:"item1327loopstatus_iopc1_loop_4_36_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1328loopstatus_iopc1_loop_4_37_1_s"]={tagname:"item1328loopstatus_iopc1_loop_4_37_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1329loopstatus_iopc1_loop_4_37_2_s"]={tagname:"item1329loopstatus_iopc1_loop_4_37_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1330loopstatus_iopc1_loop_4_37_3_s"]={tagname:"item1330loopstatus_iopc1_loop_4_37_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1331loopstatus_iopc1_loop_4_37_4_s"]={tagname:"item1331loopstatus_iopc1_loop_4_37_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1332loopstatus_iopc1_loop_4_37_5_s"]={tagname:"item1332loopstatus_iopc1_loop_4_37_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
writetag("Door/东附楼2F弱电井#4/东附楼2201西门","");
}
function door2_js(){
writetag("Door/东附楼2F弱电井#4/东附楼2201东门","");
}
function door3_js(){
writetag("Door/16F弱电井#2/1602","");
}
function door4_js(){
writetag("Door/东附楼2F弱电井#4/东附楼2202东门","");
}
function door5_js(){
writetag("Door/东附楼2F弱电井#4/东附楼2204北门","");
}
function door6_js(){
writetag("Door/东附楼2F弱电井#4/东附楼2204中门","");
}
function door7_js(){
writetag("Door/16F弱电井#2/1602","");
}
function door8_js(){
writetag("Door/16F弱电井#2/1602","");
}
function door9_js(){
writetag("Door/16F弱电井#2/1602","");
}
function door10_js(){
writetag("Door/东附楼2F弱电井#3/东附楼2206","");
}
function door11_js(){
writetag("Door/东附楼2F弱电井#3/东附楼2205西门","");
}
function door12_js(){
writetag("Door/16F弱电井#2/1602","");
}
function door13_js(){
writetag("Door/16F弱电井#2/1602","");
}
function door14_js(){
writetag("Door/16F弱电井#2/1602","");
}
function door15_js(){
writetag("Door/东附楼2F弱电井#3/东附楼2209东门","");
}
function door16_js(){
writetag("user.Door/16F弱电井#2/1602_OnOff","");
}
function door17_js(){
writetag("user.Door/东附楼2F弱电井#3/东附楼2208东门_OnOff","");
}
function door18_js(){
writetag("user.Door/16F弱电井#2/1602_OnOff","");
}
function door19_js(){
writetag("Door/东附楼2F弱电井#3/东附楼2206南侧房间","");
}
function jk_js(){
var id = "jk";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="jk";
 }
}
function jk8_js(){
open_video("192.168.1.75");
}
function jk9_js(){
open_video("192.168.1.76");
}
function jk10_js(){
open_video("192.168.1.74");
}
function jk11_js(){
open_video("192.168.1.77");
}
function jk12_js(){
open_video("192.168.1.78");
}
function jk13_js(){
open_video("192.168.1.80");
}
function jk14_js(){
open_video("192.168.1.81");
}
function jk15_js(){
open_video("192.168.1.82");
}
function jk16_js(){
open_video("192.168.1.79");
}
function jk17_js(){
open_video("192.168.1.83");
}
function imageex_js(){
var id = "zm";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="zm";
 }
}
function doorx1_js(){
var id = "door";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="door";
 }
}
function zm19_js(){
writetag("ITEM602LoopControl_IOPC1_LOOP_4_33_1_C","");
}
function zm20_js(){
writetag("ITEM603LoopControl_IOPC1_LOOP_4_33_2_C","");
}
function zm21_js(){
writetag("ITEM604LoopControl_IOPC1_LOOP_4_33_3_C","");
}
function zm23_js(){
writetag("ITEM608LoopControl_IOPC1_LOOP_4_33_7_C","");
}
function zm24_js(){
writetag("ITEM610LoopControl_IOPC1_LOOP_4_34_1_C","");
}
function zm25_js(){
writetag("ITEM611LoopControl_IOPC1_LOOP_4_34_2_C","");
}
function zm26_js(){
writetag("607LoopControl_IOPC1_LOOP_4_33_6_C","");
}
function zm27_js(){
writetag("ITEM612LoopControl_IOPC1_LOOP_4_34_3_C","");
}
function zm28_js(){
writetag("ITEM606LoopControl_IOPC1_LOOP_4_33_5_C","");
}
function zm29_js(){
writetag("ITEM621LoopControl_IOPC1_LOOP_4_35_4_C","");
}
function zm30_js(){
writetag("ITEM613LoopControl_IOPC1_LOOP_4_34_4_C","");
}
function zm31_js(){
writetag("TEM616LoopControl_IOPC1_LOOP_4_34_7_C","");
}
function zm32_js(){
writetag("ITEM614LoopControl_IOPC1_LOOP_4_34_5_C","");
}
function zm33_js(){
writetag("ITEM617LoopControl_IOPC1_LOOP_4_34_8_C","");
}
function zm34_js(){
writetag("ITEM621LoopControl_IOPC1_LOOP_4_35_4_C","");
}
function zm35_js(){
writetag("ITEM620LoopControl_IOPC1_LOOP_4_35_3_C","");
}
function zm36_js(){
writetag("ITEM619LoopControl_IOPC1_LOOP_4_35_2_C","");
}
function zm37_js(){
writetag("ITEM629LoopControl_IOPC1_LOOP_4_36_4_C","");
}
function zm38_js(){
writetag("ITEM622LoopControl_IOPC1_LOOP_4_35_5_C","");
}
function zm39_js(){
writetag("ITEM623LoopControl_IOPC1_LOOP_4_35_6_C","");
}
function zm40_js(){
writetag("ITEM624LoopControl_IOPC1_LOOP_4_35_7_C","");
}
function zm41_js(){
writetag("ITEM625LoopControl_IOPC1_LOOP_4_35_8_C","");
}
function zm42_js(){
writetag("ITEM626LoopControl_IOPC1_LOOP_4_36_1_C","");
}
function zm43_js(){
writetag("ITEM627LoopControl_IOPC1_LOOP_4_36_2_C","");
}
function zm44_js(){
writetag("ITEM628LoopControl_IOPC1_LOOP_4_36_3_C","");
}
function zm45_js(){
writetag("ITEM639LoopControl_IOPC1_LOOP_4_37_6_C","");
}
function zm46_js(){
writetag("ITEM631LoopControl_IOPC1_LOOP_4_36_6_C","");
}
function zm47_js(){
writetag("ITEM632LoopControl_IOPC1_LOOP_4_36_7_C","");
}
function zm48_js(){
writetag("ITEM633LoopControl_IOPC1_LOOP_4_36_8_C","");
}
function zm49_js(){
writetag("ITEM634LoopControl_IOPC1_LOOP_4_37_1_C","");
}
function zm50_js(){
writetag("ITEM635LoopControl_IOPC1_LOOP_4_37_2_C","");
}
function zm51_js(){
writetag("ITEM636LoopControl_IOPC1_LOOP_4_37_3_C","");
}
function zm52_js(){
writetag("ITEM637LoopControl_IOPC1_LOOP_4_37_4_C","");
}
function zm53_js(){
writetag("ITEM638LoopControl_IOPC1_LOOP_4_37_5_C","");
}
function zm22_js(){
writetag("ITEM602LoopControl_IOPC1_LOOP_4_33_1_C","");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door1=new swimgObj('door1','images/door_km.gif','images/door_close.gif');
db["door/东附楼2f弱电井#4/东附楼2201西门_onoff"].htmlobj.push(door1);
var door2=new swimgObj('door2','images/door_km.gif','images/door_close.gif');
db["door/东附楼2f弱电井#4/东附楼2201东门_onoff"].htmlobj.push(door2);
var door3=new swimgObj('door3','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door3);
var door4=new swimgObj('door4','images/door_km.gif','images/door_close.gif');
db["door/东附楼2f弱电井#4/东附楼2202东门_onoff"].htmlobj.push(door4);
var door5=new swimgObj('door5','images/door_km.gif','images/door_close.gif');
db["door/东附楼2f弱电井#4/东附楼2204北门_onoff"].htmlobj.push(door5);
var door6=new swimgObj('door6','images/door_km.gif','images/door_close.gif');
db["door/东附楼2f弱电井#4/东附楼2204中门_onoff"].htmlobj.push(door6);
var door7=new swimgObj('door7','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door7);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/东附楼2f弱电井#3/东附楼2203东门_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/东附楼2f弱电井#3/东附楼2206_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/东附楼2f弱电井#3/东附楼2205西门_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door13);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/东附楼2f弱电井#3/东附楼2209东门_onoff"].htmlobj.push(door15);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door16);
var door17=new swimgObj('door17','images/door_km.gif','images/door_close.gif');
db["door/东附楼2f弱电井#3/东附楼2208东门_onoff"].htmlobj.push(door17);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door18);
var door19=new swimgObj('door19','images/door_km.gif','images/door_close.gif');
db["door/东附楼2f弱电井#3/东附楼2206南侧房间_onoff"].htmlobj.push(door19);
var zm19=new swimgObj('zm19','images/light_on.png','images/light_off.png');
db["item1296loopstatus_iopc1_loop_4_33_1_s"].htmlobj.push(zm19);
var zm20=new swimgObj('zm20','images/light_on.png','images/light_off.png');
db["item1297loopstatus_iopc1_loop_4_33_2_s"].htmlobj.push(zm20);
var zm21=new swimgObj('zm21','images/light_on.png','images/light_off.png');
db["item1298loopstatus_iopc1_loop_4_33_3_s"].htmlobj.push(zm21);
var zm23=new swimgObj('zm23','images/light_on.png','images/light_off.png');
db["item1302loopstatus_iopc1_loop_4_33_7_s"].htmlobj.push(zm23);
var zm24=new swimgObj('zm24','images/light_on.png','images/light_off.png');
db["item1304loopstatus_iopc1_loop_4_34_1_s"].htmlobj.push(zm24);
var zm25=new swimgObj('zm25','images/light_on.png','images/light_off.png');
db["item1305loopstatus_iopc1_loop_4_34_2_s"].htmlobj.push(zm25);
var zm26=new swimgObj('zm26','images/light_on.png','images/light_off.png');
db["item1301loopstatus_iopc1_loop_4_33_6_s"].htmlobj.push(zm26);
var zm27=new swimgObj('zm27','images/light_on.png','images/light_off.png');
db["item1306loopstatus_iopc1_loop_4_34_3_s"].htmlobj.push(zm27);
var zm28=new swimgObj('zm28','images/light_on.png','images/light_off.png');
db["item1300loopstatus_iopc1_loop_4_33_5_s"].htmlobj.push(zm28);
var zm29=new swimgObj('zm29','images/light_on.png','images/light_off.png');
db["item1315loopstatus_iopc1_loop_4_35_4_s"].htmlobj.push(zm29);
var zm30=new swimgObj('zm30','images/light_on.png','images/light_off.png');
db["item1307loopstatus_iopc1_loop_4_34_4_s"].htmlobj.push(zm30);
var zm31=new swimgObj('zm31','images/light_on.png','images/light_off.png');
db["item1310loopstatus_iopc1_loop_4_34_7_s"].htmlobj.push(zm31);
var zm32=new swimgObj('zm32','images/light_on.png','images/light_off.png');
db["item1308loopstatus_iopc1_loop_4_34_5_s"].htmlobj.push(zm32);
var zm33=new swimgObj('zm33','images/light_on.png','images/light_off.png');
db["item1311loopstatus_iopc1_loop_4_34_8_s"].htmlobj.push(zm33);
var zm34=new swimgObj('zm34','images/light_on.png','images/light_off.png');
db["item1315loopstatus_iopc1_loop_4_35_4_s"].htmlobj.push(zm34);
var zm35=new swimgObj('zm35','images/light_on.png','images/light_off.png');
db["item1314loopstatus_iopc1_loop_4_35_3_s"].htmlobj.push(zm35);
var zm36=new swimgObj('zm36','images/light_on.png','images/light_off.png');
db["item1313loopstatus_iopc1_loop_4_35_2_s"].htmlobj.push(zm36);
var zm37=new swimgObj('zm37','images/light_on.png','images/light_off.png');
db["item1323loopstatus_iopc1_loop_4_36_4_s"].htmlobj.push(zm37);
var zm38=new swimgObj('zm38','images/light_on.png','images/light_off.png');
db["item1316loopstatus_iopc1_loop_4_35_5_s"].htmlobj.push(zm38);
var zm39=new swimgObj('zm39','images/light_on.png','images/light_off.png');
db["item1317loopstatus_iopc1_loop_4_35_6_s"].htmlobj.push(zm39);
var zm40=new swimgObj('zm40','images/light_on.png','images/light_off.png');
db["item1318loopstatus_iopc1_loop_4_35_7_s"].htmlobj.push(zm40);
var zm41=new swimgObj('zm41','images/light_on.png','images/light_off.png');
db["item1319loopstatus_iopc1_loop_4_35_8_s"].htmlobj.push(zm41);
var zm42=new swimgObj('zm42','images/light_on.png','images/light_off.png');
db["item1320loopstatus_iopc1_loop_4_36_1_s"].htmlobj.push(zm42);
var zm43=new swimgObj('zm43','images/light_on.png','images/light_off.png');
db["item1321loopstatus_iopc1_loop_4_36_2_s"].htmlobj.push(zm43);
var zm44=new swimgObj('zm44','images/light_on.png','images/light_off.png');
db["item1322loopstatus_iopc1_loop_4_36_3_s"].htmlobj.push(zm44);
var zm45=new swimgObj('zm45','images/light_on.png','images/light_off.png');
db["item1333loopstatus_iopc1_loop_4_37_6_s"].htmlobj.push(zm45);
var zm46=new swimgObj('zm46','images/light_on.png','images/light_off.png');
db["item1325loopstatus_iopc1_loop_4_36_6_s"].htmlobj.push(zm46);
var zm47=new swimgObj('zm47','images/light_on.png','images/light_off.png');
db["item1326loopstatus_iopc1_loop_4_36_7_s"].htmlobj.push(zm47);
var zm48=new swimgObj('zm48','images/light_on.png','images/light_off.png');
db["item1327loopstatus_iopc1_loop_4_36_8_s"].htmlobj.push(zm48);
var zm49=new swimgObj('zm49','images/light_on.png','images/light_off.png');
db["item1328loopstatus_iopc1_loop_4_37_1_s"].htmlobj.push(zm49);
var zm50=new swimgObj('zm50','images/light_on.png','images/light_off.png');
db["item1329loopstatus_iopc1_loop_4_37_2_s"].htmlobj.push(zm50);
var zm51=new swimgObj('zm51','images/light_on.png','images/light_off.png');
db["item1330loopstatus_iopc1_loop_4_37_3_s"].htmlobj.push(zm51);
var zm52=new swimgObj('zm52','images/light_on.png','images/light_off.png');
db["item1331loopstatus_iopc1_loop_4_37_4_s"].htmlobj.push(zm52);
var zm53=new swimgObj('zm53','images/light_on.png','images/light_off.png');
db["item1332loopstatus_iopc1_loop_4_37_5_s"].htmlobj.push(zm53);
var zm22=new swimgObj('zm22','images/light_on.png','images/light_off.png');
db["item1296loopstatus_iopc1_loop_4_33_1_s"].htmlobj.push(zm22);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/东楼2F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 东楼2F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/2F.jpg" />
<img id="door1" style="position:absolute;border:0px;left:520px;top:208px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door1_js();"/>
<img id="door2" style="position:absolute;border:0px;left:688px;top:208px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door2_js();"/>
<img id="door3" style="position:absolute;border:0px;left:512px;top:296px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door3_js();"/>
<img id="door4" style="position:absolute;border:0px;left:600px;top:296px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door4_js();"/>
<img id="door5" style="position:absolute;border:0px;left:728px;top:280px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door5_js();"/>
<img id="door6" style="position:absolute;border:0px;left:728px;top:328px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door6_js();"/>
<img id="door7" style="position:absolute;border:0px;left:727px;top:366px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door7_js();"/>
<img id="door8" style="position:absolute;border:0px;left:904px;top:368px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:1392px;top:360px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:896px;top:456px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:1032px;top:456px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:1248px;top:464px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:1144px;top:608px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door14" style="position:absolute;border:0px;left:1064px;top:776px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:1312px;top:776px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door16" style="position:absolute;border:0px;left:968px;top:1072px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door17" style="position:absolute;border:0px;left:1272px;top:1072px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door17_js();"/>
<img id="door18" style="position:absolute;border:0px;left:1344px;top:1072px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="door19" style="position:absolute;border:0px;left:896px;top:512px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door19_js();"/>
<img id="jk" style="position:absolute;border:0px;left:1520px;top:16px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:488px;top:256px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:864px;top:256px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:456px;top:416px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:816px;top:384px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:784px;top:416px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:1000px;top:672px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:880px;top:816px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="jk15" style="position:absolute;border:0px;left:1448px;top:912px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk15_js();"/>
<img id="jk16" style="position:absolute;border:0px;left:1248px;top:416px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk16_js();"/>
<img id="jk17" style="position:absolute;border:0px;left:816px;top:216px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk17_js();"/>
<img id="imageex" style="position:absolute;border:0px;left:1592px;top:16px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:imageex_js();"/>
<img id="doorx1" style="position:absolute;border:0px;left:1456px;top:16px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:doorx1_js();"/>
<img id="zm19" style="position:absolute;border:0px;left:616px;top:252px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm19_js();" title="4-43-1"/>
<img id="zm20" style="position:absolute;border:0px;left:736px;top:232px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm20_js();" title="4-33-2"/>
<img id="zm21" style="position:absolute;border:0px;left:560px;top:408px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm21_js();" title="4-33-3"/>
<img id="zm23" style="position:absolute;border:0px;left:464px;top:344px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm23_js();" title="4-33-7"/>
<img id="zm24" style="position:absolute;border:0px;left:840px;top:304px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm24_js();" title="4-34-1"/>
<img id="zm25" style="position:absolute;border:0px;left:792px;top:304px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm25_js();" title="4-34-2"/>
<img id="zm26" style="position:absolute;border:0px;left:816px;top:336px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm26_js();" title="4-33-6"/>
<img id="zm27" style="position:absolute;border:0px;left:952px;top:416px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm27_js();" title="4-34-3"/>
<img id="zm28" style="position:absolute;border:0px;left:1128px;top:416px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm28_js();" title="4-33-5"/>
<img id="zm29" style="position:absolute;border:0px;left:952px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm29_js();" title="4-35-4"/>
<img id="zm30" style="position:absolute;border:0px;left:960px;top:816px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm30_js();" title="4-34-4"/>
<img id="zm31" style="position:absolute;border:0px;left:1200px;top:816px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm31_js();" title="4-34-7"/>
<img id="zm32" style="position:absolute;border:0px;left:1488px;top:824px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm32_js();" title="4-34-5"/>
<img id="zm33" style="position:absolute;border:0px;left:1440px;top:872px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm33_js();" title="4-34-8"/>
<img id="zm34" style="position:absolute;border:0px;left:1088px;top:360px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm34_js();" title="4-35-4"/>
<img id="zm35" style="position:absolute;border:0px;left:1200px;top:360px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm35_js();" title="4-35-3"/>
<img id="zm36" style="position:absolute;border:0px;left:1376px;top:264px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm36_js();" title="4-35-2"/>
<img id="zm37" style="position:absolute;border:0px;left:916px;top:272px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm37_js();" title="4-36-4"/>
<img id="zm38" style="position:absolute;border:0px;left:1032px;top:344px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm38_js();" title="4-35-5"/>
<img id="zm39" style="position:absolute;border:0px;left:1031px;top:312px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm39_js();" title="4-35-6"/>
<img id="zm40" style="position:absolute;border:0px;left:1029px;top:281px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm40_js();" title="4-35-7"/>
<img id="zm41" style="position:absolute;border:0px;left:1026px;top:251px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm41_js();" title="4-35-8"/>
<img id="zm42" style="position:absolute;border:0px;left:944px;top:248px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm42_js();" title="4-36-1"/>
<img id="zm43" style="position:absolute;border:0px;left:944px;top:186px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm43_js();" title="4-36-2"/>
<img id="zm44" style="position:absolute;border:0px;left:944px;top:216px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm44_js();" title="4-36-3"/>
<img id="zm45" style="position:absolute;border:0px;left:946px;top:274px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm45_js();" title="4-37-6"/>
<img id="zm46" style="position:absolute;border:0px;left:1245px;top:345px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm46_js();" title="4-36-6"/>
<img id="zm47" style="position:absolute;border:0px;left:1242px;top:311px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm47_js();" title="4-36-7"/>
<img id="zm48" style="position:absolute;border:0px;left:1240px;top:282px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm48_js();" title="4-36-8"/>
<img id="zm49" style="position:absolute;border:0px;left:1235px;top:250px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm49_js();" title="4-37-1"/>
<img id="zm50" style="position:absolute;border:0px;left:1299px;top:280px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm50_js();" title="4-37-2"/>
<img id="zm51" style="position:absolute;border:0px;left:1294px;top:251px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm51_js();" title="4-37-3"/>
<img id="zm52" style="position:absolute;border:0px;left:1288px;top:224px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm52_js();" title="4-37-4"/>
<img id="zm53" style="position:absolute;border:0px;left:1284px;top:194px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm53_js();" title="4-37-5"/>
<img id="zm22" style="position:absolute;border:0px;left:672px;top:408px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm22_js();" title="4-43-1"/>

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
