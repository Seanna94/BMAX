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
<title>西楼1F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 30;
db["door/西附楼1f弱电井#6/西附楼3105西北门_onoff"]={tagname:"door/西附楼1f弱电井#6/西附楼3105西北门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼1f弱电井#6/西附楼3105东北门_onoff"]={tagname:"door/西附楼1f弱电井#6/西附楼3105东北门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼1f弱电井#5/西附楼3105西南门_onoff"]={tagname:"door/西附楼1f弱电井#5/西附楼3105西南门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼1f弱电井#5/西附楼3105东南门_onoff"]={tagname:"door/西附楼1f弱电井#5/西附楼3105东南门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼1f弱电井#6/西附楼3102西门_onoff"]={tagname:"door/西附楼1f弱电井#6/西附楼3102西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼1f弱电井#6/西附楼3102东门_onoff"]={tagname:"door/西附楼1f弱电井#6/西附楼3102东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼1f弱电井#6/西附楼3103西门_onoff"]={tagname:"door/西附楼1f弱电井#6/西附楼3103西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼1f弱电井#6/西附楼3103东门_onoff"]={tagname:"door/西附楼1f弱电井#6/西附楼3103东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼1f弱电井#6/西附楼3101北门_onoff"]={tagname:"door/西附楼1f弱电井#6/西附楼3101北门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼1f弱电井#6/西附楼3101南门_onoff"]={tagname:"door/西附楼1f弱电井#6/西附楼3101南门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼1f弱电井#5/西附楼3220西门（一层）_onoff"]={tagname:"door/西附楼1f弱电井#5/西附楼3220西门（一层）_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼1f弱电井#5/西附楼3220东门（一层）_onoff"]={tagname:"door/西附楼1f弱电井#5/西附楼3220东门（一层）_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1208loopstatus_iopc1_loop_3_30_1_s"]={tagname:"item1208loopstatus_iopc1_loop_3_30_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1227loopstatus_iopc1_loop_3_32_4_s"]={tagname:"item1227loopstatus_iopc1_loop_3_32_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1224loopstatus_iopc1_loop_3_32_1_s"]={tagname:"item1224loopstatus_iopc1_loop_3_32_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1211loopstatus_iopc1_loop_3_30_4_s"]={tagname:"item1211loopstatus_iopc1_loop_3_30_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1226loopstatus_iopc1_loop_3_32_3_s"]={tagname:"item1226loopstatus_iopc1_loop_3_32_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1228loopstatus_iopc1_loop_3_32_5_s"]={tagname:"item1228loopstatus_iopc1_loop_3_32_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1215loopstatus_iopc1_loop_3_30_8_s"]={tagname:"item1215loopstatus_iopc1_loop_3_30_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1210loopstatus_iopc1_loop_3_30_3_s"]={tagname:"item1210loopstatus_iopc1_loop_3_30_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1209loopstatus_iopc1_loop_3_30_2_s"]={tagname:"item1209loopstatus_iopc1_loop_3_30_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1225loopstatus_iopc1_loop_3_32_2_s"]={tagname:"item1225loopstatus_iopc1_loop_3_32_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1230loopstatus_iopc1_loop_3_32_7_s"]={tagname:"item1230loopstatus_iopc1_loop_3_32_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1218loopstatus_iopc1_loop_3_31_3_s"]={tagname:"item1218loopstatus_iopc1_loop_3_31_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1213loopstatus_iopc1_loop_3_30_6_s"]={tagname:"item1213loopstatus_iopc1_loop_3_30_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1214loopstatus_iopc1_loop_3_30_7_s"]={tagname:"item1214loopstatus_iopc1_loop_3_30_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1217loopstatus_iopc1_loop_3_31_2_s"]={tagname:"item1217loopstatus_iopc1_loop_3_31_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1229loopstatus_iopc1_loop_3_32_6_s"]={tagname:"item1229loopstatus_iopc1_loop_3_32_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item529loopcontrol_iopc1_loop_3_31_8_c"]={tagname:"item529loopcontrol_iopc1_loop_3_31_8_c",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1212loopstatus_iopc1_loop_3_30_5_s"]={tagname:"item1212loopstatus_iopc1_loop_3_30_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
writetag("Door/西附楼1F弱电井#6/西附楼3105西北门","");
}
function door2_js(){
writetag("Door/西附楼1F弱电井#6/西附楼3105东北门","");
}
function door3_js(){
writetag("Door/西附楼1F弱电井#5/西附楼3105西南门","");
}
function door4_js(){
writetag("Door/西附楼1F弱电井#5/西附楼3105东南门","");
}
function door5_js(){
writetag("Door/西附楼1F弱电井#6/西附楼3102西门","");
}
function door6_js(){
writetag("Door/西附楼1F弱电井#6/西附楼3102东门","");
}
function door7_js(){
writetag("Door/西附楼1F弱电井#6/西附楼3103西门","");
}
function door8_js(){
writetag("Door/西附楼1F弱电井#6/西附楼3103东门","");
}
function door9_js(){
writetag("Door/西附楼1F弱电井#6/西附楼3101北门","");
}
function door10_js(){
writetag("Door/西附楼1F弱电井#6/西附楼3101南门","");
}
function door11_js(){
writetag("Door/西附楼1F弱电井#5/西附楼3220西门(一层)","");
}
function door12_js(){
writetag("user.Door/西附楼1F弱电井#5/西附楼3220东门(一层)_OnOff","");
}
function jk_js(){
var id = "jk";
for(var i =1;i<=500;i++){
	id=id+i;
	$("#"+id).toggle();
	id="jk";
	}
}
function jk2_js(){
open_video("192.168.1.2");
}
function jk3_js(){
open_video("192.168.1.3");
}
function jk4_js(){
open_video("192.168.1.8");
}
function jk5_js(){
open_video("192.168.1.10");
}
function jk6_js(){
open_video("192.168.1.11");
}
function jk7_js(){
open_video("192.168.1.12");
}
function jk8_js(){
open_video("192.168.1.13");
}
function jk9_js(){
open_video("192.168.1.7");
}
function jk10_js(){
open_video("192.168.1.6");
}
function jk11_js(){
open_video("192.168.1.14");
}
function jk12_js(){
open_video("192.168.1.15");
}
function jk13_js(){
open_video("192.168.1.16");
}
function jk14_js(){
open_video("192.168.1.17");
}
function jk15_js(){
open_video("192.168.1.18");
}
function jk16_js(){
open_video("192.168.1.19");
}
function jk17_js(){
open_video("192.168.1.8");
}
function imagee_js(){
var id = "zm";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="zm";
 }
}
function zm2_js(){
writetag("ITEM514LoopControl_IOPC1_LOOP_3_30_1_C","");
}
function zm3_js(){
writetag("ITEM533LoopControl_IOPC1_LOOP_3_32_4_C","");
}
function zm4_js(){
writetag("ITEM530LoopControl_IOPC1_LOOP_3_32_1_C","");
}
function zm5_js(){
writetag("ITEM517LoopControl_IOPC1_LOOP_3_30_4_C","");
}
function zm6_js(){
writetag("ITEM532LoopControl_IOPC1_LOOP_3_32_3_C","");
}
function zm7_js(){
writetag("ITEM534LoopControl_IOPC1_LOOP_3_32_5_C","");
}
function zm8_js(){
writetag("ITEM521LoopControl_IOPC1_LOOP_3_30_8_C","");
}
function zm9_js(){
writetag("ITEM516LoopControl_IOPC1_LOOP_3_30_3_C","");
}
function zm10_js(){
writetag("ITEM515LoopControl_IOPC1_LOOP_3_30_2_C","");
}
function zm11_js(){
writetag("ITEM531LoopControl_IOPC1_LOOP_3_32_2_C","");
}
function zm12_js(){
writetag("ITEM536LoopControl_IOPC1_LOOP_3_32_7_C","");
}
function zm13_js(){
writetag("ITEM524LoopControl_IOPC1_LOOP_3_31_3_C","");
}
function zm14_js(){
writetag("ITEM519LoopControl_IOPC1_LOOP_3_30_6_C","");
}
function zm15_js(){
writetag("ITEM520LoopControl_IOPC1_LOOP_3_30_7_C","");
}
function zm16_js(){
writetag("ITEM523LoopControl_IOPC1_LOOP_3_31_2_C","");
}
function zm17_js(){
writetag("ITEM535LoopControl_IOPC1_LOOP_3_32_6_C","");
}
function zm18_js(){
writetag("ITEM523LoopControl_IOPC1_LOOP_3_31_2_C","");
}
function zm19_js(){
writetag("ITEM529LoopControl_IOPC1_LOOP_3_31_8_C","");
}
function zm20_js(){
writetag("ITEM518LoopControl_IOPC1_LOOP_3_30_5_C","");
}
function door_js(){
var id = "door";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="door";
 }
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door1=new swimgObj('door1','images/door_km.gif','images/door_close.gif');
db["door/西附楼1f弱电井#6/西附楼3105西北门_onoff"].htmlobj.push(door1);
var door2=new swimgObj('door2','images/door_km.gif','images/door_close.gif');
db["door/西附楼1f弱电井#6/西附楼3105东北门_onoff"].htmlobj.push(door2);
var door3=new swimgObj('door3','images/door_km.gif','images/door_close.gif');
db["door/西附楼1f弱电井#5/西附楼3105西南门_onoff"].htmlobj.push(door3);
var door4=new swimgObj('door4','images/door_km.gif','images/door_close.gif');
db["door/西附楼1f弱电井#5/西附楼3105东南门_onoff"].htmlobj.push(door4);
var door5=new swimgObj('door5','images/door_km.gif','images/door_close.gif');
db["door/西附楼1f弱电井#6/西附楼3102西门_onoff"].htmlobj.push(door5);
var door6=new swimgObj('door6','images/door_km.gif','images/door_close.gif');
db["door/西附楼1f弱电井#6/西附楼3102东门_onoff"].htmlobj.push(door6);
var door7=new swimgObj('door7','images/door_km.gif','images/door_close.gif');
db["door/西附楼1f弱电井#6/西附楼3103西门_onoff"].htmlobj.push(door7);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/西附楼1f弱电井#6/西附楼3103东门_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/西附楼1f弱电井#6/西附楼3101北门_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/西附楼1f弱电井#6/西附楼3101南门_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/西附楼1f弱电井#5/西附楼3220西门（一层）_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/西附楼1f弱电井#5/西附楼3220东门（一层）_onoff"].htmlobj.push(door12);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item1208loopstatus_iopc1_loop_3_30_1_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item1227loopstatus_iopc1_loop_3_32_4_s"].htmlobj.push(zm3);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item1224loopstatus_iopc1_loop_3_32_1_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item1211loopstatus_iopc1_loop_3_30_4_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item1226loopstatus_iopc1_loop_3_32_3_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item1228loopstatus_iopc1_loop_3_32_5_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item1215loopstatus_iopc1_loop_3_30_8_s"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item1210loopstatus_iopc1_loop_3_30_3_s"].htmlobj.push(zm9);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item1209loopstatus_iopc1_loop_3_30_2_s"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item1225loopstatus_iopc1_loop_3_32_2_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item1230loopstatus_iopc1_loop_3_32_7_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item1218loopstatus_iopc1_loop_3_31_3_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item1213loopstatus_iopc1_loop_3_30_6_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item1214loopstatus_iopc1_loop_3_30_7_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item1217loopstatus_iopc1_loop_3_31_2_s"].htmlobj.push(zm16);
var zm17=new swimgObj('zm17','images/light_on.png','images/light_off.png');
db["item1229loopstatus_iopc1_loop_3_32_6_s"].htmlobj.push(zm17);
var zm18=new swimgObj('zm18','images/light_on.png','images/light_off.png');
db["item1217loopstatus_iopc1_loop_3_31_2_s"].htmlobj.push(zm18);
var zm19=new swimgObj('zm19','images/light_on.png','images/light_off.png');
db["item529loopcontrol_iopc1_loop_3_31_8_c"].htmlobj.push(zm19);
var zm20=new swimgObj('zm20','images/light_on.png','images/light_off.png');
db["item1212loopstatus_iopc1_loop_3_30_5_s"].htmlobj.push(zm20);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/西楼1F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 西楼1F</div>
<img id="i1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/1XF.jpg" />
<img id="door1" style="position:absolute;border:0px;left:712px;top:256px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door1_js();"/>
<img id="door2" style="position:absolute;border:0px;left:1000px;top:248px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door2_js();"/>
<img id="door3" style="position:absolute;border:0px;left:696px;top:392px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door3_js();"/>
<img id="door4" style="position:absolute;border:0px;left:1008px;top:392px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door4_js();"/>
<img id="door5" style="position:absolute;border:0px;left:1280px;top:200px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door5_js();"/>
<img id="door6" style="position:absolute;border:0px;left:1456px;top:192px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door6_js();"/>
<img id="door7" style="position:absolute;border:0px;left:1160px;top:400px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door7_js();"/>
<img id="door8" style="position:absolute;border:0px;left:1304px;top:400px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:1384px;top:248px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:1464px;top:392px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:784px;top:488px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:1016px;top:488px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="jk" style="position:absolute;border:0px;left:1440px;top:16px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk_js();"/>
<img id="jk2" style="position:absolute;border:0px;left:1184px;top:288px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:1192px;top:344px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:1472px;top:232px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:944px;top:216px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:960px;top:168px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:624px;top:216px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:624px;top:256px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:704px;top:344px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:712px;top:304px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:528px;top:408px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:600px;top:424px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:512px;top:512px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:512px;top:808px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="jk15" style="position:absolute;border:0px;left:536px;top:848px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk15_js();"/>
<img id="jk16" style="position:absolute;border:0px;left:1024px;top:808px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk16_js();"/>
<img id="jk17" style="position:absolute;border:0px;left:1512px;top:424px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk17_js();"/>
<img id="imagee" style="position:absolute;border:0px;left:1504px;top:16px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:imagee_js();"/>
<img id="zm2" style="position:absolute;border:0px;left:1048px;top:800px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="3-30-1"/>
<img id="zm3" style="position:absolute;border:0px;left:736px;top:848px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="3-32-4"/>
<img id="zm4" style="position:absolute;border:0px;left:512px;top:744px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="3-32-1"/>
<img id="zm5" style="position:absolute;border:0px;left:488px;top:424px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="3-30-4"/>
<img id="zm6" style="position:absolute;border:0px;left:552px;top:440px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="3-32-3"/>
<img id="zm7" style="position:absolute;border:0px;left:544px;top:504px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="3-32-5"/>
<img id="zm8" style="position:absolute;border:0px;left:464px;top:568px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="3-30-8"/>
<img id="zm9" style="position:absolute;border:0px;left:456px;top:504px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="3-30-3"/>
<img id="zm10" style="position:absolute;border:0px;left:488px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="3-30-2"/>
<img id="zm11" style="position:absolute;border:0px;left:624px;top:328px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="3-32-2"/>
<img id="zm12" style="position:absolute;border:0px;left:608px;top:384px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="3-32-7"/>
<img id="zm13" style="position:absolute;border:0px;left:624px;top:285px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="3-31-3"/>
<img id="zm14" style="position:absolute;border:0px;left:864px;top:416px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="3-30-6"/>
<img id="zm15" style="position:absolute;border:0px;left:1232px;top:416px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="3-30-7"/>
<img id="zm16" style="position:absolute;border:0px;left:1072px;top:416px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="3-31-2"/>
<img id="zm17" style="position:absolute;border:0px;left:1216px;top:216px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm17_js();" title="3-32-6"/>
<img id="zm18" style="position:absolute;border:0px;left:1432px;top:408px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm18_js();" title="3-31-2"/>
<img id="zm19" style="position:absolute;border:0px;left:1384px;top:216px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm19_js();" title="3-31-8"/>
<img id="zm20" style="position:absolute;border:0px;left:864px;top:216px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm20_js();" title="3-30-5"/>
<img id="door" style="position:absolute;border:0px;left:1376px;top:17px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door_js();"/>

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
