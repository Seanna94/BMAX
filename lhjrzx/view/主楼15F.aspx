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
<title>主楼15F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 45;
db["door/15f弱电井#1/1504_onoff"]={tagname:"door/15f弱电井#1/1504_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#1/1506西门主会议室_onoff"]={tagname:"door/15f弱电井#1/1506西门主会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#1/1506东门主会议室_onoff"]={tagname:"door/15f弱电井#1/1506东门主会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#2/1508西门_onoff"]={tagname:"door/15f弱电井#2/1508西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#2/1508东门_onoff"]={tagname:"door/15f弱电井#2/1508东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#2/1510_onoff"]={tagname:"door/15f弱电井#2/1510_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#2/1516_onoff"]={tagname:"door/15f弱电井#2/1516_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#1/1514_onoff"]={tagname:"door/15f弱电井#1/1514_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#1/1512_onoff"]={tagname:"door/15f弱电井#1/1512_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#2/1518_onoff"]={tagname:"door/15f弱电井#2/1518_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#2/1522_onoff"]={tagname:"door/15f弱电井#2/1522_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#2/1520_onoff"]={tagname:"door/15f弱电井#2/1520_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#2/1524_onoff"]={tagname:"door/15f弱电井#2/1524_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#1/1502北门会议室_onoff"]={tagname:"door/15f弱电井#1/1502北门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#1/1502南门会议室_onoff"]={tagname:"door/15f弱电井#1/1502南门会议室_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#1/1501_onoff"]={tagname:"door/15f弱电井#1/1501_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#1/1503_onoff"]={tagname:"door/15f弱电井#1/1503_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#1/1505_onoff"]={tagname:"door/15f弱电井#1/1505_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#1/1507_onoff"]={tagname:"door/15f弱电井#1/1507_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#1/1509_onoff"]={tagname:"door/15f弱电井#1/1509_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/14f弱电井#1/1404_onoff"]={tagname:"door/14f弱电井#1/1404_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#1/1511_onoff"]={tagname:"door/15f弱电井#1/1511_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#2/1513_onoff"]={tagname:"door/15f弱电井#2/1513_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#2/1517_onoff"]={tagname:"door/15f弱电井#2/1517_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#2/1521_onoff"]={tagname:"door/15f弱电井#2/1521_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#2/1523_onoff"]={tagname:"door/15f弱电井#2/1523_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#2/1525_onoff"]={tagname:"door/15f弱电井#2/1525_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#2/1528_onoff"]={tagname:"door/15f弱电井#2/1528_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/15f弱电井#2/1515_onoff"]={tagname:"door/15f弱电井#2/1515_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item735loopstatus_iopc1_loop_1_37_2_s"]={tagname:"item735loopstatus_iopc1_loop_1_37_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item734loopstatus_iopc1_loop_1_37_1_s"]={tagname:"item734loopstatus_iopc1_loop_1_37_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item721loopstatus_iopc1_loop_1_34_4_s"]={tagname:"item721loopstatus_iopc1_loop_1_34_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item732loopstatus_iopc1_loop_1_36_5_s"]={tagname:"item732loopstatus_iopc1_loop_1_36_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item733loopstatus_iopc1_loop_1_36_6_s"]={tagname:"item733loopstatus_iopc1_loop_1_36_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item731loopstatus_iopc1_loop_1_36_4_s"]={tagname:"item731loopstatus_iopc1_loop_1_36_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item730loopstatus_iopc1_loop_1_36_3_s"]={tagname:"item730loopstatus_iopc1_loop_1_36_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item736loopstatus_iopc1_loop_1_37_3_s"]={tagname:"item736loopstatus_iopc1_loop_1_37_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1287loopstatus_iopc1_loop_4_31_8_s"]={tagname:"item1287loopstatus_iopc1_loop_4_31_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item738loopstatus_iopc1_loop_1_37_5_s"]={tagname:"item738loopstatus_iopc1_loop_1_37_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item774loopstatus_iopc1_loop_1_43_5_s"]={tagname:"item774loopstatus_iopc1_loop_1_43_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item724loopstatus_iopc1_loop_1_35_1_s"]={tagname:"item724loopstatus_iopc1_loop_1_35_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item723loopstatus_iopc1_loop_1_34_6_s"]={tagname:"item723loopstatus_iopc1_loop_1_34_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item720loopstatus_iopc1_loop_1_34_3_s"]={tagname:"item720loopstatus_iopc1_loop_1_34_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item773loopstatus_iopc1_loop_1_43_4_s"]={tagname:"item773loopstatus_iopc1_loop_1_43_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item775loopstatus_iopc1_loop_1_43_6_s"]={tagname:"item775loopstatus_iopc1_loop_1_43_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
writetag("Door/15F弱电井#1/1504","");
}
function door2_js(){
writetag("Door/15F弱电井#1/1506西门主会议室","");
}
function door3_js(){
writetag("Door/15F弱电井#1/1506东门主会议室","");
}
function door4_js(){
writetag("Door/15F弱电井#2/1508西门","");
}
function door5_js(){
writetag("Door/15F弱电井#2/1508东门","");
}
function door6_js(){
writetag("Door/15F弱电井#2/1510","");
}
function door7_js(){
writetag("Door/15F弱电井#2/1516","");
}
function door8_js(){
writetag("Door/15F弱电井#1/1514","");
}
function door9_js(){
writetag("Door/15F弱电井#1/1512","");
}
function door10_js(){
writetag("Door/15F弱电井#2/1518","");
}
function door11_js(){
writetag("Door/15F弱电井#2/1522","");
}
function door12_js(){
writetag("Door/15F弱电井#2/1520","");
}
function door13_js(){
writetag("Door/15F弱电井#2/1524","");
}
function door15_js(){
writetag("Door/15F弱电井#1/1502北门会议室","");
}
function door16_js(){
writetag("Door/15F弱电井#1/1502南门会议室","");
}
function door17_js(){
writetag("Door/15F弱电井#1/1501","");
}
function door18_js(){
writetag("Door/15F弱电井#1/1503","");
}
function door19_js(){
writetag("Door/15F弱电井#1/1505","");
}
function door20_js(){
writetag("Door/15F弱电井#1/1507","");
}
function door21_js(){
writetag("Door/15F弱电井#1/1509","");
}
function door22_js(){
writetag("Door/14F弱电井#1/1404","");
}
function door23_js(){
writetag("Door/15F弱电井#1/1511","");
}
function door24_js(){
writetag("Door/15F弱电井#2/1513","");
}
function door25_js(){
writetag("Door/15F弱电井#2/1517","");
}
function door26_js(){
writetag("Door/15F弱电井#2/1521","");
}
function door27_js(){
writetag("Door/15F弱电井#2/1523","");
}
function door28_js(){
writetag("Door/15F弱电井#2/1525","");
}
function door14_js(){
writetag("Door/15F弱电井#2/1528","");
}
function door29_js(){
writetag("Door/15F弱电井#2/1515","");
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
writetag("ITEM41LoopControl_IOPC1_LOOP_1_37_2_C","");
}
function zm2_js(){
writetag("ITEM40LoopControl_IOPC1_LOOP_1_37_1_C","");
}
function zm3_js(){
writetag("ITEM27LoopControl_IOPC1_LOOP_1_34_4_C","");
}
function zm4_js(){
writetag("ITEM38LoopControl_IOPC1_LOOP_1_36_5_C","");
}
function zm5_js(){
writetag("ITEM39LoopControl_IOPC1_LOOP_1_36_6_C","");
}
function zm6_js(){
writetag("ITEM37LoopControl_IOPC1_LOOP_1_36_4_C","");
}
function zm7_js(){
writetag("ITEM36LoopControl_IOPC1_LOOP_1_36_3_C","");
}
function zm8_js(){
writetag("ITEM42LoopControl_IOPC1_LOOP_1_37_3_C","");
}
function zm9_js(){
writetag("ITEM739LoopStatus_IOPC1_LOOP_1_37_6_S","");
}
function zm11_js(){
writetag("ITEM44LoopControl_IOPC1_LOOP_1_37_5_C","");
}
function zm12_js(){
writetag("ITEM80LoopControl_IOPC1_LOOP_1_43_5_C","");
}
function zm13_js(){
writetag("ITEM30LoopControl_IOPC1_LOOP_1_35_1_C","");
}
function zm14_js(){
writetag("ITEM29LoopControl_IOPC1_LOOP_1_34_6_C","");
}
function zm15_js(){
writetag("ITEM26LoopControl_IOPC1_LOOP_1_34_3_C","");
}
function zm16_js(){
writetag("ITEM79LoopControl_IOPC1_LOOP_1_43_4_C","");
}
function zm17_js(){
writetag("ITEM81LoopControl_IOPC1_LOOP_1_43_6_C","");
}
function zm18_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm19_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm20_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function jk2_js(){
open_video2("192.168.3.215");
}
function jk3_js(){
open_video2("192.168.3.213");
}
function jk4_js(){
open_video2("192.168.3.214");
}
function jk5_js(){
open_video2("192.168.3.220");
}
function jk6_js(){
open_video2("192.168.3.221");
}
function jk7_js(){
open_video2("192.168.3.218");
}
function jk8_js(){
open_video2("192.168.3.219");
}
function jk9_js(){
open_video2("192.168.3.216");
}
function jk10_js(){
open_video2("192.168.3.217");
}
function jk11_js(){
open_video2("192.168.3.210");
}
function jk12_js(){
open_video2("192.168.3.211");
}
function jk13_js(){
open_video2("192.168.3.212");
}
function jk14_js(){
open_video2("192.168.3.222");
}
function zm21_js(){
writetag("ITEM44LoopControl_IOPC1_LOOP_1_37_5_C","");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door1=new swimgObj('door1','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#1/1504_onoff"].htmlobj.push(door1);
var door2=new swimgObj('door2','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#1/1506西门主会议室_onoff"].htmlobj.push(door2);
var door3=new swimgObj('door3','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#1/1506东门主会议室_onoff"].htmlobj.push(door3);
var door4=new swimgObj('door4','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#2/1508西门_onoff"].htmlobj.push(door4);
var door5=new swimgObj('door5','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#2/1508东门_onoff"].htmlobj.push(door5);
var door6=new swimgObj('door6','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#2/1510_onoff"].htmlobj.push(door6);
var door7=new swimgObj('door7','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#2/1516_onoff"].htmlobj.push(door7);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#1/1514_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#1/1512_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#2/1518_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#2/1522_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#2/1520_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#2/1524_onoff"].htmlobj.push(door13);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#1/1502北门会议室_onoff"].htmlobj.push(door15);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#1/1502南门会议室_onoff"].htmlobj.push(door16);
var door17=new swimgObj('door17','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#1/1501_onoff"].htmlobj.push(door17);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#1/1503_onoff"].htmlobj.push(door18);
var door19=new swimgObj('door19','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#1/1505_onoff"].htmlobj.push(door19);
var door20=new swimgObj('door20','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#1/1507_onoff"].htmlobj.push(door20);
var door21=new swimgObj('door21','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#1/1509_onoff"].htmlobj.push(door21);
var door22=new swimgObj('door22','images/door_km.gif','images/door_close.gif');
db["door/14f弱电井#1/1404_onoff"].htmlobj.push(door22);
var door23=new swimgObj('door23','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#1/1511_onoff"].htmlobj.push(door23);
var door24=new swimgObj('door24','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#2/1513_onoff"].htmlobj.push(door24);
var door25=new swimgObj('door25','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#2/1517_onoff"].htmlobj.push(door25);
var door26=new swimgObj('door26','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#2/1521_onoff"].htmlobj.push(door26);
var door27=new swimgObj('door27','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#2/1523_onoff"].htmlobj.push(door27);
var door28=new swimgObj('door28','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#2/1525_onoff"].htmlobj.push(door28);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#2/1528_onoff"].htmlobj.push(door14);
var door29=new swimgObj('door29','images/door_km.gif','images/door_close.gif');
db["door/15f弱电井#2/1515_onoff"].htmlobj.push(door29);
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item735loopstatus_iopc1_loop_1_37_2_s"].htmlobj.push(zm1);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item734loopstatus_iopc1_loop_1_37_1_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item721loopstatus_iopc1_loop_1_34_4_s"].htmlobj.push(zm3);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item732loopstatus_iopc1_loop_1_36_5_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item733loopstatus_iopc1_loop_1_36_6_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item731loopstatus_iopc1_loop_1_36_4_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item730loopstatus_iopc1_loop_1_36_3_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item736loopstatus_iopc1_loop_1_37_3_s"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm9);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item738loopstatus_iopc1_loop_1_37_5_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item774loopstatus_iopc1_loop_1_43_5_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item724loopstatus_iopc1_loop_1_35_1_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item723loopstatus_iopc1_loop_1_34_6_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item720loopstatus_iopc1_loop_1_34_3_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item773loopstatus_iopc1_loop_1_43_4_s"].htmlobj.push(zm16);
var zm17=new swimgObj('zm17','images/light_on.png','images/light_off.png');
db["item775loopstatus_iopc1_loop_1_43_6_s"].htmlobj.push(zm17);
var zm18=new swimgObj('zm18','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm18);
var zm19=new swimgObj('zm19','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm19);
var zm20=new swimgObj('zm20','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm20);
var zm21=new swimgObj('zm21','images/light_on.png','images/light_off.png');
db["item738loopstatus_iopc1_loop_1_37_5_s"].htmlobj.push(zm21);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/主楼15F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼15F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/15F.jpg" />
<img id="door1" style="position:absolute;border:0px;left:480px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door1_js();"/>
<img id="door2" style="position:absolute;border:0px;left:616px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door2_js();"/>
<img id="door3" style="position:absolute;border:0px;left:776px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door3_js();"/>
<img id="door4" style="position:absolute;border:0px;left:832px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door4_js();"/>
<img id="door5" style="position:absolute;border:0px;left:920px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door5_js();"/>
<img id="door6" style="position:absolute;border:0px;left:968px;top:416px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door6_js();"/>
<img id="door7" style="position:absolute;border:0px;left:1064px;top:416px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door7_js();"/>
<img id="door8" style="position:absolute;border:0px;left:1056px;top:356px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:976px;top:360px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:1128px;top:362px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:1204px;top:362px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:1128px;top:416px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:1212px;top:416px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door15" style="position:absolute;border:0px;left:280px;top:504px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door16" style="position:absolute;border:0px;left:272px;top:568px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door17" style="position:absolute;border:0px;left:429px;top:715px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door17_js();"/>
<img id="door18" style="position:absolute;border:0px;left:576px;top:728px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="door19" style="position:absolute;border:0px;left:584px;top:640px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door19_js();"/>
<img id="door20" style="position:absolute;border:0px;left:742px;top:724px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door20_js();"/>
<img id="door21" style="position:absolute;border:0px;left:830px;top:724px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door21_js();"/>
<img id="door22" style="position:absolute;border:0px;left:984px;top:724px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door22_js();"/>
<img id="door23" style="position:absolute;border:0px;left:902px;top:724px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door23_js();"/>
<img id="door24" style="position:absolute;border:0px;left:1086px;top:724px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door24_js();"/>
<img id="door25" style="position:absolute;border:0px;left:1238px;top:724px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door25_js();"/>
<img id="door26" style="position:absolute;border:0px;left:1327px;top:724px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door26_js();"/>
<img id="door27" style="position:absolute;border:0px;left:1409px;top:723px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door27_js();"/>
<img id="door28" style="position:absolute;border:0px;left:1517px;top:724px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door28_js();"/>
<img id="door14" style="position:absolute;border:0px;left:1263px;top:392px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door29" style="position:absolute;border:0px;left:1166px;top:724px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door29_js();"/>
<img id="j1" style="position:absolute;border:0px;left:1392px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j1_js();"/>
<img id="d1" style="position:absolute;border:0px;left:1472px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d1_js();"/>
<img id="m1" style="position:absolute;border:0px;left:1320px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m1_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:240px;top:696px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="1-37-2"/>
<img id="zm2" style="position:absolute;border:0px;left:232px;top:720px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="1-37-1"/>
<img id="zm3" style="position:absolute;border:0px;left:352px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="1-34-4"/>
<img id="zm4" style="position:absolute;border:0px;left:256px;top:624px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="1-36-5"/>
<img id="zm5" style="position:absolute;border:0px;left:376px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="1-36-6"/>
<img id="zm6" style="position:absolute;border:0px;left:600px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="1-36-4"/>
<img id="zm7" style="position:absolute;border:0px;left:880px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="1-36-3"/>
<img id="zm8" style="position:absolute;border:0px;left:1208px;top:624px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="1-37-3"/>
<img id="zm9" style="position:absolute;border:0px;left:1456px;top:648px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="1-37-6"/>
<img id="zm11" style="position:absolute;border:0px;left:1432px;top:528px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="1-37-5"/>
<img id="zm12" style="position:absolute;border:0px;left:1352px;top:392px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="1-34-5"/>
<img id="zm13" style="position:absolute;border:0px;left:416px;top:416px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="1-35-1"/>
<img id="zm14" style="position:absolute;border:0px;left:480px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="1-34-6"/>
<img id="zm15" style="position:absolute;border:0px;left:648px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="1-34-3"/>
<img id="zm16" style="position:absolute;border:0px;left:1072px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="1-43-4"/>
<img id="zm17" style="position:absolute;border:0px;left:1224px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm17_js();" title="1-43-6"/>
<img id="zm18" style="position:absolute;border:0px;left:848px;top:536px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm18_js();" title="1-36-2"/>
<img id="zm19" style="position:absolute;border:0px;left:920px;top:536px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm19_js();" title="1-38-6"/>
<img id="zm20" style="position:absolute;border:0px;left:888px;top:536px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm20_js();" title="1-36-1"/>
<img id="jk2" style="position:absolute;border:0px;left:896px;top:576px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:808px;top:608px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:944px;top:608px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:1488px;top:608px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:1432px;top:576px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:1352px;top:424px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:1464px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:824px;top:456px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:920px;top:456px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:304px;top:456px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:232px;top:632px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:216px;top:736px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:328px;top:568px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="zm21" style="position:absolute;border:0px;left:1512px;top:632px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm21_js();" title="1-37-5"/>

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
