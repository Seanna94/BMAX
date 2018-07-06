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
<title>主楼6F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 33;
db["door/6f弱电井#1/606西门视频会议室_onoff"]={tagname:"door/6f弱电井#1/606西门视频会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#2/606东门视频会议室_onoff"]={tagname:"door/6f弱电井#2/606东门视频会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#2/608西门_onoff"]={tagname:"door/6f弱电井#2/608西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#2/608东门_onoff"]={tagname:"door/6f弱电井#2/608东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#2/610西门_onoff"]={tagname:"door/6f弱电井#2/610西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#2/610东门_onoff"]={tagname:"door/6f弱电井#2/610东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#1/604小会议室_onoff"]={tagname:"door/6f弱电井#1/604小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#1/602小会议室_onoff"]={tagname:"door/6f弱电井#1/602小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#1/601小会议室_onoff"]={tagname:"door/6f弱电井#1/601小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#1/603_onoff"]={tagname:"door/6f弱电井#1/603_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#1/605_onoff"]={tagname:"door/6f弱电井#1/605_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#1/611_onoff"]={tagname:"door/6f弱电井#1/611_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#1/613_onoff"]={tagname:"door/6f弱电井#1/613_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#1/615小会议室_onoff"]={tagname:"door/6f弱电井#1/615小会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#1/617西门_onoff"]={tagname:"door/6f弱电井#1/617西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#1/617东门_onoff"]={tagname:"door/6f弱电井#1/617东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#2/621西门_onoff"]={tagname:"door/6f弱电井#2/621西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/6f弱电井#2/621东门_onoff"]={tagname:"door/6f弱电井#2/621东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item961loopstatus_iopc1_loop_2_20_2_s"]={tagname:"item961loopstatus_iopc1_loop_2_20_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item963loopstatus_iopc1_loop_2_20_4_s"]={tagname:"item963loopstatus_iopc1_loop_2_20_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item964loopstatus_iopc1_loop_2_20_5_s"]={tagname:"item964loopstatus_iopc1_loop_2_20_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item960loopstatus_iopc1_loop_2_20_1_s"]={tagname:"item960loopstatus_iopc1_loop_2_20_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item967loopstatus_iopc1_loop_2_20_8_s"]={tagname:"item967loopstatus_iopc1_loop_2_20_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item965loopstatus_iopc1_loop_2_20_6_s"]={tagname:"item965loopstatus_iopc1_loop_2_20_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item982loopstatus_iopc1_loop_2_23_3_s"]={tagname:"item982loopstatus_iopc1_loop_2_23_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1287loopstatus_iopc1_loop_4_31_8_s"]={tagname:"item1287loopstatus_iopc1_loop_4_31_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item962loopstatus_iopc1_loop_2_20_3_s"]={tagname:"item962loopstatus_iopc1_loop_2_20_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item973loopstatus_iopc1_loop_2_21_6_s"]={tagname:"item973loopstatus_iopc1_loop_2_21_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item981loopstatus_iopc1_loop_2_23_2_s"]={tagname:"item981loopstatus_iopc1_loop_2_23_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item971loopstatus_iopc1_loop_2_21_4_s"]={tagname:"item971loopstatus_iopc1_loop_2_21_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item968loopstatus_iopc1_loop_2_21_1_s"]={tagname:"item968loopstatus_iopc1_loop_2_21_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item969loopstatus_iopc1_loop_2_21_2_s"]={tagname:"item969loopstatus_iopc1_loop_2_21_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item966loopstatus_iopc1_loop_2_20_7_s"]={tagname:"item966loopstatus_iopc1_loop_2_20_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
writetag("Door/6F弱电井#1/606西门视频会议室","");
}
function door2_js(){
writetag("Door/6F弱电井#2/606东门视频会议室","");
}
function door3_js(){
writetag("Door/6F弱电井#2/608西门","");
}
function door4_js(){
writetag("Door/6F弱电井#2/608东门","");
}
function door5_js(){
writetag("Door/6F弱电井#2/610西门","");
}
function door6_js(){
writetag("Door/6F弱电井#2/610东门","");
}
function door7_js(){
writetag("Door/6F弱电井#1/604小会议室","");
}
function door8_js(){
writetag("Door/6F弱电井#1/602小会议室","");
}
function door9_js(){
writetag("Door/6F弱电井#1/601小会议室","");
}
function door10_js(){
writetag("Door/6F弱电井#1/603","");
}
function door11_js(){
writetag("Door/6F弱电井#1/605","");
}
function door14_js(){
writetag("Door/6F弱电井#1/611","");
}
function door15_js(){
writetag("Door/6F弱电井#1/613","");
}
function door16_js(){
writetag("Door/6F弱电井#1/615小会议室","");
}
function door17_js(){
writetag("Door/6F弱电井#1/617西门","");
}
function door18_js(){
writetag("Door/6F弱电井#1/617东门","");
}
function door21_js(){
writetag("Door/6F弱电井#2/621西门","");
}
function door22_js(){
writetag("Door/6F弱电井#2/621东门","");
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
writetag("ITEM267LoopControl_IOPC1_LOOP_2_20_2_C","");
}
function zm2_js(){
writetag("ITEM269LoopControl_IOPC1_LOOP_2_20_4_C","");
}
function zm3_js(){
writetag("ITEM270LoopControl_IOPC1_LOOP_2_20_5_C","");
}
function zm4_js(){
writetag("ITEM266LoopControl_IOPC1_LOOP_2_20_1_C","");
}
function zm5_js(){
writetag("ITEM273LoopControl_IOPC1_LOOP_2_20_8_C","");
}
function zm6_js(){
writetag("ITEM269LoopControl_IOPC1_LOOP_2_20_4_C","");
}
function zm7_js(){
writetag("ITEM270LoopControl_IOPC1_LOOP_2_20_5_C","");
}
function zm8_js(){
writetag("ITEM271LoopControl_IOPC1_LOOP_2_20_6_C","");
}
function zm9_js(){
writetag("ITEM288LoopControl_IOPC1_LOOP_2_23_3_C","");
}
function zm10_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm11_js(){
writetag("ITEM268LoopControl_IOPC1_LOOP_2_20_3_C","");
}
function zm12_js(){
writetag("ITEM279LoopControl_IOPC1_LOOP_2_21_6_C","");
}
function zm13_js(){
writetag("ITEM287LoopControl_IOPC1_LOOP_2_23_2_C","");
}
function zm14_js(){
writetag("ITEM277LoopControl_IOPC1_LOOP_2_21_4_C","");
}
function zm15_js(){
writetag("ITEM274LoopControl_IOPC1_LOOP_2_21_1_C","");
}
function zm16_js(){
writetag("ITEM275LoopControl_IOPC1_LOOP_2_21_2_C","");
}
function zm17_js(){
writetag("ITEM272LoopControl_IOPC1_LOOP_2_20_7_C","");
}
function jk2_js(){
open_video2("192.168.3.85");
}
function jk3_js(){
open_video2("192.168.3.86");
}
function jk4_js(){
open_video2("192.168.3.87");
}
function jk5_js(){
open_video2("192.168.3.88");
}
function jk6_js(){
open_video2("192.168.3.89");
}
function jk7_js(){
open_video2("192.168.3.82");
}
function jk8_js(){
open_video2("192.168.3.83");
}
function jk9_js(){
open_video2("192.168.3.84");
}
function jk10_js(){
open_video2("192.168.3.95");
}
function jk11_js(){
open_video2("192.168.3.92");
}
function jk12_js(){
open_video2("192.168.3.94");
}
function jk13_js(){
open_video2("192.168.3.93");
}
function jk14_js(){
open_video2("192.168.3.91");
}
function jk15_js(){
open_video2("192.168.3.90");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door1=new swimgObj('door1','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#1/606西门视频会议室_onoff"].htmlobj.push(door1);
var door2=new swimgObj('door2','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#2/606东门视频会议室_onoff"].htmlobj.push(door2);
var door3=new swimgObj('door3','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#2/608西门_onoff"].htmlobj.push(door3);
var door4=new swimgObj('door4','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#2/608东门_onoff"].htmlobj.push(door4);
var door5=new swimgObj('door5','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#2/610西门_onoff"].htmlobj.push(door5);
var door6=new swimgObj('door6','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#2/610东门_onoff"].htmlobj.push(door6);
var door7=new swimgObj('door7','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#1/604小会议室_onoff"].htmlobj.push(door7);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#1/602小会议室_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#1/601小会议室_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#1/603_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#1/605_onoff"].htmlobj.push(door11);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#1/611_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#1/613_onoff"].htmlobj.push(door15);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#1/615小会议室_onoff"].htmlobj.push(door16);
var door17=new swimgObj('door17','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#1/617西门_onoff"].htmlobj.push(door17);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#1/617东门_onoff"].htmlobj.push(door18);
var door21=new swimgObj('door21','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#2/621西门_onoff"].htmlobj.push(door21);
var door22=new swimgObj('door22','images/door_km.gif','images/door_close.gif');
db["door/6f弱电井#2/621东门_onoff"].htmlobj.push(door22);
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item961loopstatus_iopc1_loop_2_20_2_s"].htmlobj.push(zm1);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item963loopstatus_iopc1_loop_2_20_4_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item964loopstatus_iopc1_loop_2_20_5_s"].htmlobj.push(zm3);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item960loopstatus_iopc1_loop_2_20_1_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item967loopstatus_iopc1_loop_2_20_8_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item963loopstatus_iopc1_loop_2_20_4_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item964loopstatus_iopc1_loop_2_20_5_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item965loopstatus_iopc1_loop_2_20_6_s"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item982loopstatus_iopc1_loop_2_23_3_s"].htmlobj.push(zm9);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item962loopstatus_iopc1_loop_2_20_3_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item973loopstatus_iopc1_loop_2_21_6_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item981loopstatus_iopc1_loop_2_23_2_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item971loopstatus_iopc1_loop_2_21_4_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item968loopstatus_iopc1_loop_2_21_1_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item969loopstatus_iopc1_loop_2_21_2_s"].htmlobj.push(zm16);
var zm17=new swimgObj('zm17','images/light_on.png','images/light_off.png');
db["item966loopstatus_iopc1_loop_2_20_7_s"].htmlobj.push(zm17);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/主楼6F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼6F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/6F.jpg" />
<img id="door1" style="position:absolute;border:0px;left:531px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door1_js();"/>
<img id="door2" style="position:absolute;border:0px;left:755px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door2_js();"/>
<img id="door3" style="position:absolute;border:0px;left:827px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door3_js();"/>
<img id="door4" style="position:absolute;border:0px;left:931px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door4_js();"/>
<img id="door5" style="position:absolute;border:0px;left:1003px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door5_js();"/>
<img id="door6" style="position:absolute;border:0px;left:1233px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door6_js();"/>
<img id="door7" style="position:absolute;border:0px;left:264px;top:496px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door7_js();"/>
<img id="door8" style="position:absolute;border:0px;left:256px;top:568px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:346px;top:640px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:337px;top:728px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:429px;top:728px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door14" style="position:absolute;border:0px;left:532px;top:728px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:600px;top:728px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door16" style="position:absolute;border:0px;left:604px;top:640px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door17" style="position:absolute;border:0px;left:667px;top:640px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door17_js();"/>
<img id="door18" style="position:absolute;border:0px;left:775px;top:640px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="door21" style="position:absolute;border:0px;left:990px;top:641px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door21_js();"/>
<img id="door22" style="position:absolute;border:0px;left:1088px;top:640px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door22_js();"/>
<img id="j1" style="position:absolute;border:0px;left:1376px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j1_js();"/>
<img id="d1" style="position:absolute;border:0px;left:1456px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d1_js();"/>
<img id="m1" style="position:absolute;border:0px;left:1304px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m1_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:216px;top:696px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="2-20-2"/>
<img id="zm2" style="position:absolute;border:0px;left:216px;top:728px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="2-20-4"/>
<img id="zm3" style="position:absolute;border:0px;left:240px;top:624px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="2-20-5"/>
<img id="zm4" style="position:absolute;border:0px;left:400px;top:624px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="2-20-1"/>
<img id="zm5" style="position:absolute;border:0px;left:560px;top:616px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="2-20-8"/>
<img id="zm6" style="position:absolute;border:0px;left:336px;top:456px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="2-20-4"/>
<img id="zm7" style="position:absolute;border:0px;left:456px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="2-20-5"/>
<img id="zm8" style="position:absolute;border:0px;left:568px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="2-20-6"/>
<img id="zm9" style="position:absolute;border:0px;left:704px;top:461px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="2-23-3"/>
<img id="zm10" style="position:absolute;border:0px;left:1224px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="2-20-6"/>
<img id="zm11" style="position:absolute;border:0px;left:1448px;top:512px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="2-20-3"/>
<img id="zm12" style="position:absolute;border:0px;left:1528px;top:616px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="2-21-6"/>
<img id="zm13" style="position:absolute;border:0px;left:1368px;top:408px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="2-23-2"/>
<img id="zm14" style="position:absolute;border:0px;left:880px;top:496px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="2-21-4"/>
<img id="zm15" style="position:absolute;border:0px;left:880px;top:544px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="2-21-1"/>
<img id="zm16" style="position:absolute;border:0px;left:880px;top:584px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="2-21-2"/>
<img id="zm17" style="position:absolute;border:0px;left:880px;top:616px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm17_js();" title="2-20-7"/>
<img id="jk2" style="position:absolute;border:0px;left:816px;top:608px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:920px;top:608px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:912px;top:552px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:848px;top:456px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:904px;top:456px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:280px;top:448px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:216px;top:632px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:200px;top:736px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:312px;top:560px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:1568px;top:600px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:1504px;top:576px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:1496px;top:496px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:1536px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="jk15" style="position:absolute;border:0px;left:1376px;top:384px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk15_js();"/>

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
