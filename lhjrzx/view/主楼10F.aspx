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
<title>主楼10F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 55;
db["door/10f弱电井#1/1004小会议室_onoff"]={tagname:"door/10f弱电井#1/1004小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1006_onoff"]={tagname:"door/10f弱电井#1/1006_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1008_onoff"]={tagname:"door/10f弱电井#1/1008_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1014_onoff"]={tagname:"door/10f弱电井#1/1014_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1016_onoff"]={tagname:"door/10f弱电井#1/1016_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1018小会议室_onoff"]={tagname:"door/10f弱电井#1/1018小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#2/1020西门_onoff"]={tagname:"door/10f弱电井#2/1020西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#2/1020东门_onoff"]={tagname:"door/10f弱电井#2/1020东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#2/1022西门_onoff"]={tagname:"door/10f弱电井#2/1022西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#2/1022东门_onoff"]={tagname:"door/10f弱电井#2/1022东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#2/1024西门_onoff"]={tagname:"door/10f弱电井#2/1024西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#2/1024东门_onoff"]={tagname:"door/10f弱电井#2/1024东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#2/1027_onoff"]={tagname:"door/10f弱电井#2/1027_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1002北门会议室_onoff"]={tagname:"door/10f弱电井#1/1002北门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1002南门会议室_onoff"]={tagname:"door/10f弱电井#1/1002南门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1001小会议室_onoff"]={tagname:"door/10f弱电井#1/1001小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1003_onoff"]={tagname:"door/10f弱电井#1/1003_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1005_onoff"]={tagname:"door/10f弱电井#1/1005_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1011_onoff"]={tagname:"door/10f弱电井#1/1011_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1013_onoff"]={tagname:"door/10f弱电井#1/1013_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1015_onoff"]={tagname:"door/10f弱电井#1/1015_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1019西门_onoff"]={tagname:"door/10f弱电井#1/1019西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1019东门_onoff"]={tagname:"door/10f弱电井#1/1019东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#2/1021西门_onoff"]={tagname:"door/10f弱电井#2/1021西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#2/1021东门_onoff"]={tagname:"door/10f弱电井#2/1021东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#2/1023西门_onoff"]={tagname:"door/10f弱电井#2/1023西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#2/1023东门_onoff"]={tagname:"door/10f弱电井#2/1023东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1017西门_onoff"]={tagname:"door/10f弱电井#1/1017西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#1/1017东门_onoff"]={tagname:"door/10f弱电井#1/1017东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/10f弱电井#2/1025_onoff"]={tagname:"door/10f弱电井#2/1025_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item861loopstatus_iopc1_loop_1_57_6_s"]={tagname:"item861loopstatus_iopc1_loop_1_57_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item863loopstatus_iopc1_loop_1_57_8_s"]={tagname:"item863loopstatus_iopc1_loop_1_57_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item857loopstatus_iopc1_loop_1_57_2_s"]={tagname:"item857loopstatus_iopc1_loop_1_57_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item862loopstatus_iopc1_loop_1_57_7_s"]={tagname:"item862loopstatus_iopc1_loop_1_57_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item858loopstatus_iopc1_loop_1_57_3_s"]={tagname:"item858loopstatus_iopc1_loop_1_57_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item860loopstatus_iopc1_loop_1_57_5_s"]={tagname:"item860loopstatus_iopc1_loop_1_57_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item859loopstatus_iopc1_loop_1_57_4_s"]={tagname:"item859loopstatus_iopc1_loop_1_57_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item856loopstatus_iopc1_loop_1_57_1_s"]={tagname:"item856loopstatus_iopc1_loop_1_57_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item867loopstatus_iopc1_loop_1_58_4_s"]={tagname:"item867loopstatus_iopc1_loop_1_58_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item864loopstatus_iopc1_loop_1_58_1_s"]={tagname:"item864loopstatus_iopc1_loop_1_58_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item868loopstatus_iopc1_loop_1_58_5_s"]={tagname:"item868loopstatus_iopc1_loop_1_58_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item873loopstatus_iopc1_loop_1_59_4_s"]={tagname:"item873loopstatus_iopc1_loop_1_59_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item871loopstatus_iopc1_loop_1_59_2_s"]={tagname:"item871loopstatus_iopc1_loop_1_59_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item879loopstatus_iopc1_loop_1_60_4_s"]={tagname:"item879loopstatus_iopc1_loop_1_60_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item870loopstatus_iopc1_loop_1_59_1_s"]={tagname:"item870loopstatus_iopc1_loop_1_59_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item874loopstatus_iopc1_loop_1_59_5_s"]={tagname:"item874loopstatus_iopc1_loop_1_59_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item875loopstatus_iopc1_loop_1_59_6_s"]={tagname:"item875loopstatus_iopc1_loop_1_59_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item877loopstatus_iopc1_loop_1_60_2_s"]={tagname:"item877loopstatus_iopc1_loop_1_60_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item876loopstatus_iopc1_loop_1_60_1_s"]={tagname:"item876loopstatus_iopc1_loop_1_60_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item865loopstatus_iopc1_loop_1_58_2_s"]={tagname:"item865loopstatus_iopc1_loop_1_58_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item866loopstatus_iopc1_loop_1_58_3_s"]={tagname:"item866loopstatus_iopc1_loop_1_58_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item721loopstatus_iopc1_loop_1_34_4_s"]={tagname:"item721loopstatus_iopc1_loop_1_34_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item894loopstatus_iopc1_loop_1_63_5_s"]={tagname:"item894loopstatus_iopc1_loop_1_63_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item891loopstatus_iopc1_loop_1_63_2_s"]={tagname:"item891loopstatus_iopc1_loop_1_63_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item892loopstatus_iopc1_loop_1_63_3_s"]={tagname:"item892loopstatus_iopc1_loop_1_63_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
writetag("Door/10F弱电井#1/1004小会议室","");
}
function door3_js(){
writetag("Door/10F弱电井#1/1006","");
}
function door4_js(){
writetag("Door/10F弱电井#1/1008","");
}
function door7_js(){
writetag("Door/10F弱电井#1/1014","");
}
function door8_js(){
writetag("Door/10F弱电井#1/1016","");
}
function door9_js(){
writetag("Door/10F弱电井#1/1018小会议室","");
}
function door10_js(){
writetag("Door/10F弱电井#2/1020西门","");
}
function door11_js(){
writetag("Door/10F弱电井#2/1020东门","");
}
function door12_js(){
writetag("Door/10F弱电井#2/1022西门","");
}
function door13_js(){
writetag("Door/10F弱电井#2/1022东门","");
}
function door14_js(){
writetag("Door/10F弱电井#2/1024西门","");
}
function door15_js(){
writetag("Door/10F弱电井#2/1024东门","");
}
function door33_js(){
writetag("Door/10F弱电井#2/1027","");
}
function door16_js(){
writetag("user.Door/10F弱电井#1/1002北门会议室_OnOff","");
}
function door17_js(){
writetag("user.Door/10F弱电井#1/1002南门会议室_OnOff","");
}
function door18_js(){
writetag("Door/10F弱电井#1/1001小会议室","");
}
function door19_js(){
writetag("Door/10F弱电井#1/1003","");
}
function door20_js(){
writetag("Door/10F弱电井#1/1005","");
}
function door21_js(){
writetag("Door/10F弱电井#1/1011","");
}
function door22_js(){
writetag("Door/10F弱电井#1/1013","");
}
function door23_js(){
writetag("Door/10F弱电井#1/1015","");
}
function door24_js(){
writetag("Door/10F弱电井#1/1019西门","");
}
function door25_js(){
writetag("Door/10F弱电井#1/1019东门","");
}
function door26_js(){
writetag("Door/10F弱电井#2/1021西门","");
}
function door27_js(){
writetag("Door/10F弱电井#2/1021东门","");
}
function door28_js(){
writetag("Door/10F弱电井#2/1023西门","");
}
function door29_js(){
writetag("Door/10F弱电井#2/1023东门","");
}
function door30_js(){
writetag("Door/10F弱电井#1/1017西门","");
}
function door31_js(){
writetag("Door/10F弱电井#1/1017东门","");
}
function door32_js(){
writetag("Door/10F弱电井#2/1025","");
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
writetag("ITEM167LoopControl_IOPC1_LOOP_1_57_6_C","");
}
function zm2_js(){
writetag("ITEM169LoopControl_IOPC1_LOOP_1_57_8_C","");
}
function zm3_js(){
writetag("ITEM163LoopControl_IOPC1_LOOP_1_57_2_C","");
}
function zm4_js(){
writetag("ITEM168LoopControl_IOPC1_LOOP_1_57_7_C","");
}
function zm5_js(){
writetag("ITEM164LoopControl_IOPC1_LOOP_1_57_3_C","");
}
function zm6_js(){
writetag("ITEM166LoopControl_IOPC1_LOOP_1_57_5_C","");
}
function zm7_js(){
writetag("ITEM165LoopControl_IOPC1_LOOP_1_57_4_C","");
}
function zm8_js(){
writetag("ITEM162LoopControl_IOPC1_LOOP_1_57_1_C","");
}
function zm9_js(){
writetag("ITEM173LoopControl_IOPC1_LOOP_1_58_4_C","");
}
function zm10_js(){
writetag("ITEM170LoopControl_IOPC1_LOOP_1_58_1_C","");
}
function zm11_js(){
writetag("ITEM174LoopControl_IOPC1_LOOP_1_58_5_C","");
}
function zm12_js(){
writetag("ITEM179LoopControl_IOPC1_LOOP_1_59_4_C","");
}
function zm13_js(){
writetag("ITEM177LoopControl_IOPC1_LOOP_1_59_2_C","");
}
function zm14_js(){
writetag("ITEM185LoopControl_IOPC1_LOOP_1_60_4_C","");
}
function zm15_js(){
writetag("ITEM176LoopControl_IOPC1_LOOP_1_59_1_C","");
}
function zm16_js(){
writetag("ITEM180LoopControl_IOPC1_LOOP_1_59_5_C","");
}
function zm17_js(){
writetag("ITEM181LoopControl_IOPC1_LOOP_1_59_6_C","");
}
function zm18_js(){
writetag("ITEM183LoopControl_IOPC1_LOOP_1_60_2_C","");
}
function zm19_js(){
writetag("ITEM182LoopControl_IOPC1_LOOP_1_60_1_C","");
}
function zm20_js(){
writetag("ITEM171LoopControl_IOPC1_LOOP_1_58_2_C","");
}
function zm21_js(){
writetag("ITEM170LoopControl_IOPC1_LOOP_1_58_1_C","");
}
function zm22_js(){
writetag("ITEM172LoopControl_IOPC1_LOOP_1_58_3_C","");
}
function zm23_js(){
writetag("ITEM27LoopControl_IOPC1_LOOP_1_34_4_C","");
}
function zm24_js(){
writetag("ITEM200LoopControl_IOPC1_LOOP_1_63_5_C","");
}
function zm25_js(){
writetag("ITEM197LoopControl_IOPC1_LOOP_1_63_2_C","");
}
function zm26_js(){
writetag("ITEM198LoopControl_IOPC1_LOOP_1_63_3_C","");
}
function jk2_js(){
open_video2("192.168.3.145");
}
function jk3_js(){
open_video2("192.168.3.143");
}
function jk4_js(){
open_video2("192.168.3.144");
}
function jk5_js(){
open_video2("192.168.3.154");
}
function jk6_js(){
open_video2("192.168.3.155");
}
function jk7_js(){
open_video2("192.168.3.150");
}
function jk8_js(){
open_video2("192.168.3.152");
}
function jk9_js(){
open_video2("192.168.3.151");
}
function jk10_js(){
open_video2("192.168.3.149");
}
function jk11_js(){
open_video2("192.168.3.148");
}
function jk12_js(){
open_video2("192.168.3.146");
}
function jk13_js(){
open_video2("192.168.3.147");
}
function jk14_js(){
open_video2("192.168.3.140");
}
function jk15_js(){
open_video2("192.168.3.153");
}
function jk16_js(){
open_video2("192.168.3.141");
}
function jk17_js(){
open_video2("192.168.3.142");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door2=new swimgObj('door2','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1004小会议室_onoff"].htmlobj.push(door2);
var door3=new swimgObj('door3','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1006_onoff"].htmlobj.push(door3);
var door4=new swimgObj('door4','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1008_onoff"].htmlobj.push(door4);
var door7=new swimgObj('door7','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1014_onoff"].htmlobj.push(door7);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1016_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1018小会议室_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#2/1020西门_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#2/1020东门_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#2/1022西门_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#2/1022东门_onoff"].htmlobj.push(door13);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#2/1024西门_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#2/1024东门_onoff"].htmlobj.push(door15);
var door33=new swimgObj('door33','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#2/1027_onoff"].htmlobj.push(door33);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1002北门会议室_onoff"].htmlobj.push(door16);
var door17=new swimgObj('door17','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1002南门会议室_onoff"].htmlobj.push(door17);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1001小会议室_onoff"].htmlobj.push(door18);
var door19=new swimgObj('door19','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1003_onoff"].htmlobj.push(door19);
var door20=new swimgObj('door20','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1005_onoff"].htmlobj.push(door20);
var door21=new swimgObj('door21','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1011_onoff"].htmlobj.push(door21);
var door22=new swimgObj('door22','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1013_onoff"].htmlobj.push(door22);
var door23=new swimgObj('door23','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1015_onoff"].htmlobj.push(door23);
var door24=new swimgObj('door24','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1019西门_onoff"].htmlobj.push(door24);
var door25=new swimgObj('door25','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1019东门_onoff"].htmlobj.push(door25);
var door26=new swimgObj('door26','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#2/1021西门_onoff"].htmlobj.push(door26);
var door27=new swimgObj('door27','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#2/1021东门_onoff"].htmlobj.push(door27);
var door28=new swimgObj('door28','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#2/1023西门_onoff"].htmlobj.push(door28);
var door29=new swimgObj('door29','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#2/1023东门_onoff"].htmlobj.push(door29);
var door30=new swimgObj('door30','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1017西门_onoff"].htmlobj.push(door30);
var door31=new swimgObj('door31','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#1/1017东门_onoff"].htmlobj.push(door31);
var door32=new swimgObj('door32','images/door_km.gif','images/door_close.gif');
db["door/10f弱电井#2/1025_onoff"].htmlobj.push(door32);
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item861loopstatus_iopc1_loop_1_57_6_s"].htmlobj.push(zm1);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item863loopstatus_iopc1_loop_1_57_8_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item857loopstatus_iopc1_loop_1_57_2_s"].htmlobj.push(zm3);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item862loopstatus_iopc1_loop_1_57_7_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item858loopstatus_iopc1_loop_1_57_3_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item860loopstatus_iopc1_loop_1_57_5_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item859loopstatus_iopc1_loop_1_57_4_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item856loopstatus_iopc1_loop_1_57_1_s"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item867loopstatus_iopc1_loop_1_58_4_s"].htmlobj.push(zm9);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item864loopstatus_iopc1_loop_1_58_1_s"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item868loopstatus_iopc1_loop_1_58_5_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item873loopstatus_iopc1_loop_1_59_4_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item871loopstatus_iopc1_loop_1_59_2_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item879loopstatus_iopc1_loop_1_60_4_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item870loopstatus_iopc1_loop_1_59_1_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item874loopstatus_iopc1_loop_1_59_5_s"].htmlobj.push(zm16);
var zm17=new swimgObj('zm17','images/light_on.png','images/light_off.png');
db["item875loopstatus_iopc1_loop_1_59_6_s"].htmlobj.push(zm17);
var zm18=new swimgObj('zm18','images/light_on.png','images/light_off.png');
db["item877loopstatus_iopc1_loop_1_60_2_s"].htmlobj.push(zm18);
var zm19=new swimgObj('zm19','images/light_on.png','images/light_off.png');
db["item876loopstatus_iopc1_loop_1_60_1_s"].htmlobj.push(zm19);
var zm20=new swimgObj('zm20','images/light_on.png','images/light_off.png');
db["item865loopstatus_iopc1_loop_1_58_2_s"].htmlobj.push(zm20);
var zm21=new swimgObj('zm21','images/light_on.png','images/light_off.png');
db["item864loopstatus_iopc1_loop_1_58_1_s"].htmlobj.push(zm21);
var zm22=new swimgObj('zm22','images/light_on.png','images/light_off.png');
db["item866loopstatus_iopc1_loop_1_58_3_s"].htmlobj.push(zm22);
var zm23=new swimgObj('zm23','images/light_on.png','images/light_off.png');
db["item721loopstatus_iopc1_loop_1_34_4_s"].htmlobj.push(zm23);
var zm24=new swimgObj('zm24','images/light_on.png','images/light_off.png');
db["item894loopstatus_iopc1_loop_1_63_5_s"].htmlobj.push(zm24);
var zm25=new swimgObj('zm25','images/light_on.png','images/light_off.png');
db["item891loopstatus_iopc1_loop_1_63_2_s"].htmlobj.push(zm25);
var zm26=new swimgObj('zm26','images/light_on.png','images/light_off.png');
db["item892loopstatus_iopc1_loop_1_63_3_s"].htmlobj.push(zm26);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/主楼10F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼10F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/10F.jpg" />
<img id="door2" style="position:absolute;border:0px;left:597px;top:446px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door2_js();"/>
<img id="door3" style="position:absolute;border:0px;left:605px;top:384px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door3_js();"/>
<img id="door4" style="position:absolute;border:0px;left:651px;top:384px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door4_js();"/>
<img id="door7" style="position:absolute;border:0px;left:707px;top:384px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door7_js();"/>
<img id="door8" style="position:absolute;border:0px;left:779px;top:384px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:779px;top:442px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:829px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:909px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:981px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:1061px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door14" style="position:absolute;border:0px;left:1125px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:1237px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door33" style="position:absolute;border:0px;left:1382px;top:643px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door33_js();"/>
<img id="door16" style="position:absolute;border:0px;left:297px;top:504px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door17" style="position:absolute;border:0px;left:289px;top:560px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door17_js();"/>
<img id="door18" style="position:absolute;border:0px;left:377px;top:634px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="door19" style="position:absolute;border:0px;left:361px;top:714px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door19_js();"/>
<img id="door20" style="position:absolute;border:0px;left:449px;top:714px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door20_js();"/>
<img id="door21" style="position:absolute;border:0px;left:537px;top:719px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door21_js();"/>
<img id="door22" style="position:absolute;border:0px;left:588px;top:718px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door22_js();"/>
<img id="door23" style="position:absolute;border:0px;left:617px;top:634px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door23_js();"/>
<img id="door24" style="position:absolute;border:0px;left:825px;top:650px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door24_js();"/>
<img id="door25" style="position:absolute;border:0px;left:915px;top:650px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door25_js();"/>
<img id="door26" style="position:absolute;border:0px;left:976px;top:650px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door26_js();"/>
<img id="door27" style="position:absolute;border:0px;left:1081px;top:650px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door27_js();"/>
<img id="door28" style="position:absolute;border:0px;left:1132px;top:650px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door28_js();"/>
<img id="door29" style="position:absolute;border:0px;left:1228px;top:650px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door29_js();"/>
<img id="door30" style="position:absolute;border:0px;left:673px;top:650px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door30_js();"/>
<img id="door31" style="position:absolute;border:0px;left:766px;top:651px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door31_js();"/>
<img id="door32" style="position:absolute;border:0px;left:1281px;top:646px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door32_js();"/>
<img id="j1" style="position:absolute;border:0px;left:1360px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j1_js();"/>
<img id="d1" style="position:absolute;border:0px;left:1440px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d1_js();"/>
<img id="m1" style="position:absolute;border:0px;left:1288px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m1_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:248px;top:704px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="1-57-6"/>
<img id="zm2" style="position:absolute;border:0px;left:256px;top:664px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="1-57-8"/>
<img id="zm3" style="position:absolute;border:0px;left:272px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="1-57-2"/>
<img id="zm4" style="position:absolute;border:0px;left:456px;top:605px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="1-57-7"/>
<img id="zm5" style="position:absolute;border:0px;left:624px;top:603px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="1-57-3"/>
<img id="zm6" style="position:absolute;border:0px;left:1048px;top:600px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="1-57-5"/>
<img id="zm7" style="position:absolute;border:0px;left:1216px;top:602px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="1-57-4"/>
<img id="zm8" style="position:absolute;border:0px;left:1448px;top:632px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="1-57-1"/>
<img id="zm9" style="position:absolute;border:0px;left:1490px;top:616px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="1-58-4"/>
<img id="zm10" style="position:absolute;border:0px;left:1424px;top:544px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="1-58-1"/>
<img id="zm11" style="position:absolute;border:0px;left:1448px;top:432px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="1-58-5"/>
<img id="zm12" style="position:absolute;border:0px;left:1392px;top:432px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="1-59-4"/>
<img id="zm13" style="position:absolute;border:0px;left:1344px;top:416px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="1-59-2"/>
<img id="zm14" style="position:absolute;border:0px;left:448px;top:424px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="1-60-4"/>
<img id="zm15" style="position:absolute;border:0px;left:328px;top:456px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="1-59-1"/>
<img id="zm16" style="position:absolute;border:0px;left:456px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="1-59-5"/>
<img id="zm17" style="position:absolute;border:0px;left:560px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm17_js();" title="1-59-6"/>
<img id="zm18" style="position:absolute;border:0px;left:672px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm18_js();" title="1-60-2"/>
<img id="zm19" style="position:absolute;border:0px;left:1128px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm19_js();" title="1-60-1"/>
<img id="zm20" style="position:absolute;border:0px;left:880px;top:504px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm20_js();" title="1-58-2"/>
<img id="zm21" style="position:absolute;border:0px;left:880px;top:549px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm21_js();" title="1-58-1"/>
<img id="zm22" style="position:absolute;border:0px;left:880px;top:592px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm22_js();" title="1-58-3"/>
<img id="zm23" style="position:absolute;border:0px;left:1520px;top:504px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm23_js();" title="1-34-4"/>
<img id="zm24" style="position:absolute;border:0px;left:1584px;top:504px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm24_js();" title="1-63-5"/>
<img id="zm25" style="position:absolute;border:0px;left:1536px;top:560px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm25_js();" title="1-63-2"/>
<img id="zm26" style="position:absolute;border:0px;left:1592px;top:560px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm26_js();" title="1-63-3"/>
<img id="jk2" style="position:absolute;border:0px;left:920px;top:568px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:800px;top:600px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:936px;top:608px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:1320px;top:704px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:1376px;top:704px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:1440px;top:600px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:1464px;top:568px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:1448px;top:504px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:1472px;top:472px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:1336px;top:440px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:816px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:952px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:360px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="jk15" style="position:absolute;border:0px;left:344px;top:560px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk15_js();"/>
<img id="jk16" style="position:absolute;border:0px;left:248px;top:624px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk16_js();"/>
<img id="jk17" style="position:absolute;border:0px;left:232px;top:712px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk17_js();"/>

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
