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
<title>主楼16F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 41;
db["door/16f弱电井#2/1602_onoff"]={tagname:"door/16f弱电井#2/1602_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#2/1604西门_onoff"]={tagname:"door/16f弱电井#2/1604西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#2/1604东门_onoff"]={tagname:"door/16f弱电井#2/1604东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#2/1604中门1_onoff"]={tagname:"door/16f弱电井#2/1604中门1_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#2/1606西门_onoff"]={tagname:"door/16f弱电井#2/1606西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#2/1606东门_onoff"]={tagname:"door/16f弱电井#2/1606东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#2/1608西门_onoff"]={tagname:"door/16f弱电井#2/1608西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#2/1608东门_onoff"]={tagname:"door/16f弱电井#2/1608东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#2/1610西门_onoff"]={tagname:"door/16f弱电井#2/1610西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#2/1610东门_onoff"]={tagname:"door/16f弱电井#2/1610东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#2/1614_onoff"]={tagname:"door/16f弱电井#2/1614_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#2/1612_onoff"]={tagname:"door/16f弱电井#2/1612_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#1/1601西门_onoff"]={tagname:"door/16f弱电井#1/1601西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#1/1601东门_onoff"]={tagname:"door/16f弱电井#1/1601东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#1/1603_onoff"]={tagname:"door/16f弱电井#1/1603_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#1/1605_onoff"]={tagname:"door/16f弱电井#1/1605_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#1/1607_onoff"]={tagname:"door/16f弱电井#1/1607_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#1/1609_onoff"]={tagname:"door/16f弱电井#1/1609_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#1/1611_onoff"]={tagname:"door/16f弱电井#1/1611_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#1/1613_onoff"]={tagname:"door/16f弱电井#1/1613_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#1/1615_onoff"]={tagname:"door/16f弱电井#1/1615_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#1/1617_onoff"]={tagname:"door/16f弱电井#1/1617_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#1/1619_onoff"]={tagname:"door/16f弱电井#1/1619_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/16f弱电井#2/1604中门2_onoff"]={tagname:"door/16f弱电井#2/1604中门2_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item696loopstatus_iopc1_loop_1_30_3_s"]={tagname:"item696loopstatus_iopc1_loop_1_30_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item712loopstatus_iopc1_loop_1_33_1_s"]={tagname:"item712loopstatus_iopc1_loop_1_33_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1287loopstatus_iopc1_loop_4_31_8_s"]={tagname:"item1287loopstatus_iopc1_loop_4_31_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item714loopstatus_iopc1_loop_1_33_3_s"]={tagname:"item714loopstatus_iopc1_loop_1_33_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item694loopstatus_iopc1_loop_1_30_1_s"]={tagname:"item694loopstatus_iopc1_loop_1_30_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item713loopstatus_iopc1_loop_1_33_2_s"]={tagname:"item713loopstatus_iopc1_loop_1_33_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item706loopstatus_iopc1_loop_1_32_1_s"]={tagname:"item706loopstatus_iopc1_loop_1_32_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item701loopstatus_iopc1_loop_1_31_2_s"]={tagname:"item701loopstatus_iopc1_loop_1_31_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item711loopstatus_iopc1_loop_1_32_6_s"]={tagname:"item711loopstatus_iopc1_loop_1_32_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item700loopstatus_iopc1_loop_1_31_1_s"]={tagname:"item700loopstatus_iopc1_loop_1_31_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item707loopstatus_iopc1_loop_1_32_2_s"]={tagname:"item707loopstatus_iopc1_loop_1_32_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item703loopstatus_iopc1_loop_1_31_4_s"]={tagname:"item703loopstatus_iopc1_loop_1_31_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item705loopstatus_iopc1_loop_1_31_6_s"]={tagname:"item705loopstatus_iopc1_loop_1_31_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item702loopstatus_iopc1_loop_1_31_3_s"]={tagname:"item702loopstatus_iopc1_loop_1_31_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item704loopstatus_iopc1_loop_1_31_5_s"]={tagname:"item704loopstatus_iopc1_loop_1_31_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item716loopstatus_iopc1_loop_1_33_5_s"]={tagname:"item716loopstatus_iopc1_loop_1_33_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item717loopstatus_iopc1_loop_1_33_6_s"]={tagname:"item717loopstatus_iopc1_loop_1_33_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
writetag("Door/16F弱电井#2/1602","");
}
function door4_js(){
writetag("Door/16F弱电井#2/1604西门","");
}
function door5_js(){
writetag("Door/16F弱电井#2/1604东门","");
}
function door6_js(){
writetag("Door/16F弱电井#2/1604中门1","");
}
function door7_js(){
writetag("Door/16F弱电井#2/1606西门","");
}
function door8_js(){
writetag("Door/16F弱电井#2/1606东门","");
}
function door9_js(){
writetag("Door/16F弱电井#2/1608西门","");
}
function door10_js(){
writetag("Door/16F弱电井#2/1608东门","");
}
function door11_js(){
writetag("Door/16F弱电井#2/1610西门","");
}
function door12_js(){
writetag("Door/16F弱电井#2/1610东门","");
}
function door13_js(){
writetag("Door/16F弱电井#2/1614","");
}
function door14_js(){
writetag("Door/16F弱电井#2/1612","");
}
function door15_js(){
writetag("Door/16F弱电井#1/1601西门","");
}
function door16_js(){
writetag("Door/16F弱电井#1/1601东门","");
}
function door17_js(){
writetag("Door/16F弱电井#1/1603","");
}
function door18_js(){
writetag("Door/16F弱电井#1/1605","");
}
function door19_js(){
writetag("Door/16F弱电井#1/1607","");
}
function door20_js(){
writetag("Door/16F弱电井#1/1609","");
}
function door21_js(){
writetag("Door/16F弱电井#1/1611","");
}
function door22_js(){
writetag("Door/16F弱电井#1/1613","");
}
function door23_js(){
writetag("Door/16F弱电井#1/1615","");
}
function door24_js(){
writetag("Door/16F弱电井#1/1617","");
}
function door25_js(){
writetag("Door/16F弱电井#1/1619","");
}
function door26_js(){
writetag("Door/16F弱电井#2/1604中门2","");
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
writetag("ITEM2LoopControl_IOPC1_LOOP_1_30_3_C","");
}
function zm2_js(){
writetag("ITEM18LoopControl_IOPC1_LOOP_1_33_1_C","");
}
function zm3_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm4_js(){
writetag("ITEM20LoopControl_IOPC1_LOOP_1_33_3_C","");
}
function zm5_js(){
writetag("ITEM0LoopControl_IOPC1_LOOP_1_30_1_C","");
}
function zm6_js(){
writetag("ITEM18LoopControl_IOPC1_LOOP_1_33_1_C","");
}
function zm7_js(){
writetag("ITEM19LoopControl_IOPC1_LOOP_1_33_2_C","");
}
function zm8_js(){
writetag("ITEM12LoopControl_IOPC1_LOOP_1_32_1_C","");
}
function zm9_js(){
writetag("ITEM7LoopControl_IOPC1_LOOP_1_31_2_C","");
}
function zm10_js(){
writetag("ITEM17LoopControl_IOPC1_LOOP_1_32_6_C","");
}
function zm11_js(){
writetag("ITEM6LoopControl_IOPC1_LOOP_1_31_1_C","");
}
function zm12_js(){
writetag("ITEM13LoopControl_IOPC1_LOOP_1_32_2_C","");
}
function zm13_js(){
writetag("ITEM9LoopControl_IOPC1_LOOP_1_31_4_C","");
}
function zm14_js(){
writetag("ITEM11LoopControl_IOPC1_LOOP_1_31_6_C","");
}
function zm15_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm16_js(){
writetag("ITEM8LoopControl_IOPC1_LOOP_1_31_3_C","");
}
function zm17_js(){
writetag("ITEM10LoopControl_IOPC1_LOOP_1_31_5_C","");
}
function zm18_js(){
writetag("ITEM22LoopControl_IOPC1_LOOP_1_33_5_C","");
}
function zm19_js(){
writetag("ITEM23LoopControl_IOPC1_LOOP_1_33_6_C","");
}
function zm20_js(){
writetag("ITEM6LoopControl_IOPC1_LOOP_1_31_1_C","");
}
function zm21_js(){
writetag("ITEM13LoopControl_IOPC1_LOOP_1_32_2_C","");
}
function jk2_js(){
open_video2("192.168.3.228");
}
function jk3_js(){
open_video2("192.168.3.226");
}
function jk4_js(){
open_video2("192.168.3.227");
}
function jk5_js(){
open_video2("192.168.3.233");
}
function jk6_js(){
open_video2("192.168.3.235");
}
function jk7_js(){
open_video2("192.168.3.232");
}
function jk8_js(){
open_video2("192.168.3.234");
}
function jk9_js(){
open_video2("192.168.3.231");
}
function jk10_js(){
open_video2("192.168.3.245");
}
function jk11_js(){
open_video2("192.168.3.239");
}
function jk12_js(){
open_video2("192.168.3.230");
}
function jk13_js(){
open_video2("192.168.3.223");
}
function jk14_js(){
open_video2("192.168.3.236");
}
function jk15_js(){
open_video2("192.168.3.224");
}
function jk16_js(){
open_video2("192.168.3.225");
}
function jk17_js(){
open_video2("192.168.3.237");
}
function jk18_js(){
open_video2("192.168.3.238");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door2=new swimgObj('door2','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door2);
var door4=new swimgObj('door4','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1604西门_onoff"].htmlobj.push(door4);
var door5=new swimgObj('door5','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1604东门_onoff"].htmlobj.push(door5);
var door6=new swimgObj('door6','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1604中门1_onoff"].htmlobj.push(door6);
var door7=new swimgObj('door7','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1606西门_onoff"].htmlobj.push(door7);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1606东门_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1608西门_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1608东门_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1610西门_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1610东门_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1614_onoff"].htmlobj.push(door13);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1612_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#1/1601西门_onoff"].htmlobj.push(door15);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#1/1601东门_onoff"].htmlobj.push(door16);
var door17=new swimgObj('door17','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#1/1603_onoff"].htmlobj.push(door17);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#1/1605_onoff"].htmlobj.push(door18);
var door19=new swimgObj('door19','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#1/1607_onoff"].htmlobj.push(door19);
var door20=new swimgObj('door20','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#1/1609_onoff"].htmlobj.push(door20);
var door21=new swimgObj('door21','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#1/1611_onoff"].htmlobj.push(door21);
var door22=new swimgObj('door22','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#1/1613_onoff"].htmlobj.push(door22);
var door23=new swimgObj('door23','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#1/1615_onoff"].htmlobj.push(door23);
var door24=new swimgObj('door24','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#1/1617_onoff"].htmlobj.push(door24);
var door25=new swimgObj('door25','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#1/1619_onoff"].htmlobj.push(door25);
var door26=new swimgObj('door26','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1604中门2_onoff"].htmlobj.push(door26);
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item696loopstatus_iopc1_loop_1_30_3_s"].htmlobj.push(zm1);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item712loopstatus_iopc1_loop_1_33_1_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm3);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item714loopstatus_iopc1_loop_1_33_3_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item694loopstatus_iopc1_loop_1_30_1_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item712loopstatus_iopc1_loop_1_33_1_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item713loopstatus_iopc1_loop_1_33_2_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item706loopstatus_iopc1_loop_1_32_1_s"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item701loopstatus_iopc1_loop_1_31_2_s"].htmlobj.push(zm9);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item711loopstatus_iopc1_loop_1_32_6_s"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item700loopstatus_iopc1_loop_1_31_1_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item707loopstatus_iopc1_loop_1_32_2_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item703loopstatus_iopc1_loop_1_31_4_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item705loopstatus_iopc1_loop_1_31_6_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item702loopstatus_iopc1_loop_1_31_3_s"].htmlobj.push(zm16);
var zm17=new swimgObj('zm17','images/light_on.png','images/light_off.png');
db["item704loopstatus_iopc1_loop_1_31_5_s"].htmlobj.push(zm17);
var zm18=new swimgObj('zm18','images/light_on.png','images/light_off.png');
db["item716loopstatus_iopc1_loop_1_33_5_s"].htmlobj.push(zm18);
var zm19=new swimgObj('zm19','images/light_on.png','images/light_off.png');
db["item717loopstatus_iopc1_loop_1_33_6_s"].htmlobj.push(zm19);
var zm20=new swimgObj('zm20','images/light_on.png','images/light_off.png');
db["item700loopstatus_iopc1_loop_1_31_1_s"].htmlobj.push(zm20);
var zm21=new swimgObj('zm21','images/light_on.png','images/light_off.png');
db["item707loopstatus_iopc1_loop_1_32_2_s"].htmlobj.push(zm21);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/主楼16F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼16F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/16F.jpg" />
<img id="door2" style="position:absolute;border:0px;left:536px;top:400px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door2_js();"/>
<img id="door4" style="position:absolute;border:0px;left:633px;top:400px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door4_js();"/>
<img id="door5" style="position:absolute;border:0px;left:830px;top:400px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door5_js();"/>
<img id="door6" style="position:absolute;border:0px;left:692px;top:400px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door6_js();"/>
<img id="door7" style="position:absolute;border:0px;left:934px;top:403px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door7_js();"/>
<img id="door8" style="position:absolute;border:0px;left:982px;top:400px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:1078px;top:400px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:1150px;top:400px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:1223px;top:400px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:1335px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:1375px;top:352px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door14" style="position:absolute;border:0px;left:1383px;top:424px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:448px;top:664px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door16" style="position:absolute;border:0px;left:616px;top:664px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door17" style="position:absolute;border:0px;left:744px;top:712px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door17_js();"/>
<img id="door18" style="position:absolute;border:0px;left:824px;top:688px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="door19" style="position:absolute;border:0px;left:936px;top:688px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door19_js();"/>
<img id="door20" style="position:absolute;border:0px;left:1080px;top:664px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door20_js();"/>
<img id="door21" style="position:absolute;border:0px;left:1168px;top:664px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door21_js();"/>
<img id="door22" style="position:absolute;border:0px;left:1264px;top:712px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door22_js();"/>
<img id="door23" style="position:absolute;border:0px;left:1336px;top:712px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door23_js();"/>
<img id="door24" style="position:absolute;border:0px;left:1408px;top:712px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door24_js();"/>
<img id="door25" style="position:absolute;border:0px;left:1552px;top:712px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door25_js();"/>
<img id="door26" style="position:absolute;border:0px;left:781px;top:408px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door26_js();"/>
<img id="j1" style="position:absolute;border:0px;left:1392px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j1_js();"/>
<img id="d1" style="position:absolute;border:0px;left:1472px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d1_js();"/>
<img id="m1" style="position:absolute;border:0px;left:1320px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m1_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:384px;top:408px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="1-30-3"/>
<img id="zm2" style="position:absolute;border:0px;left:280px;top:480px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="1-33-1"/>
<img id="zm3" style="position:absolute;border:0px;left:264px;top:568px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="1-33-2"/>
<img id="zm4" style="position:absolute;border:0px;left:456px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="1-33-3"/>
<img id="zm5" style="position:absolute;border:0px;left:600px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="1-30-1"/>
<img id="zm6" style="position:absolute;border:0px;left:464px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="1-33-1"/>
<img id="zm7" style="position:absolute;border:0px;left:632px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="1-33-2"/>
<img id="zm8" style="position:absolute;border:0px;left:872px;top:496px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="1-32-1"/>
<img id="zm9" style="position:absolute;border:0px;left:872px;top:544px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="1-31-2"/>
<img id="zm10" style="position:absolute;border:0px;left:872px;top:584px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="1-32-6"/>
<img id="zm11" style="position:absolute;border:0px;left:1120px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="1-31-1"/>
<img id="zm12" style="position:absolute;border:0px;left:1240px;top:464px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="1-32-2"/>
<img id="zm13" style="position:absolute;border:0px;left:1152px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="1-31-4"/>
<img id="zm14" style="position:absolute;border:0px;left:1272px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="1-31-6"/>
<img id="zm15" style="position:absolute;border:0px;left:1696px;top:696px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="1-32-5"/>
<img id="zm16" style="position:absolute;border:0px;left:1504px;top:728px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="1-31-3"/>
<img id="zm17" style="position:absolute;border:0px;left:1552px;top:640px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm17_js();" title="1-31-5"/>
<img id="zm18" style="position:absolute;border:0px;left:1488px;top:424px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm18_js();" title="1-33-5"/>
<img id="zm19" style="position:absolute;border:0px;left:1392px;top:392px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm19_js();" title="1-33-6"/>
<img id="zm20" style="position:absolute;border:0px;left:1552px;top:512px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm20_js();" title="1-31-1"/>
<img id="zm21" style="position:absolute;border:0px;left:1560px;top:568px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm21_js();" title="1-32-2"/>
<img id="jk2" style="position:absolute;border:0px;left:912px;top:560px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:816px;top:608px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:960px;top:608px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:1408px;top:608px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:1480px;top:592px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:1376px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:1464px;top:480px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:1376px;top:400px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:1336px;top:376px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:800px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:968px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:336px;top:472px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:304px;top:568px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="jk15" style="position:absolute;border:0px;left:240px;top:608px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk15_js();"/>
<img id="jk16" style="position:absolute;border:0px;left:208px;top:736px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk16_js();"/>
<img id="jk17" style="position:absolute;border:0px;left:168px;top:672px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk17_js();"/>
<img id="jk18" style="position:absolute;border:0px;left:152px;top:728px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk18_js();"/>

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
