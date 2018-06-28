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
<title>主楼8F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 46;
db["door/8f弱电井#1/804小会议室_onoff"]={tagname:"door/8f弱电井#1/804小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#1/806_onoff"]={tagname:"door/8f弱电井#1/806_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#1/808_onoff"]={tagname:"door/8f弱电井#1/808_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#2/814_onoff"]={tagname:"door/8f弱电井#2/814_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#2/816_onoff"]={tagname:"door/8f弱电井#2/816_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#2/818_onoff"]={tagname:"door/8f弱电井#2/818_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#2/820西门_onoff"]={tagname:"door/8f弱电井#2/820西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#2/820东门_onoff"]={tagname:"door/8f弱电井#2/820东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#2/822西门_onoff"]={tagname:"door/8f弱电井#2/822西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#2/822东门_onoff"]={tagname:"door/8f弱电井#2/822东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#2/824西门_onoff"]={tagname:"door/8f弱电井#2/824西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#2/824东门_onoff"]={tagname:"door/8f弱电井#2/824东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#1/802北门会议室_onoff"]={tagname:"door/8f弱电井#1/802北门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#1/802南门会议室_onoff"]={tagname:"door/8f弱电井#1/802南门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#1/801小会议室_onoff"]={tagname:"door/8f弱电井#1/801小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#1/803_onoff"]={tagname:"door/8f弱电井#1/803_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#1/805_onoff"]={tagname:"door/8f弱电井#1/805_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#1/811_onoff"]={tagname:"door/8f弱电井#1/811_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#1/813_onoff"]={tagname:"door/8f弱电井#1/813_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#1/815小会议室_onoff"]={tagname:"door/8f弱电井#1/815小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#1/817西门_onoff"]={tagname:"door/8f弱电井#1/817西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#1/817东门_onoff"]={tagname:"door/8f弱电井#1/817东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#1/819西门_onoff"]={tagname:"door/8f弱电井#1/819西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#1/819东门_onoff"]={tagname:"door/8f弱电井#1/819东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#2/821西门_onoff"]={tagname:"door/8f弱电井#2/821西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#2/821东门_onoff"]={tagname:"door/8f弱电井#2/821东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#2/823西门_onoff"]={tagname:"door/8f弱电井#2/823西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#2/823东门_onoff"]={tagname:"door/8f弱电井#2/823东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#2/825西门_onoff"]={tagname:"door/8f弱电井#2/825西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/8f弱电井#2/825东门_onoff"]={tagname:"door/8f弱电井#2/825东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item912loopstatus_iopc1_loop_1_66_5_s"]={tagname:"item912loopstatus_iopc1_loop_1_66_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item922loopstatus_iopc1_loop_1_68_1_s"]={tagname:"item922loopstatus_iopc1_loop_1_68_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item917loopstatus_iopc1_loop_1_67_2_s"]={tagname:"item917loopstatus_iopc1_loop_1_67_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item918loopstatus_iopc1_loop_1_67_3_s"]={tagname:"item918loopstatus_iopc1_loop_1_67_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item915loopstatus_iopc1_loop_1_66_8_s"]={tagname:"item915loopstatus_iopc1_loop_1_66_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item923loopstatus_iopc1_loop_1_68_2_s"]={tagname:"item923loopstatus_iopc1_loop_1_68_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item924loopstatus_iopc1_loop_1_68_3_s"]={tagname:"item924loopstatus_iopc1_loop_1_68_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item931loopstatus_iopc1_loop_1_69_4_s"]={tagname:"item931loopstatus_iopc1_loop_1_69_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item928loopstatus_iopc1_loop_1_69_1_s"]={tagname:"item928loopstatus_iopc1_loop_1_69_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item925loopstatus_iopc1_loop_1_68_4_s"]={tagname:"item925loopstatus_iopc1_loop_1_68_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item916loopstatus_iopc1_loop_1_67_1_s"]={tagname:"item916loopstatus_iopc1_loop_1_67_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item910loopstatus_iopc1_loop_1_66_3_s"]={tagname:"item910loopstatus_iopc1_loop_1_66_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item914loopstatus_iopc1_loop_1_66_7_s"]={tagname:"item914loopstatus_iopc1_loop_1_66_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item908loopstatus_iopc1_loop_1_66_1_s"]={tagname:"item908loopstatus_iopc1_loop_1_66_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item911loopstatus_iopc1_loop_1_66_4_s"]={tagname:"item911loopstatus_iopc1_loop_1_66_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item913loopstatus_iopc1_loop_1_66_6_s"]={tagname:"item913loopstatus_iopc1_loop_1_66_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
writetag("Door/8F弱电井#1/804小会议室","");
}
function door2_js(){
writetag("Door/8F弱电井#1/806","");
}
function door3_js(){
writetag("Door/8F弱电井#1/808","");
}
function door6_js(){
writetag("Door/8F弱电井#2/814","");
}
function door7_js(){
writetag("Door/8F弱电井#2/816","");
}
function door8_js(){
writetag("Door/8F弱电井#2/818","");
}
function door9_js(){
writetag("Door/8F弱电井#2/820西门","");
}
function door10_js(){
writetag("Door/8F弱电井#2/820东门","");
}
function door11_js(){
writetag("Door/8F弱电井#2/822西门","");
}
function door12_js(){
writetag("Door/8F弱电井#2/822东门","");
}
function door13_js(){
writetag("Door/8F弱电井#2/824西门","");
}
function door14_js(){
writetag("Door/8F弱电井#2/824东门","");
}
function door15_js(){
writetag("Door/8F弱电井#1/802北门会议室","");
}
function door16_js(){
writetag("Door/8F弱电井#1/802南门会议室","");
}
function door17_js(){
writetag("Door/8F弱电井#1/801小会议室","");
}
function door18_js(){
writetag("Door/8F弱电井#1/803","");
}
function door19_js(){
writetag("Door/8F弱电井#1/805","");
}
function door20_js(){
writetag("Door/8F弱电井#1/811","");
}
function door21_js(){
writetag("Door/8F弱电井#1/813","");
}
function door22_js(){
writetag("Door/8F弱电井#1/815小会议室","");
}
function door23_js(){
writetag("Door/8F弱电井#1/817西门","");
}
function door24_js(){
writetag("Door/8F弱电井#1/817东门","");
}
function door25_js(){
writetag("Door/8F弱电井#1/819西门","");
}
function door26_js(){
writetag("Door/8F弱电井#1/819东门","");
}
function door27_js(){
writetag("Door/8F弱电井#2/821西门","");
}
function door28_js(){
writetag("Door/8F弱电井#2/821东门","");
}
function door29_js(){
writetag("Door/8F弱电井#2/823西门","");
}
function door30_js(){
writetag("Door/8F弱电井#2/823东门","");
}
function door31_js(){
writetag("Door/8F弱电井#2/825西门","");
}
function door32_js(){
writetag("Door/8F弱电井#2/825东门","");
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
writetag("ITEM218LoopControl_IOPC1_LOOP_1_66_5_C","");
}
function zm2_js(){
writetag("ITEM228LoopControl_IOPC1_LOOP_1_68_1_C","");
}
function zm3_js(){
writetag("ITEM223LoopControl_IOPC1_LOOP_1_67_2_C","");
}
function zm4_js(){
writetag("ITEM224LoopControl_IOPC1_LOOP_1_67_3_C","");
}
function zm5_js(){
writetag("ITEM221LoopControl_IOPC1_LOOP_1_66_8_C","");
}
function zm6_js(){
writetag("ITEM229LoopControl_IOPC1_LOOP_1_68_2_C","");
}
function zm7_js(){
writetag("ITEM230LoopControl_IOPC1_LOOP_1_68_3_C","");
}
function zm8_js(){
writetag("ITEM237LoopControl_IOPC1_LOOP_1_69_4_C","");
}
function zm9_js(){
writetag("ITEM234LoopControl_IOPC1_LOOP_1_69_1_C","");
}
function zm10_js(){
writetag("ITEM231LoopControl_IOPC1_LOOP_1_68_4_C","");
}
function zm11_js(){
writetag("ITEM222LoopControl_IOPC1_LOOP_1_67_1_C","");
}
function zm12_js(){
writetag("ITEM216LoopControl_IOPC1_LOOP_1_66_3_C","");
}
function zm13_js(){
writetag("ITEM220LoopControl_IOPC1_LOOP_1_66_7_C","");
}
function zm14_js(){
writetag("ITEM214LoopControl_IOPC1_LOOP_1_66_1_C","");
}
function zm15_js(){
writetag("ITEM217LoopControl_IOPC1_LOOP_1_66_4_C","");
}
function zm16_js(){
writetag("ITEM219LoopControl_IOPC1_LOOP_1_66_6_C","");
}
function jk2_js(){
open_video2("192.168.3.118");
}
function jk3_js(){
open_video2("192.168.3.116");
}
function jk4_js(){
open_video2("192.168.3.117");
}
function jk5_js(){
open_video2("192.168.3.123");
}
function jk6_js(){
open_video2("192.168.3.125");
}
function jk7_js(){
open_video2("192.168.3.124");
}
function jk8_js(){
open_video2("192.168.3.122");
}
function jk9_js(){
open_video2("192.168.3.121");
}
function jk10_js(){
open_video2("192.168.3.119");
}
function jk11_js(){
open_video2("192.168.3.120");
}
function jk12_js(){
open_video2("192.168.3.113");
}
function jk13_js(){
open_video2("192.168.3.115");
}
function jk14_js(){
open_video2("192.168.3.114");
}
function jk15_js(){
open_video2("192.168.3.126");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door1=new swimgObj('door1','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#1/804小会议室_onoff"].htmlobj.push(door1);
var door2=new swimgObj('door2','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#1/806_onoff"].htmlobj.push(door2);
var door3=new swimgObj('door3','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#1/808_onoff"].htmlobj.push(door3);
var door6=new swimgObj('door6','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#2/814_onoff"].htmlobj.push(door6);
var door7=new swimgObj('door7','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#2/816_onoff"].htmlobj.push(door7);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#2/818_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#2/820西门_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#2/820东门_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#2/822西门_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#2/822东门_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#2/824西门_onoff"].htmlobj.push(door13);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#2/824东门_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#1/802北门会议室_onoff"].htmlobj.push(door15);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#1/802南门会议室_onoff"].htmlobj.push(door16);
var door17=new swimgObj('door17','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#1/801小会议室_onoff"].htmlobj.push(door17);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#1/803_onoff"].htmlobj.push(door18);
var door19=new swimgObj('door19','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#1/805_onoff"].htmlobj.push(door19);
var door20=new swimgObj('door20','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#1/811_onoff"].htmlobj.push(door20);
var door21=new swimgObj('door21','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#1/813_onoff"].htmlobj.push(door21);
var door22=new swimgObj('door22','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#1/815小会议室_onoff"].htmlobj.push(door22);
var door23=new swimgObj('door23','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#1/817西门_onoff"].htmlobj.push(door23);
var door24=new swimgObj('door24','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#1/817东门_onoff"].htmlobj.push(door24);
var door25=new swimgObj('door25','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#1/819西门_onoff"].htmlobj.push(door25);
var door26=new swimgObj('door26','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#1/819东门_onoff"].htmlobj.push(door26);
var door27=new swimgObj('door27','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#2/821西门_onoff"].htmlobj.push(door27);
var door28=new swimgObj('door28','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#2/821东门_onoff"].htmlobj.push(door28);
var door29=new swimgObj('door29','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#2/823西门_onoff"].htmlobj.push(door29);
var door30=new swimgObj('door30','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#2/823东门_onoff"].htmlobj.push(door30);
var door31=new swimgObj('door31','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#2/825西门_onoff"].htmlobj.push(door31);
var door32=new swimgObj('door32','images/door_km.gif','images/door_close.gif');
db["door/8f弱电井#2/825东门_onoff"].htmlobj.push(door32);
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item912loopstatus_iopc1_loop_1_66_5_s"].htmlobj.push(zm1);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item922loopstatus_iopc1_loop_1_68_1_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item917loopstatus_iopc1_loop_1_67_2_s"].htmlobj.push(zm3);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item918loopstatus_iopc1_loop_1_67_3_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item915loopstatus_iopc1_loop_1_66_8_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item923loopstatus_iopc1_loop_1_68_2_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item924loopstatus_iopc1_loop_1_68_3_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item931loopstatus_iopc1_loop_1_69_4_s"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item928loopstatus_iopc1_loop_1_69_1_s"].htmlobj.push(zm9);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item925loopstatus_iopc1_loop_1_68_4_s"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item916loopstatus_iopc1_loop_1_67_1_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item910loopstatus_iopc1_loop_1_66_3_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item914loopstatus_iopc1_loop_1_66_7_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item908loopstatus_iopc1_loop_1_66_1_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item911loopstatus_iopc1_loop_1_66_4_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item913loopstatus_iopc1_loop_1_66_6_s"].htmlobj.push(zm16);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/主楼8F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼8F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/8F.jpg" />
<img id="door1" style="position:absolute;border:0px;left:600px;top:432px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door1_js();"/>
<img id="door2" style="position:absolute;border:0px;left:608px;top:376px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door2_js();"/>
<img id="door3" style="position:absolute;border:0px;left:656px;top:376px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door3_js();"/>
<img id="door6" style="position:absolute;border:0px;left:704px;top:376px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door6_js();"/>
<img id="door7" style="position:absolute;border:0px;left:776px;top:376px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door7_js();"/>
<img id="door8" style="position:absolute;border:0px;left:784px;top:432px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:832px;top:432px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:920px;top:432px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:976px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:1064px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:1176px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door14" style="position:absolute;border:0px;left:1256px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:312px;top:496px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door16" style="position:absolute;border:0px;left:304px;top:560px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door17" style="position:absolute;border:0px;left:376px;top:640px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door17_js();"/>
<img id="door18" style="position:absolute;border:0px;left:376px;top:712px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="door19" style="position:absolute;border:0px;left:440px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door19_js();"/>
<img id="door20" style="position:absolute;border:0px;left:536px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door20_js();"/>
<img id="door21" style="position:absolute;border:0px;left:615px;top:720px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door21_js();"/>
<img id="door22" style="position:absolute;border:0px;left:629px;top:620px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door22_js();"/>
<img id="door23" style="position:absolute;border:0px;left:664px;top:640px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door23_js();"/>
<img id="door24" style="position:absolute;border:0px;left:760px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door24_js();"/>
<img id="door25" style="position:absolute;border:0px;left:824px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door25_js();"/>
<img id="door26" style="position:absolute;border:0px;left:923px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door26_js();"/>
<img id="door27" style="position:absolute;border:0px;left:977px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door27_js();"/>
<img id="door28" style="position:absolute;border:0px;left:1080px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door28_js();"/>
<img id="door29" style="position:absolute;border:0px;left:1133px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door29_js();"/>
<img id="door30" style="position:absolute;border:0px;left:1228px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door30_js();"/>
<img id="door31" style="position:absolute;border:0px;left:1290px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door31_js();"/>
<img id="door32" style="position:absolute;border:0px;left:1382px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door32_js();"/>
<img id="j1" style="position:absolute;border:0px;left:1344px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j1_js();"/>
<img id="d1" style="position:absolute;border:0px;left:1424px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d1_js();"/>
<img id="m1" style="position:absolute;border:0px;left:1272px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m1_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:256px;top:680px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="1-66-5"/>
<img id="zm2" style="position:absolute;border:0px;left:376px;top:480px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="1-68-1"/>
<img id="zm3" style="position:absolute;border:0px;left:280px;top:600px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="1-67-2"/>
<img id="zm4" style="position:absolute;border:0px;left:544px;top:600px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="1-67-3"/>
<img id="zm5" style="position:absolute;border:0px;left:696px;top:600px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="1-66-8"/>
<img id="zm6" style="position:absolute;border:0px;left:480px;top:475px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="1-68-2"/>
<img id="zm7" style="position:absolute;border:0px;left:592px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="1-68-3"/>
<img id="zm8" style="position:absolute;border:0px;left:706px;top:473px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="1-69-4"/>
<img id="zm9" style="position:absolute;border:0px;left:1352px;top:424px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="1-69-1"/>
<img id="zm10" style="position:absolute;border:0px;left:1400px;top:440px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="1-68-4"/>
<img id="zm11" style="position:absolute;border:0px;left:1432px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="1-67-1"/>
<img id="zm12" style="position:absolute;border:0px;left:1424px;top:592px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="1-66-3"/>
<img id="zm13" style="position:absolute;border:0px;left:896px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="1-66-7"/>
<img id="zm14" style="position:absolute;border:0px;left:840px;top:536px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="1-66-1"/>
<img id="zm15" style="position:absolute;border:0px;left:912px;top:536px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="1-66-4"/>
<img id="zm16" style="position:absolute;border:0px;left:1184px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="1-66-6"/>
<img id="jk2" style="position:absolute;border:0px;left:872px;top:568px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:800px;top:600px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:944px;top:600px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:1488px;top:608px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:1472px;top:560px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:1456px;top:504px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:1488px;top:472px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:1328px;top:408px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:864px;top:472px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:912px;top:472px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:328px;top:456px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:248px;top:712px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:264px;top:624px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="jk15" style="position:absolute;border:0px;left:352px;top:552px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk15_js();"/>

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
