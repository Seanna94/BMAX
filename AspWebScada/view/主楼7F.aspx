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
<title>主楼7F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 45;
db["door/7f弱电井#1/704小会议室_onoff"]={tagname:"door/7f弱电井#1/704小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#1/706_onoff"]={tagname:"door/7f弱电井#1/706_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#1/708_onoff"]={tagname:"door/7f弱电井#1/708_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#2/714_onoff"]={tagname:"door/7f弱电井#2/714_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#2/716_onoff"]={tagname:"door/7f弱电井#2/716_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#2/718_onoff"]={tagname:"door/7f弱电井#2/718_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#2/720西门_onoff"]={tagname:"door/7f弱电井#2/720西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#2/722西门_onoff"]={tagname:"door/7f弱电井#2/722西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#2/722东门_onoff"]={tagname:"door/7f弱电井#2/722东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#1/702北门会议室_onoff"]={tagname:"door/7f弱电井#1/702北门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#1/702南门会议室_onoff"]={tagname:"door/7f弱电井#1/702南门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#1/701小会议室_onoff"]={tagname:"door/7f弱电井#1/701小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#1/703_onoff"]={tagname:"door/7f弱电井#1/703_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#1/705_onoff"]={tagname:"door/7f弱电井#1/705_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#1/711_onoff"]={tagname:"door/7f弱电井#1/711_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#1/713_onoff"]={tagname:"door/7f弱电井#1/713_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#1/715_onoff"]={tagname:"door/7f弱电井#1/715_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#1/717西门_onoff"]={tagname:"door/7f弱电井#1/717西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#1/717东门_onoff"]={tagname:"door/7f弱电井#1/717东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#1/719西门_onoff"]={tagname:"door/7f弱电井#1/719西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#1/719东门_onoff"]={tagname:"door/7f弱电井#1/719东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#2/721西门_onoff"]={tagname:"door/7f弱电井#2/721西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#2/721东门_onoff"]={tagname:"door/7f弱电井#2/721东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#2/723西门_onoff"]={tagname:"door/7f弱电井#2/723西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#2/723东门_onoff"]={tagname:"door/7f弱电井#2/723东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#2/725_onoff"]={tagname:"door/7f弱电井#2/725_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/7f弱电井#2/727_onoff"]={tagname:"door/7f弱电井#2/727_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item932loopstatus_iopc1_loop_1_70_1_s"]={tagname:"item932loopstatus_iopc1_loop_1_70_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item944loopstatus_iopc1_loop_1_72_3_s"]={tagname:"item944loopstatus_iopc1_loop_1_72_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item950loopstatus_iopc1_loop_1_73_3_s"]={tagname:"item950loopstatus_iopc1_loop_1_73_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item949loopstatus_iopc1_loop_1_73_2_s"]={tagname:"item949loopstatus_iopc1_loop_1_73_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1287loopstatus_iopc1_loop_4_31_8_s"]={tagname:"item1287loopstatus_iopc1_loop_4_31_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item939loopstatus_iopc1_loop_1_71_2_s"]={tagname:"item939loopstatus_iopc1_loop_1_71_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item947loopstatus_iopc1_loop_1_72_6_s"]={tagname:"item947loopstatus_iopc1_loop_1_72_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item933loopstatus_iopc1_loop_1_70_2_s"]={tagname:"item933loopstatus_iopc1_loop_1_70_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item934loopstatus_iopc1_loop_1_70_3_s"]={tagname:"item934loopstatus_iopc1_loop_1_70_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item937loopstatus_iopc1_loop_1_70_6_s"]={tagname:"item937loopstatus_iopc1_loop_1_70_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item936loopstatus_iopc1_loop_1_70_5_s"]={tagname:"item936loopstatus_iopc1_loop_1_70_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item948loopstatus_iopc1_loop_1_73_1_s"]={tagname:"item948loopstatus_iopc1_loop_1_73_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item951loopstatus_iopc1_loop_1_73_4_s"]={tagname:"item951loopstatus_iopc1_loop_1_73_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item952loopstatus_iopc1_loop_1_73_5_s"]={tagname:"item952loopstatus_iopc1_loop_1_73_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item953loopstatus_iopc1_loop_1_73_6_s"]={tagname:"item953loopstatus_iopc1_loop_1_73_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item957loopstatus_iopc1_loop_1_74_4_s"]={tagname:"item957loopstatus_iopc1_loop_1_74_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item954loopstatus_iopc1_loop_1_74_1_s"]={tagname:"item954loopstatus_iopc1_loop_1_74_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item943loopstatus_iopc1_loop_1_72_2_s"]={tagname:"item943loopstatus_iopc1_loop_1_72_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
    
   
     
  setTimeout(init,200);

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
writetag("user.Door/7F弱电井#1/704小会议室_OnOff","");
}
function door2_js(){
writetag("user.Door/7F弱电井#1/706_OnOff","");
}
function door3_js(){
writetag("user.Door/7F弱电井#1/708_OnOff","");
}
function door4_js(){
writetag("user.Door/7F弱电井#2/714_OnOff","");
}
function door5_js(){
writetag("user.Door/7F弱电井#2/716_OnOff","");
}
function door8_js(){
writetag("user.Door/7F弱电井#2/718_OnOff","");
}
function door9_js(){
writetag("user.Door/7F弱电井#2/720西门_OnOff","");
}
function door10_js(){
writetag("user.Door/7F弱电井#2/722西门_OnOff","");
}
function door11_js(){
writetag("user.Door/7F弱电井#2/722东门_OnOff","");
}
function door12_js(){
writetag("Door/7F弱电井#1/702北门会议室","");
}
function door13_js(){
writetag("Door/7F弱电井#1/702南门会议室","");
}
function door14_js(){
writetag("Door/7F弱电井#1/701小会议室","");
}
function door15_js(){
writetag("Door/7F弱电井#1/703","");
}
function door16_js(){
writetag("Door/7F弱电井#1/705","");
}
function door18_js(){
writetag("Door/7F弱电井#1/711","");
}
function door19_js(){
writetag("Door/7F弱电井#1/713","");
}
function door20_js(){
writetag("Door/7F弱电井#1/715","");
}
function door21_js(){
writetag("Door/7F弱电井#1/717西门","");
}
function door22_js(){
writetag("Door/7F弱电井#1/717东门","");
}
function door23_js(){
writetag("Door/7F弱电井#1/719西门","");
}
function door24_js(){
writetag("Door/7F弱电井#1/719东门","");
}
function door25_js(){
writetag("Door/7F弱电井#2/721西门","");
}
function door26_js(){
writetag("Door/7F弱电井#2/721东门","");
}
function door27_js(){
writetag("Door/7F弱电井#2/723西门","");
}
function door28_js(){
writetag("Door/7F弱电井#2/723东门","");
}
function door29_js(){
writetag("Door/7F弱电井#2/725","");
}
function door30_js(){
writetag("Door/7F弱电井#2/727","");
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
writetag("ITEM238LoopControl_IOPC1_LOOP_1_70_1_C","");
}
function zm2_js(){
writetag("ITEM250LoopControl_IOPC1_LOOP_1_72_3_C","");
}
function zm3_js(){
writetag("ITEM256LoopControl_IOPC1_LOOP_1_73_3_C","");
}
function zm4_js(){
writetag("ITEM255LoopControl_IOPC1_LOOP_1_73_2_C","");
}
function zm5_js(){
writetag("ITEM247LoopControl_IOPC1_LOOP_1_71_4_C","");
}
function zm6_js(){
writetag("ITEM245LoopControl_IOPC1_LOOP_1_71_2_C","");
}
function zm7_js(){
writetag("ITEM253LoopControl_IOPC1_LOOP_1_72_6_C","");
}
function zm8_js(){
writetag("ITEM239LoopControl_IOPC1_LOOP_1_70_2_C","");
}
function zm9_js(){
writetag("ITEM240LoopControl_IOPC1_LOOP_1_70_3_C","");
}
function zm10_js(){
writetag("ITEM243LoopControl_IOPC1_LOOP_1_70_6_C","");
}
function zm11_js(){
writetag("ITEM245LoopControl_IOPC1_LOOP_1_71_2_C","");
}
function zm12_js(){
writetag("ITEM242LoopControl_IOPC1_LOOP_1_70_5_C","");
}
function zm13_js(){
writetag("ITEM254LoopControl_IOPC1_LOOP_1_73_1_C","");
}
function zm14_js(){
writetag("ITEM257LoopControl_IOPC1_LOOP_1_73_4_C","");
}
function zm15_js(){
writetag("ITEM256LoopControl_IOPC1_LOOP_1_73_3_C","");
}
function zm16_js(){
writetag("ITEM258LoopControl_IOPC1_LOOP_1_73_5_C","");
}
function zm17_js(){
writetag("ITEM259LoopControl_IOPC1_LOOP_1_73_6_C","");
}
function zm18_js(){
writetag("ITEM263LoopControl_IOPC1_LOOP_1_74_4_C","");
}
function zm19_js(){
writetag("ITEM260LoopControl_IOPC1_LOOP_1_74_1_C","");
}
function zm20_js(){
writetag("ITEM249LoopControl_IOPC1_LOOP_1_72_2_C","");
}
function jk2_js(){
open_video2("192.168.3.101");
}
function jk3_js(){
open_video2("192.168.3.99");
}
function jk4_js(){
open_video2("192.168.3.100");
}
function jk5_js(){
open_video2("192.168.3.112");
}
function jk6_js(){
open_video2("192.168.3.106");
}
function jk7_js(){
open_video2("192.168.3.107");
}
function jk8_js(){
open_video2("192.168.3.105");
}
function jk9_js(){
open_video2("192.168.3.104");
}
function jk10_js(){
open_video2("192.168.3.111");
}
function jk11_js(){
open_video2("192.168.3.110");
}
function jk12_js(){
open_video2("192.168.3.109");
}
function jk13_js(){
open_video2("192.168.3.96");
}
function jk14_js(){
open_video2("192.168.3.98");
}
function jk15_js(){
open_video2("192.168.3.97");
}
function jk16_js(){
open_video2("192.168.3.108");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door1=new swimgObj('door1','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#1/704小会议室_onoff"].htmlobj.push(door1);
var door2=new swimgObj('door2','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#1/706_onoff"].htmlobj.push(door2);
var door3=new swimgObj('door3','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#1/708_onoff"].htmlobj.push(door3);
var door4=new swimgObj('door4','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#2/714_onoff"].htmlobj.push(door4);
var door5=new swimgObj('door5','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#2/716_onoff"].htmlobj.push(door5);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#2/718_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#2/720西门_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#2/722西门_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#2/722东门_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#1/702北门会议室_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#1/702南门会议室_onoff"].htmlobj.push(door13);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#1/701小会议室_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#1/703_onoff"].htmlobj.push(door15);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#1/705_onoff"].htmlobj.push(door16);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#1/711_onoff"].htmlobj.push(door18);
var door19=new swimgObj('door19','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#1/713_onoff"].htmlobj.push(door19);
var door20=new swimgObj('door20','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#1/715_onoff"].htmlobj.push(door20);
var door21=new swimgObj('door21','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#1/717西门_onoff"].htmlobj.push(door21);
var door22=new swimgObj('door22','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#1/717东门_onoff"].htmlobj.push(door22);
var door23=new swimgObj('door23','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#1/719西门_onoff"].htmlobj.push(door23);
var door24=new swimgObj('door24','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#1/719东门_onoff"].htmlobj.push(door24);
var door25=new swimgObj('door25','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#2/721西门_onoff"].htmlobj.push(door25);
var door26=new swimgObj('door26','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#2/721东门_onoff"].htmlobj.push(door26);
var door27=new swimgObj('door27','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#2/723西门_onoff"].htmlobj.push(door27);
var door28=new swimgObj('door28','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#2/723东门_onoff"].htmlobj.push(door28);
var door29=new swimgObj('door29','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#2/725_onoff"].htmlobj.push(door29);
var door30=new swimgObj('door30','images/door_km.gif','images/door_close.gif');
db["door/7f弱电井#2/727_onoff"].htmlobj.push(door30);
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item932loopstatus_iopc1_loop_1_70_1_s"].htmlobj.push(zm1);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item944loopstatus_iopc1_loop_1_72_3_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item950loopstatus_iopc1_loop_1_73_3_s"].htmlobj.push(zm3);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item949loopstatus_iopc1_loop_1_73_2_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item939loopstatus_iopc1_loop_1_71_2_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item947loopstatus_iopc1_loop_1_72_6_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item933loopstatus_iopc1_loop_1_70_2_s"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item934loopstatus_iopc1_loop_1_70_3_s"].htmlobj.push(zm9);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item937loopstatus_iopc1_loop_1_70_6_s"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item939loopstatus_iopc1_loop_1_71_2_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item936loopstatus_iopc1_loop_1_70_5_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item948loopstatus_iopc1_loop_1_73_1_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item951loopstatus_iopc1_loop_1_73_4_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item950loopstatus_iopc1_loop_1_73_3_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item952loopstatus_iopc1_loop_1_73_5_s"].htmlobj.push(zm16);
var zm17=new swimgObj('zm17','images/light_on.png','images/light_off.png');
db["item953loopstatus_iopc1_loop_1_73_6_s"].htmlobj.push(zm17);
var zm18=new swimgObj('zm18','images/light_on.png','images/light_off.png');
db["item957loopstatus_iopc1_loop_1_74_4_s"].htmlobj.push(zm18);
var zm19=new swimgObj('zm19','images/light_on.png','images/light_off.png');
db["item954loopstatus_iopc1_loop_1_74_1_s"].htmlobj.push(zm19);
var zm20=new swimgObj('zm20','images/light_on.png','images/light_off.png');
db["item943loopstatus_iopc1_loop_1_72_2_s"].htmlobj.push(zm20);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/主楼7F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼7F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/7F.jpg" />
<img id="door1" style="position:absolute;border:0px;left:600px;top:456px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door1_js();"/>
<img id="door2" style="position:absolute;border:0px;left:598px;top:389px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door2_js();"/>
<img id="door3" style="position:absolute;border:0px;left:646px;top:389px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door3_js();"/>
<img id="door4" style="position:absolute;border:0px;left:702px;top:389px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door4_js();"/>
<img id="door5" style="position:absolute;border:0px;left:782px;top:389px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door5_js();"/>
<img id="door8" style="position:absolute;border:0px;left:776px;top:440px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:872px;top:432px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:968px;top:432px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:1168px;top:432px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:288px;top:512px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:280px;top:568px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door14" style="position:absolute;border:0px;left:368px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:352px;top:728px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door16" style="position:absolute;border:0px;left:448px;top:728px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door18" style="position:absolute;border:0px;left:528px;top:728px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="door19" style="position:absolute;border:0px;left:609px;top:734px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door19_js();"/>
<img id="door20" style="position:absolute;border:0px;left:625px;top:646px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door20_js();"/>
<img id="door21" style="position:absolute;border:0px;left:663px;top:659px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door21_js();"/>
<img id="door22" style="position:absolute;border:0px;left:759px;top:659px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door22_js();"/>
<img id="door23" style="position:absolute;border:0px;left:822px;top:659px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door23_js();"/>
<img id="door24" style="position:absolute;border:0px;left:909px;top:659px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door24_js();"/>
<img id="door25" style="position:absolute;border:0px;left:973px;top:659px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door25_js();"/>
<img id="door26" style="position:absolute;border:0px;left:1072px;top:659px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door26_js();"/>
<img id="door27" style="position:absolute;border:0px;left:1131px;top:659px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door27_js();"/>
<img id="door28" style="position:absolute;border:0px;left:1224px;top:659px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door28_js();"/>
<img id="door29" style="position:absolute;border:0px;left:1285px;top:659px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door29_js();"/>
<img id="door30" style="position:absolute;border:0px;left:1379px;top:659px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door30_js();"/>
<img id="j1" style="position:absolute;border:0px;left:1448px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j1_js();"/>
<img id="d1" style="position:absolute;border:0px;left:1528px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d1_js();"/>
<img id="m1" style="position:absolute;border:0px;left:1376px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m1_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:352px;top:480px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="1-70-1"/>
<img id="zm2" style="position:absolute;border:0px;left:248px;top:680px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="1-72-3"/>
<img id="zm3" style="position:absolute;border:0px;left:248px;top:728px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="1-73-3"/>
<img id="zm4" style="position:absolute;border:0px;left:272px;top:616px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="1-73-2"/>
<img id="zm5" style="position:absolute;border:0px;left:394px;top:613px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="1-72-4"/>
<img id="zm6" style="position:absolute;border:0px;left:616px;top:616px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="1-71-2"/>
<img id="zm7" style="position:absolute;border:0px;left:1200px;top:616px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="1-72-6"/>
<img id="zm8" style="position:absolute;border:0px;left:544px;top:480px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="1-70-2"/>
<img id="zm9" style="position:absolute;border:0px;left:448px;top:480px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="1-70-3"/>
<img id="zm10" style="position:absolute;border:0px;left:701px;top:480px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="1-70-6"/>
<img id="zm11" style="position:absolute;border:0px;left:1120px;top:477px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="1-71-2"/>
<img id="zm12" style="position:absolute;border:0px;left:1344px;top:440px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="1-70-5"/>
<img id="zm13" style="position:absolute;border:0px;left:1440px;top:456px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="1-73-1"/>
<img id="zm14" style="position:absolute;border:0px;left:1392px;top:520px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="1-73-4"/>
<img id="zm15" style="position:absolute;border:0px;left:1504px;top:528px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="1-74-3"/>
<img id="zm16" style="position:absolute;border:0px;left:1528px;top:576px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="1-73-5"/>
<img id="zm17" style="position:absolute;border:0px;left:1560px;top:520px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm17_js();" title="1-73-6"/>
<img id="zm18" style="position:absolute;border:0px;left:1584px;top:568px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm18_js();" title="1-74-4"/>
<img id="zm19" style="position:absolute;border:0px;left:1440px;top:648px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm19_js();" title="1-74-1"/>
<img id="zm20" style="position:absolute;border:0px;left:1032px;top:616px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm20_js();" title="1-72-2"/>
<img id="jk2" style="position:absolute;border:0px;left:880px;top:576px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:808px;top:608px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:930px;top:609px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:1376px;top:704px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:1512px;top:616px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:1408px;top:592px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:1472px;top:488px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:1328px;top:416px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:1216px;top:440px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:1016px;top:440px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:840px;top:408px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:312px;top:472px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:232px;top:704px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="jk15" style="position:absolute;border:0px;left:256px;top:632px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk15_js();"/>
<img id="jk16" style="position:absolute;border:0px;left:352px;top:568px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk16_js();"/>

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
