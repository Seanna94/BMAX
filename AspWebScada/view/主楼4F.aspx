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
<title>主楼4F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 34;
db["door/4f弱电井#1/404_onoff"]={tagname:"door/4f弱电井#1/404_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#1/406_onoff"]={tagname:"door/4f弱电井#1/406_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#1/408西门_onoff"]={tagname:"door/4f弱电井#1/408西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#1/408东门_onoff"]={tagname:"door/4f弱电井#1/408东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#2/410西门_onoff"]={tagname:"door/4f弱电井#2/410西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#2/410中门_onoff"]={tagname:"door/4f弱电井#2/410中门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#2/410东门_onoff"]={tagname:"door/4f弱电井#2/410东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#1/402南门会议室_onoff"]={tagname:"door/4f弱电井#1/402南门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#2/415北门_onoff"]={tagname:"door/4f弱电井#2/415北门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#1/401西门视频会议室_onoff"]={tagname:"door/4f弱电井#1/401西门视频会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#1/401东门视频会议室_onoff"]={tagname:"door/4f弱电井#1/401东门视频会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#1/403_onoff"]={tagname:"door/4f弱电井#1/403_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#1/405西门_onoff"]={tagname:"door/4f弱电井#1/405西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#1/405东门_onoff"]={tagname:"door/4f弱电井#1/405东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#2/407_onoff"]={tagname:"door/4f弱电井#2/407_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#2/409_onoff"]={tagname:"door/4f弱电井#2/409_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#2/411_onoff"]={tagname:"door/4f弱电井#2/411_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/4f弱电井#2/413_onoff"]={tagname:"door/4f弱电井#2/413_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1015loopstatus_iopc1_loop_2_28_8_s"]={tagname:"item1015loopstatus_iopc1_loop_2_28_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1014loopstatus_iopc1_loop_2_28_7_s"]={tagname:"item1014loopstatus_iopc1_loop_2_28_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1009loopstatus_iopc1_loop_2_28_2_s"]={tagname:"item1009loopstatus_iopc1_loop_2_28_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1008loopstatus_iopc1_loop_2_28_1_s"]={tagname:"item1008loopstatus_iopc1_loop_2_28_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1016loopstatus_iopc1_loop_2_29_1_s"]={tagname:"item1016loopstatus_iopc1_loop_2_29_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1018loopstatus_iopc1_loop_2_29_3_s"]={tagname:"item1018loopstatus_iopc1_loop_2_29_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1021loopstatus_iopc1_loop_2_29_6_s"]={tagname:"item1021loopstatus_iopc1_loop_2_29_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1019loopstatus_iopc1_loop_2_29_4_s"]={tagname:"item1019loopstatus_iopc1_loop_2_29_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1024loopstatus_iopc1_loop_2_30_3_s"]={tagname:"item1024loopstatus_iopc1_loop_2_30_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1027loopstatus_iopc1_loop_2_30_6_s"]={tagname:"item1027loopstatus_iopc1_loop_2_30_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1022loopstatus_iopc1_loop_2_30_1_s"]={tagname:"item1022loopstatus_iopc1_loop_2_30_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1023loopstatus_iopc1_loop_2_30_2_s"]={tagname:"item1023loopstatus_iopc1_loop_2_30_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1028loopstatus_iopc1_loop_2_31_1_s"]={tagname:"item1028loopstatus_iopc1_loop_2_31_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1029loopstatus_iopc1_loop_2_31_2_s"]={tagname:"item1029loopstatus_iopc1_loop_2_31_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1026loopstatus_iopc1_loop_2_30_5_s"]={tagname:"item1026loopstatus_iopc1_loop_2_30_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1287loopstatus_iopc1_loop_4_31_8_s"]={tagname:"item1287loopstatus_iopc1_loop_4_31_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
writetag("Door/4F弱电井#1/404","");
}
function door2_js(){
writetag("Door/4F弱电井#1/406","");
}
function door3_js(){
writetag("Door/4F弱电井#1/408","");
}
function door4_js(){
writetag("Door/4F弱电井#1/408","");
}
function door5_js(){
writetag("Door/4F弱电井#2/410西门","");
}
function door6_js(){
writetag("Door/4F弱电井#2/410中门","");
}
function door7_js(){
writetag("Door/4F弱电井#2/410东门","");
}
function door8_js(){
writetag("Door/4F弱电井#1/402南门会议室","");
}
function door9_js(){
writetag("Door/4F弱电井#1/402南门会议室","");
}
function door10_js(){
writetag("user.Door/4F弱电井#2/415北门_OnOff","");
}
function door11_js(){
writetag("Door/4F弱电井#1/401西门视频会议室","");
}
function door12_js(){
writetag("Door/4F弱电井#1/401东门视频会议室","");
}
function door13_js(){
writetag("Door/4F弱电井#1/403","");
}
function door14_js(){
writetag("Door/4F弱电井#1/405西门","");
}
function door15_js(){
writetag("Door/4F弱电井#1/405东门","");
}
function door16_js(){
writetag("Door/4F弱电井#2/407","");
}
function door17_js(){
writetag("Door/4F弱电井#2/409","");
}
function door18_js(){
writetag("Door/4F弱电井#2/411","");
}
function door19_js(){
writetag("Door/4F弱电井#2/413","");
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
writetag("ITEM321LoopControl_IOPC1_LOOP_2_28_8_C","");
}
function zm2_js(){
writetag("ITEM320LoopControl_IOPC1_LOOP_2_28_7_C","");
}
function zm3_js(){
writetag("ITEM315LoopControl_IOPC1_LOOP_2_28_2_C","");
}
function zm4_js(){
writetag("ITEM314LoopControl_IOPC1_LOOP_2_28_1_C","");
}
function zm5_js(){
writetag("ITEM322LoopControl_IOPC1_LOOP_2_29_1_C","");
}
function zm6_js(){
writetag("ITEM324LoopControl_IOPC1_LOOP_2_29_3_C","");
}
function zm7_js(){
writetag("ITEM327LoopControl_IOPC1_LOOP_2_29_6_C","");
}
function zm8_js(){
writetag("ITEM325LoopControl_IOPC1_LOOP_2_29_4_C","");
}
function zm9_js(){
writetag("ITEM330LoopControl_IOPC1_LOOP_2_30_3_C","");
}
function zm10_js(){
writetag("ITEM333LoopControl_IOPC1_LOOP_2_30_6_C","");
}
function zm11_js(){
writetag("ITEM328LoopControl_IOPC1_LOOP_2_30_1_C","");
}
function zm12_js(){
writetag("ITEM329LoopControl_IOPC1_LOOP_2_30_2_C","");
}
function zm13_js(){
writetag("ITEM334LoopControl_IOPC1_LOOP_2_31_1_C","");
}
function zm14_js(){
writetag("ITEM335LoopControl_IOPC1_LOOP_2_31_2_C","");
}
function zm15_js(){
writetag("ITEM332LoopControl_IOPC1_LOOP_2_30_5_C","");
}
function zm16_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function jk2_js(){
open_video2("192.168.3.58");
}
function jk3_js(){
open_video2("192.168.3.57");
}
function jk4_js(){
open_video2("192.168.3.68");
}
function jk5_js(){
open_video2("192.168.3.59");
}
function jk6_js(){
open_video2("192.168.3.60");
}
function jk7_js(){
open_video2("192.168.3.61");
}
function jk8_js(){
open_video2("192.168.3.66");
}
function jk9_js(){
open_video2("192.168.3.67");
}
function jk10_js(){
open_video2("192.168.3.65");
}
function jk11_js(){
open_video2("192.168.3.64");
}
function jk12_js(){
open_video2("192.168.3.62");
}
function jk13_js(){
open_video2("192.168.3.63");
}
function jk14_js(){
open_video2("192.168.3.56");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door1=new swimgObj('door1','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#1/404_onoff"].htmlobj.push(door1);
var door2=new swimgObj('door2','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#1/406_onoff"].htmlobj.push(door2);
var door3=new swimgObj('door3','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#1/408西门_onoff"].htmlobj.push(door3);
var door4=new swimgObj('door4','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#1/408东门_onoff"].htmlobj.push(door4);
var door5=new swimgObj('door5','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#2/410西门_onoff"].htmlobj.push(door5);
var door6=new swimgObj('door6','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#2/410中门_onoff"].htmlobj.push(door6);
var door7=new swimgObj('door7','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#2/410东门_onoff"].htmlobj.push(door7);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#1/402南门会议室_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#1/402南门会议室_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#2/415北门_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#1/401西门视频会议室_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#1/401东门视频会议室_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#1/403_onoff"].htmlobj.push(door13);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#1/405西门_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#1/405东门_onoff"].htmlobj.push(door15);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#2/407_onoff"].htmlobj.push(door16);
var door17=new swimgObj('door17','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#2/409_onoff"].htmlobj.push(door17);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#2/411_onoff"].htmlobj.push(door18);
var door19=new swimgObj('door19','images/door_km.gif','images/door_close.gif');
db["door/4f弱电井#2/413_onoff"].htmlobj.push(door19);
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item1015loopstatus_iopc1_loop_2_28_8_s"].htmlobj.push(zm1);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item1014loopstatus_iopc1_loop_2_28_7_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item1009loopstatus_iopc1_loop_2_28_2_s"].htmlobj.push(zm3);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item1008loopstatus_iopc1_loop_2_28_1_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item1016loopstatus_iopc1_loop_2_29_1_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item1018loopstatus_iopc1_loop_2_29_3_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item1021loopstatus_iopc1_loop_2_29_6_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item1019loopstatus_iopc1_loop_2_29_4_s"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item1024loopstatus_iopc1_loop_2_30_3_s"].htmlobj.push(zm9);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item1027loopstatus_iopc1_loop_2_30_6_s"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item1022loopstatus_iopc1_loop_2_30_1_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item1023loopstatus_iopc1_loop_2_30_2_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item1028loopstatus_iopc1_loop_2_31_1_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item1029loopstatus_iopc1_loop_2_31_2_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item1026loopstatus_iopc1_loop_2_30_5_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm16);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/主楼4F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼4F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/4ZF.jpg" />
<img id="door1" style="position:absolute;border:0px;left:528px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door1_js();"/>
<img id="door2" style="position:absolute;border:0px;left:632px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door2_js();"/>
<img id="door3" style="position:absolute;border:0px;left:720px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door3_js();"/>
<img id="door4" style="position:absolute;border:0px;left:784px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door4_js();"/>
<img id="door5" style="position:absolute;border:0px;left:976px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door5_js();"/>
<img id="door6" style="position:absolute;border:0px;left:1056px;top:406px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door6_js();"/>
<img id="door7" style="position:absolute;border:0px;left:1193px;top:405px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door7_js();"/>
<img id="door8" style="position:absolute;border:0px;left:288px;top:504px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:280px;top:576px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:1576px;top:544px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:368px;top:672px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:592px;top:672px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:752px;top:672px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door14" style="position:absolute;border:0px;left:816px;top:672px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:928px;top:672px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door16" style="position:absolute;border:0px;left:992px;top:672px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door17" style="position:absolute;border:0px;left:1088px;top:672px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door17_js();"/>
<img id="door18" style="position:absolute;border:0px;left:1152px;top:672px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="door19" style="position:absolute;border:0px;left:1272px;top:672px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door19_js();"/>
<img id="j1" style="position:absolute;border:0px;left:1400px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j1_js();"/>
<img id="d1" style="position:absolute;border:0px;left:1480px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d1_js();"/>
<img id="m1" style="position:absolute;border:0px;left:1328px;top:26px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m1_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:1512px;top:632px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="2-28-8"/>
<img id="zm2" style="position:absolute;border:0px;left:1432px;top:552px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="2-28-7"/>
<img id="zm3" style="position:absolute;border:0px;left:1320px;top:612px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="2-28-2"/>
<img id="zm4" style="position:absolute;border:0px;left:1168px;top:616px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="2-28-1"/>
<img id="zm5" style="position:absolute;border:0px;left:485px;top:617px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="2-29-1"/>
<img id="zm6" style="position:absolute;border:0px;left:1016px;top:616px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="2-29-3"/>
<img id="zm7" style="position:absolute;border:0px;left:856px;top:544px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="2-29-6"/>
<img id="zm8" style="position:absolute;border:0px;left:904px;top:544px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="2-29-4"/>
<img id="zm9" style="position:absolute;border:0px;left:397px;top:409px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="2-30-3"/>
<img id="zm10" style="position:absolute;border:0px;left:353px;top:480px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="2-30-6"/>
<img id="zm11" style="position:absolute;border:0px;left:296px;top:432px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="2-30-1"/>
<img id="zm12" style="position:absolute;border:0px;left:488px;top:472px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="2-30-2"/>
<img id="zm13" style="position:absolute;border:0px;left:664px;top:472px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="2-31-1"/>
<img id="zm14" style="position:absolute;border:0px;left:1040px;top:472px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="2-31-2"/>
<img id="zm15" style="position:absolute;border:0px;left:1368px;top:392px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="2-30-5"/>
<img id="zm16" style="position:absolute;border:0px;left:1375px;top:420px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="2-30-4"/>
<img id="jk2" style="position:absolute;border:0px;left:232px;top:720px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:240px;top:624px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:336px;top:568px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:792px;top:616px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:968px;top:616px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:888px;top:584px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:1440px;top:584px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:1408px;top:616px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:1472px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:1352px;top:416px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:808px;top:456px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:952px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:280px;top:456px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>

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
