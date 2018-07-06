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
<title>主楼1F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 25;
db["door/1f弱电井#1/0102南门_onoff"]={tagname:"door/1f弱电井#1/0102南门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/1f弱电井#1/0102北门_onoff"]={tagname:"door/1f弱电井#1/0102北门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/1f弱电井#2/0104西门_onoff"]={tagname:"door/1f弱电井#2/0104西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/1f弱电井#2/0104东门_onoff"]={tagname:"door/1f弱电井#2/0104东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/1f弱电井#2/0104北门_onoff"]={tagname:"door/1f弱电井#2/0104北门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/1f弱电井#2/0106_onoff"]={tagname:"door/1f弱电井#2/0106_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/1f弱电井#2/0110_onoff"]={tagname:"door/1f弱电井#2/0110_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/1f弱电井#2/0107西门_onoff"]={tagname:"door/1f弱电井#2/0107西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/1f弱电井#2/0107东门_onoff"]={tagname:"door/1f弱电井#2/0107东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/1f弱电井#2/0109西门_onoff"]={tagname:"door/1f弱电井#2/0109西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/1f弱电井#2/0109东门_onoff"]={tagname:"door/1f弱电井#2/0109东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/1f弱电井#2/0103西门_onoff"]={tagname:"door/1f弱电井#2/0103西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/1f弱电井#2/0103东门_onoff"]={tagname:"door/1f弱电井#2/0103东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1108loopstatus_iopc1_loop_2_43_3_s"]={tagname:"item1108loopstatus_iopc1_loop_2_43_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1116loopstatus_iopc1_loop_2_44_5_s"]={tagname:"item1116loopstatus_iopc1_loop_2_44_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1114loopstatus_iopc1_loop_2_44_3_s"]={tagname:"item1114loopstatus_iopc1_loop_2_44_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1115loopstatus_iopc1_loop_2_44_4_s"]={tagname:"item1115loopstatus_iopc1_loop_2_44_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1117loopstatus_iopc1_loop_2_44_6_s"]={tagname:"item1117loopstatus_iopc1_loop_2_44_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1107loopstatus_iopc1_loop_2_43_2_s"]={tagname:"item1107loopstatus_iopc1_loop_2_43_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1110loopstatus_iopc1_loop_2_43_5_s"]={tagname:"item1110loopstatus_iopc1_loop_2_43_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1106loopstatus_iopc1_loop_2_43_1_s"]={tagname:"item1106loopstatus_iopc1_loop_2_43_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item418loopcontrol_iopc1_loop_2_44_1_c"]={tagname:"item418loopcontrol_iopc1_loop_2_44_1_c",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1287loopstatus_iopc1_loop_4_31_8_s"]={tagname:"item1287loopstatus_iopc1_loop_4_31_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1100loopstatus_iopc1_loop_2_42_3_s"]={tagname:"item1100loopstatus_iopc1_loop_2_42_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1098loopstatus_iopc1_loop_2_42_1_s"]={tagname:"item1098loopstatus_iopc1_loop_2_42_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
writetag("Door/1F弱电井#1/0102南门","");
}
function door2_js(){
writetag("Door/1F弱电井#1/0102北门","");
}
function door3_js(){
writetag("Door/1F弱电井#2/0104西门","");
}
function door4_js(){
writetag("Door/Door/1F弱电井#2/0104东门","");
}
function door5_js(){
writetag("Door/1F弱电井#2/0104北门","");
}
function door8_js(){
writetag("Door/1F弱电井#2/0106","");
}
function door9_js(){
writetag("Door/1F弱电井#2/0110","");
}
function door10_js(){
writetag("Door/1F弱电井#2/0107西门","");
}
function door11_js(){
writetag("Door/1F弱电井#2/0107东门","");
}
function door12_js(){
writetag("Door/1F弱电井#2/0109西门","");
}
function door13_js(){
writetag("Door/1F弱电井#2/0109东门","");
}
function door14_js(){
writetag("Door/1F弱电井#2/0103西门","");
}
function door15_js(){
writetag("Door/1F弱电井#2/0103东门","");
}
function j_js(){
var id = "jk";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="jk";
 }
}
function d_js(){
var id = "zm";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="zm";
 }
}
function jk1_js(){
open_video2("192.168.3.27");
}
function jk2_js(){
open_video2("192.168.3.9");
}
function m_js(){
var id = "door";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="door";
 }
}
function zm1_js(){
writetag("ITEM414LoopControl_IOPC1_LOOP_2_43_3_C","");
}
function zm2_js(){
writetag("ITEM422LoopControl_IOPC1_LOOP_2_44_5_C","");
}
function zm3_js(){
writetag("ITEM420LoopControl_IOPC1_LOOP_2_44_3_C","");
}
function zm4_js(){
writetag("ITEM421LoopControl_IOPC1_LOOP_2_44_4_C","");
}
function zm5_js(){
writetag("ITEM423LoopControl_IOPC1_LOOP_2_44_6_C","");
}
function zm6_js(){
writetag("ITEM413LoopControl_IOPC1_LOOP_2_43_2_C","");
}
function zm8_js(){
writetag("ITEM416LoopControl_IOPC1_LOOP_2_43_5_C","");
}
function zm9_js(){
writetag("ITEM412LoopControl_IOPC1_LOOP_2_43_1_C","");
}
function zm10_js(){
writetag("ITEM418LoopControl_IOPC1_LOOP_2_44_1_C","");
}
function zm11_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm12_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm13_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm14_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm15_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm16_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm17_js(){
writetag("ITEM406LoopControl_IOPC1_LOOP_2_42_3_C","");
}
function zm18_js(){
writetag("ITEM404LoopControl_IOPC1_LOOP_2_42_1_C","");
}
function zm19_js(){
writetag("ITEM406LoopControl_IOPC1_LOOP_2_42_3_C","");
}
function saddr2_js(){
writetag("ITEM1502Scene_IOPC1_SADDR_2423","1");
alert("命令已经发送！");
}
function saddr3_js(){
writetag("ITEM1500Scene_IOPC1_SADDR_2421","1");
alert("命令已经发送！");
}
function saddr4_js(){
writetag("ITEM1501Scene_IOPC1_SADDR_2422","1");
alert("命令已经发送！");
}
function saddr5_js(){
writetag("ITEM1499Scene_IOPC1_SADDR_2420","1");
alert("命令已经发送！");
}
function jk3_js(){
open_video2("192.168.3.8");
}
function jk4_js(){
open_video2("192.168.3.26");
}
function jk5_js(){
open_video2("192.168.3.24");
}
function jk6_js(){
open_video2("192.168.3.6");
}
function jk7_js(){
open_video2("192.168.3.4");
}
function jk8_js(){
open_video2("192.168.3.7");
}
function jk9_js(){
open_video2("192.168.3.2");
}
function jk10_js(){
open_video2("192.168.3.3");
}
function jk11_js(){
open_video2("192.168.3.23");
}
function jk12_js(){
open_video2("192.168.3.16");
}
function jk13_js(){
open_video2("192.168.3.14");
}
function jk14_js(){
open_video2("192.168.3.15");
}
function jk15_js(){
open_video2("192.168.3.17");
}
function jk16_js(){
open_video2("192.168.3.18");
}
function jk17_js(){
open_video2("192.168.3.19");
}
function jk18_js(){
open_video2("192.168.3.20");
}
function jk19_js(){
open_video2("192.168.3.11");
}
function jk20_js(){
open_video2("192.168.3.12");
}
function jk21_js(){
open_video2("192.168.3.13");
}
function jk22_js(){
open_video2("192.168.3.21");
}
function jk23_js(){
open_video2("192.168.3.22");
}
function jk24_js(){
open_video2("192.168.3.10");
}
function jk25_js(){
open_video2("192.168.3.25");
}
function zm7_js(){
writetag("ITEM420LoopControl_IOPC1_LOOP_2_44_3_C","");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door1=new swimgObj('door1','images/door_km.gif','images/door_close.gif');
db["door/1f弱电井#1/0102南门_onoff"].htmlobj.push(door1);
var door2=new swimgObj('door2','images/door_km.gif','images/door_close.gif');
db["door/1f弱电井#1/0102北门_onoff"].htmlobj.push(door2);
var door3=new swimgObj('door3','images/door_km.gif','images/door_close.gif');
db["door/1f弱电井#2/0104西门_onoff"].htmlobj.push(door3);
var door4=new swimgObj('door4','images/door_km.gif','images/door_close.gif');
db["door/1f弱电井#2/0104东门_onoff"].htmlobj.push(door4);
var door5=new swimgObj('door5','images/door_km.gif','images/door_close.gif');
db["door/1f弱电井#2/0104北门_onoff"].htmlobj.push(door5);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/1f弱电井#2/0106_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/1f弱电井#2/0110_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/1f弱电井#2/0107西门_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/1f弱电井#2/0107东门_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/1f弱电井#2/0109西门_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/1f弱电井#2/0109东门_onoff"].htmlobj.push(door13);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/1f弱电井#2/0103西门_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/1f弱电井#2/0103东门_onoff"].htmlobj.push(door15);
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item1108loopstatus_iopc1_loop_2_43_3_s"].htmlobj.push(zm1);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item1116loopstatus_iopc1_loop_2_44_5_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item1114loopstatus_iopc1_loop_2_44_3_s"].htmlobj.push(zm3);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item1115loopstatus_iopc1_loop_2_44_4_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item1117loopstatus_iopc1_loop_2_44_6_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item1107loopstatus_iopc1_loop_2_43_2_s"].htmlobj.push(zm6);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item1110loopstatus_iopc1_loop_2_43_5_s"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item1106loopstatus_iopc1_loop_2_43_1_s"].htmlobj.push(zm9);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item418loopcontrol_iopc1_loop_2_44_1_c"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm16);
var zm17=new swimgObj('zm17','images/light_on.png','images/light_off.png');
db["item1100loopstatus_iopc1_loop_2_42_3_s"].htmlobj.push(zm17);
var zm18=new swimgObj('zm18','images/light_on.png','images/light_off.png');
db["item1098loopstatus_iopc1_loop_2_42_1_s"].htmlobj.push(zm18);
var zm19=new swimgObj('zm19','images/light_on.png','images/light_off.png');
db["item1100loopstatus_iopc1_loop_2_42_3_s"].htmlobj.push(zm19);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item1114loopstatus_iopc1_loop_2_44_3_s"].htmlobj.push(zm7);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/主楼1F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼1F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/主楼1F.jpg" />
<img id="door1" style="position:absolute;border:0px;left:395px;top:457px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door1_js();"/>
<img id="door2" style="position:absolute;border:0px;left:404px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door2_js();"/>
<img id="door3" style="position:absolute;border:0px;left:680px;top:328px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door3_js();"/>
<img id="door4" style="position:absolute;border:0px;left:776px;top:328px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door4_js();"/>
<img id="door5" style="position:absolute;border:0px;left:776px;top:288px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door5_js();"/>
<img id="door8" style="position:absolute;border:0px;left:992px;top:320px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:1272px;top:328px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:1256px;top:448px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:1424px;top:448px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:1504px;top:448px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:1616px;top:448px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door14" style="position:absolute;border:0px;left:1192px;top:568px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:1320px;top:568px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="j" style="position:absolute;border:0px;left:1416px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j_js();"/>
<img id="d" style="position:absolute;border:0px;left:1496px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d_js();"/>
<img id="jk1" style="position:absolute;border:0px;left:1064px;top:664px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk1_js();"/>
<img id="jk2" style="position:absolute;border:0px;left:1064px;top:616px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="m" style="position:absolute;border:0px;left:1344px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:871px;top:312px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="2-43-3"/>
<img id="zm2" style="position:absolute;border:0px;left:912px;top:312px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="2-44-5"/>
<img id="zm3" style="position:absolute;border:0px;left:869px;top:351px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="2-44-3"/>
<img id="zm4" style="position:absolute;border:0px;left:914px;top:349px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="2-44-4"/>
<img id="zm5" style="position:absolute;border:0px;left:448px;top:448px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="2-44-6"/>
<img id="zm6" style="position:absolute;border:0px;left:648px;top:384px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="2-43-2"/>
<img id="zm8" style="position:absolute;border:0px;left:848px;top:440px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="2-43-5"/>
<img id="zm9" style="position:absolute;border:0px;left:913px;top:441px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="2-43-1"/>
<img id="zm10" style="position:absolute;border:0px;left:888px;top:504px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="2-44-1"/>
<img id="zm11" style="position:absolute;border:0px;left:1376px;top:496px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="2-41-1"/>
<img id="zm12" style="position:absolute;border:0px;left:1600px;top:512px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="2-41-6"/>
<img id="zm13" style="position:absolute;border:0px;left:1346px;top:366px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="2-41-2"/>
<img id="zm14" style="position:absolute;border:0px;left:1510px;top:368px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="2-41-4"/>
<img id="zm15" style="position:absolute;border:0px;left:1536px;top:328px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="2-41-5"/>
<img id="zm16" style="position:absolute;border:0px;left:1416px;top:336px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="2-41-3"/>
<img id="zm17" style="position:absolute;border:0px;left:884px;top:576px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm17_js();" title="2-42-3"/>
<img id="zm18" style="position:absolute;border:0px;left:884px;top:625px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm18_js();" title="2-42-1"/>
<img id="zm19" style="position:absolute;border:0px;left:885px;top:677px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm19_js();" title="2-42-3"/>
<button id="saddr2" style="position:absolute;cursor:pointer;left:136px;width:235px;height:48px;top:696px;font-family:'宋体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:saddr2_js();">金卤灯全开</button>
<button id="saddr3" style="position:absolute;cursor:pointer;left:136px;width:235px;height:48px;top:768px;font-family:'宋体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:saddr3_js();">金卤灯开两路1</button>
<button id="saddr4" style="position:absolute;cursor:pointer;left:136px;width:235px;height:48px;top:840px;font-family:'宋体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:saddr4_js();">金卤灯开两路2</button>
<button id="saddr5" style="position:absolute;cursor:pointer;left:136px;width:235px;height:48px;top:912px;font-family:'宋体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:saddr5_js();">金卤灯全关</button>
<img id="jk3" style="position:absolute;border:0px;left:672px;top:616px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:664px;top:656px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:368px;top:592px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:160px;top:584px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:168px;top:504px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:560px;top:472px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:224px;top:360px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:296px;top:336px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:360px;top:312px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:936px;top:336px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:840px;top:376px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:912px;top:376px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="jk15" style="position:absolute;border:0px;left:1200px;top:328px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk15_js();"/>
<img id="jk16" style="position:absolute;border:0px;left:1400px;top:320px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk16_js();"/>
<img id="jk17" style="position:absolute;border:0px;left:1464px;top:336px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk17_js();"/>
<img id="jk18" style="position:absolute;border:0px;left:1688px;top:368px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk18_js();"/>
<img id="jk19" style="position:absolute;border:0px;left:824px;top:504px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk19_js();"/>
<img id="jk20" style="position:absolute;border:0px;left:952px;top:504px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk20_js();"/>
<img id="jk21" style="position:absolute;border:0px;left:888px;top:472px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk21_js();"/>
<img id="jk22" style="position:absolute;border:0px;left:1648px;top:496px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk22_js();"/>
<img id="jk23" style="position:absolute;border:0px;left:1656px;top:528px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk23_js();"/>
<img id="jk24" style="position:absolute;border:0px;left:952px;top:568px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk24_js();"/>
<img id="jk25" style="position:absolute;border:0px;left:1608px;top:544px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk25_js();"/>
<img id="zm7" style="position:absolute;border:0px;left:1056px;top:384px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="2-44-3"/>

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
