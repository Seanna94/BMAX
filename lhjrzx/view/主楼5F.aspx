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
<title>主楼5F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 33;
db["door/5f弱电井#1/506西门_onoff"]={tagname:"door/5f弱电井#1/506西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#1/506东门_onoff"]={tagname:"door/5f弱电井#1/506东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#1/508西门_onoff"]={tagname:"door/5f弱电井#1/508西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#2/508东门_onoff"]={tagname:"door/5f弱电井#2/508东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#2/510西门视频会议室_onoff"]={tagname:"door/5f弱电井#2/510西门视频会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#2/510东门视频会议室_onoff"]={tagname:"door/5f弱电井#2/510东门视频会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#1/504小会议室_onoff"]={tagname:"door/5f弱电井#1/504小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#1/502小会议室_onoff"]={tagname:"door/5f弱电井#1/502小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#1/501西门_onoff"]={tagname:"door/5f弱电井#1/501西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#1/501东门_onoff"]={tagname:"door/5f弱电井#1/501东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#1/503西门_onoff"]={tagname:"door/5f弱电井#1/503西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#1/503东门_onoff"]={tagname:"door/5f弱电井#1/503东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#1/505西门_onoff"]={tagname:"door/5f弱电井#1/505西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#2/505东门_onoff"]={tagname:"door/5f弱电井#2/505东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#2/507西门_onoff"]={tagname:"door/5f弱电井#2/507西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#2/507东门_onoff"]={tagname:"door/5f弱电井#2/507东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#2/509西门_onoff"]={tagname:"door/5f弱电井#2/509西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/5f弱电井#2/509东门_onoff"]={tagname:"door/5f弱电井#2/509东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item999loopstatus_iopc1_loop_2_26_6_s"]={tagname:"item999loopstatus_iopc1_loop_2_26_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1007loopstatus_iopc1_loop_2_27_6_s"]={tagname:"item1007loopstatus_iopc1_loop_2_27_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item998loopstatus_iopc1_loop_2_26_5_s"]={tagname:"item998loopstatus_iopc1_loop_2_26_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1116loopstatus_iopc1_loop_2_44_5_s"]={tagname:"item1116loopstatus_iopc1_loop_2_44_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item985loopstatus_iopc1_loop_2_24_2_s"]={tagname:"item985loopstatus_iopc1_loop_2_24_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item986loopstatus_iopc1_loop_2_24_3_s"]={tagname:"item986loopstatus_iopc1_loop_2_24_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item990loopstatus_iopc1_loop_2_25_1_s"]={tagname:"item990loopstatus_iopc1_loop_2_25_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item991loopstatus_iopc1_loop_2_25_2_s"]={tagname:"item991loopstatus_iopc1_loop_2_25_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item987loopstatus_iopc1_loop_2_24_4_s"]={tagname:"item987loopstatus_iopc1_loop_2_24_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item989loopstatus_iopc1_loop_2_24_6_s"]={tagname:"item989loopstatus_iopc1_loop_2_24_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1002loopstatus_iopc1_loop_2_27_1_s"]={tagname:"item1002loopstatus_iopc1_loop_2_27_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1003loopstatus_iopc1_loop_2_27_2_s"]={tagname:"item1003loopstatus_iopc1_loop_2_27_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1287loopstatus_iopc1_loop_4_31_8_s"]={tagname:"item1287loopstatus_iopc1_loop_4_31_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item994loopstatus_iopc1_loop_2_26_1_s"]={tagname:"item994loopstatus_iopc1_loop_2_26_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item996loopstatus_iopc1_loop_2_26_3_s"]={tagname:"item996loopstatus_iopc1_loop_2_26_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
writetag("Door/5F弱电井#1/506西门","");
}
function door2_js(){
writetag("Door/5F弱电井#1/506东门","");
}
function door3_js(){
writetag("Door/5F弱电井#1/508西门","");
}
function door4_js(){
writetag("Door/5F弱电井#2/508东门","");
}
function door5_js(){
writetag("Door/5F弱电井#2/510西门视频会议室","");
}
function door6_js(){
writetag("Door/5F弱电井#2/510东门视频会议室","");
}
function door7_js(){
writetag("Door/5F弱电井#1/504小会议室","");
}
function door8_js(){
writetag("Door/5F弱电井#1/502小会议室","");
}
function door9_js(){
writetag("Door/5F弱电井#1/501西门","");
}
function door10_js(){
writetag("Door/5F弱电井#1/501东门","");
}
function door11_js(){
writetag("Door/5F弱电井#1/503西门","");
}
function door12_js(){
writetag("Door/5F弱电井#1/503东门","");
}
function door13_js(){
writetag("Door/5F弱电井#1/505西门","");
}
function door14_js(){
writetag("Door/5F弱电井#2/505东门","");
}
function door15_js(){
writetag("Door/5F弱电井#2/507西门","");
}
function door16_js(){
writetag("Door/5F弱电井#2/507东门","");
}
function door17_js(){
writetag("Door/5F弱电井#2/509西门","");
}
function door18_js(){
writetag("Door/5F弱电井#2/509东门","");
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
writetag("ITEM305LoopControl_IOPC1_LOOP_2_26_6_C","");
}
function zm2_js(){
writetag("ITEM313LoopControl_IOPC1_LOOP_2_27_6_C","");
}
function zm3_js(){
writetag("ITEM304LoopControl_IOPC1_LOOP_2_26_5_C","");
}
function zm4_js(){
writetag("ITEM422LoopControl_IOPC1_LOOP_2_44_5_C","");
}
function zm5_js(){
writetag("ITEM291LoopControl_IOPC1_LOOP_2_24_2_C","");
}
function zm6_js(){
writetag("ITEM292LoopControl_IOPC1_LOOP_2_24_3_C","");
}
function zm7_js(){
writetag("ITEM296LoopControl_IOPC1_LOOP_2_25_1_C","");
}
function zm8_js(){
writetag("ITEM297LoopControl_IOPC1_LOOP_2_25_2_C","");
}
function zm9_js(){
writetag("ITEM293LoopControl_IOPC1_LOOP_2_24_4_C","");
}
function zm10_js(){
writetag("ITEM295LoopControl_IOPC1_LOOP_2_24_6_C","");
}
function zm11_js(){
writetag("ITEM308LoopControl_IOPC1_LOOP_2_27_1_C","");
}
function zm12_js(){
writetag("ITEM309LoopControl_IOPC1_LOOP_2_27_2_C","");
}
function zm13_js(){
writetag("ITEM304LoopControl_IOPC1_LOOP_2_26_5_C","");
}
function zm14_js(){
writetag("ITEM313LoopControl_IOPC1_LOOP_2_27_6_C","");
}
function zm15_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm16_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm17_js(){
writetag("ITEM300LoopControl_IOPC1_LOOP_2_26_1_C","");
}
function zm18_js(){
writetag("ITEM302LoopControl_IOPC1_LOOP_2_26_3_C","");
}
function zm19_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function jk1_js(){
open_video2("192.168.3.74");
}
function jk2_js(){
open_video2("192.168.3.72");
}
function jk3_js(){
open_video2("192.168.3.73");
}
function jk4_js(){
open_video2("192.168.3.79");
}
function jk5_js(){
open_video2("192.168.3.80");
}
function jk6_js(){
open_video2("192.168.3.77");
}
function jk7_js(){
open_video2("192.168.3.78");
}
function jk8_js(){
open_video2("192.168.3.75");
}
function jk9_js(){
open_video2("192.168.3.76");
}
function jk10_js(){
open_video2("192.168.3.69");
}
function jk11_js(){
open_video2("192.168.3.70");
}
function jk12_js(){
open_video2("192.168.3.71");
}
function jk13_js(){
open_video2("192.168.3.81");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door1=new swimgObj('door1','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#1/506西门_onoff"].htmlobj.push(door1);
var door2=new swimgObj('door2','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#1/506东门_onoff"].htmlobj.push(door2);
var door3=new swimgObj('door3','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#1/508西门_onoff"].htmlobj.push(door3);
var door4=new swimgObj('door4','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#2/508东门_onoff"].htmlobj.push(door4);
var door5=new swimgObj('door5','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#2/510西门视频会议室_onoff"].htmlobj.push(door5);
var door6=new swimgObj('door6','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#2/510东门视频会议室_onoff"].htmlobj.push(door6);
var door7=new swimgObj('door7','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#1/504小会议室_onoff"].htmlobj.push(door7);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#1/502小会议室_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#1/501西门_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#1/501东门_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#1/503西门_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#1/503东门_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#1/505西门_onoff"].htmlobj.push(door13);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#2/505东门_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#2/507西门_onoff"].htmlobj.push(door15);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#2/507东门_onoff"].htmlobj.push(door16);
var door17=new swimgObj('door17','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#2/509西门_onoff"].htmlobj.push(door17);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/5f弱电井#2/509东门_onoff"].htmlobj.push(door18);
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item999loopstatus_iopc1_loop_2_26_6_s"].htmlobj.push(zm1);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item1007loopstatus_iopc1_loop_2_27_6_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item998loopstatus_iopc1_loop_2_26_5_s"].htmlobj.push(zm3);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item1116loopstatus_iopc1_loop_2_44_5_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item985loopstatus_iopc1_loop_2_24_2_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item986loopstatus_iopc1_loop_2_24_3_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item990loopstatus_iopc1_loop_2_25_1_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item991loopstatus_iopc1_loop_2_25_2_s"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item987loopstatus_iopc1_loop_2_24_4_s"].htmlobj.push(zm9);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item989loopstatus_iopc1_loop_2_24_6_s"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item1002loopstatus_iopc1_loop_2_27_1_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item1003loopstatus_iopc1_loop_2_27_2_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item998loopstatus_iopc1_loop_2_26_5_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item1007loopstatus_iopc1_loop_2_27_6_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm16);
var zm17=new swimgObj('zm17','images/light_on.png','images/light_off.png');
db["item994loopstatus_iopc1_loop_2_26_1_s"].htmlobj.push(zm17);
var zm18=new swimgObj('zm18','images/light_on.png','images/light_off.png');
db["item996loopstatus_iopc1_loop_2_26_3_s"].htmlobj.push(zm18);
var zm19=new swimgObj('zm19','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm19);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/主楼5F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼5F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/5F.jpg" />
<img id="door1" style="position:absolute;border:0px;left:552px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door1_js();"/>
<img id="door2" style="position:absolute;border:0px;left:784px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door2_js();"/>
<img id="door3" style="position:absolute;border:0px;left:840px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door3_js();"/>
<img id="door4" style="position:absolute;border:0px;left:919px;top:409px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door4_js();"/>
<img id="door5" style="position:absolute;border:0px;left:1008px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door5_js();"/>
<img id="door6" style="position:absolute;border:0px;left:1208px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door6_js();"/>
<img id="door7" style="position:absolute;border:0px;left:296px;top:480px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door7_js();"/>
<img id="door8" style="position:absolute;border:0px;left:288px;top:552px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:352px;top:646px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:616px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:677px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:776px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:834px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door14" style="position:absolute;border:0px;left:924px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:987px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door16" style="position:absolute;border:0px;left:1080px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door17" style="position:absolute;border:0px;left:1149px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door17_js();"/>
<img id="door18" style="position:absolute;border:0px;left:1245px;top:648px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="j1" style="position:absolute;border:0px;left:1352px;top:23px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j1_js();"/>
<img id="d1" style="position:absolute;border:0px;left:1432px;top:23px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d1_js();"/>
<img id="m1" style="position:absolute;border:0px;left:1280px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m1_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:224px;top:712px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="2-26-6"/>
<img id="zm2" style="position:absolute;border:0px;left:392px;top:600px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="2-27-6"/>
<img id="zm3" style="position:absolute;border:0px;left:264px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="2-26-5"/>
<img id="zm4" style="position:absolute;border:0px;left:352px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="2-24-5"/>
<img id="zm5" style="position:absolute;border:0px;left:464px;top:459px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="2-24-2"/>
<img id="zm6" style="position:absolute;border:0px;left:600px;top:458px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="2-24-3"/>
<img id="zm7" style="position:absolute;border:0px;left:722px;top:457px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="2-25-1"/>
<img id="zm8" style="position:absolute;border:0px;left:1040px;top:456px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="2-25-2"/>
<img id="zm9" style="position:absolute;border:0px;left:1360px;top:416px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="2-24-4"/>
<img id="zm10" style="position:absolute;border:0px;left:1416px;top:424px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="2-24-6"/>
<img id="zm11" style="position:absolute;border:0px;left:1464px;top:440px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="2-27-1"/>
<img id="zm12" style="position:absolute;border:0px;left:1424px;top:520px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="2-27-2"/>
<img id="zm13" style="position:absolute;border:0px;left:1392px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="2-26-5"/>
<img id="zm14" style="position:absolute;border:0px;left:1272px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="2-27-6"/>
<img id="zm15" style="position:absolute;border:0px;left:1056px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="2-26-8"/>
<img id="zm16" style="position:absolute;border:0px;left:616px;top:600px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="2-27-3"/>
<img id="zm17" style="position:absolute;border:0px;left:856px;top:528px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm17_js();" title="2-26-1"/>
<img id="zm18" style="position:absolute;border:0px;left:912px;top:528px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm18_js();" title="2-26-3"/>
<img id="zm19" style="position:absolute;border:0px;left:1184px;top:605px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm19_js();" title="2-26-7"/>
<img id="jk1" style="position:absolute;border:0px;left:880px;top:584px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk1_js();"/>
<img id="jk2" style="position:absolute;border:0px;left:808px;top:592px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:952px;top:592px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:1424px;top:552px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:1464px;top:592px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:1344px;top:384px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:1496px;top:448px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:864px;top:456px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:896px;top:456px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:312px;top:432px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:232px;top:600px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:248px;top:688px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:344px;top:544px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>

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
