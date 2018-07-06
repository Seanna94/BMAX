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
<title>东楼3F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 25;
db["door/16f弱电井#2/1602_onoff"]={tagname:"door/16f弱电井#2/1602_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼3f弱电井（2）/东附楼2301南门_onoff"]={tagname:"door/东附楼3f弱电井（2）/东附楼2301南门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼3f弱电井（2）/东附楼2302北门_onoff"]={tagname:"door/东附楼3f弱电井（2）/东附楼2302北门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼3f弱电井（1）/东附楼2303东门_onoff"]={tagname:"door/东附楼3f弱电井（1）/东附楼2303东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼3f弱电井（1）/东附楼2305西门_onoff"]={tagname:"door/东附楼3f弱电井（1）/东附楼2305西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼3f弱电井（1）/东附楼2316北门_onoff"]={tagname:"door/东附楼3f弱电井（1）/东附楼2316北门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼3f弱电井（1）/东附楼2316南门_onoff"]={tagname:"door/东附楼3f弱电井（1）/东附楼2316南门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼3f弱电井（1）/东附楼2314南门_onoff"]={tagname:"door/东附楼3f弱电井（1）/东附楼2314南门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼3f弱电井（1）/东附楼2312南门_onoff"]={tagname:"door/东附楼3f弱电井（1）/东附楼2312南门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼3f弱电井（2）/东附楼2310南门_onoff"]={tagname:"door/东附楼3f弱电井（2）/东附楼2310南门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼3f弱电井（1）/东附楼2306西门_onoff"]={tagname:"door/东附楼3f弱电井（1）/东附楼2306西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼3f弱电井（1）/东附楼2306东门_onoff"]={tagname:"door/东附楼3f弱电井（1）/东附楼2306东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼3f弱电井（1）/东附楼2308西门_onoff"]={tagname:"door/东附楼3f弱电井（1）/东附楼2308西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼3f弱电井（1）/东附楼2308东门_onoff"]={tagname:"door/东附楼3f弱电井（1）/东附楼2308东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼3f弱电井（1）/东附楼2307西门_onoff"]={tagname:"door/东附楼3f弱电井（1）/东附楼2307西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/东附楼3f弱电井（1）/东附楼2304西门_onoff"]={tagname:"door/东附楼3f弱电井（1）/东附楼2304西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1355loopstatus_iopc1_loop_4_40_4_s"]={tagname:"item1355loopstatus_iopc1_loop_4_40_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1361loopstatus_iopc1_loop_4_41_2_s"]={tagname:"item1361loopstatus_iopc1_loop_4_41_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1362loopstatus_iopc1_loop_4_41_3_s"]={tagname:"item1362loopstatus_iopc1_loop_4_41_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1357loopstatus_iopc1_loop_4_40_6_s"]={tagname:"item1357loopstatus_iopc1_loop_4_40_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1273loopstatus_iopc1_loop_4_30_2_s"]={tagname:"item1273loopstatus_iopc1_loop_4_30_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1353loopstatus_iopc1_loop_4_40_2_s"]={tagname:"item1353loopstatus_iopc1_loop_4_40_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1352loopstatus_iopc1_loop_4_40_1_s"]={tagname:"item1352loopstatus_iopc1_loop_4_40_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1354loopstatus_iopc1_loop_4_40_3_s"]={tagname:"item1354loopstatus_iopc1_loop_4_40_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1356loopstatus_iopc1_loop_4_40_5_s"]={tagname:"item1356loopstatus_iopc1_loop_4_40_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
function door3_js(){
writetag("Door/东附楼3F弱电井(2)/东附楼2301南门","");
}
function door4_js(){
writetag("Door/东附楼3F弱电井(2)/东附楼2302北门","");
}
function door5_js(){
writetag("Door/16F弱电井#2/1602","");
}
function door6_js(){
writetag("Door/16F弱电井#2/1602","");
}
function door7_js(){
writetag("Door/东附楼3F弱电井(1)/东附楼2303东门","");
}
function door8_js(){
writetag("Door/东附楼3F弱电井(1)/东附楼2305西门","");
}
function door9_js(){
writetag("Door/16F弱电井#2/1602","");
}
function door10_js(){
writetag("Door/东附楼3F弱电井(1)/东附楼2316北门","");
}
function door11_js(){
writetag("Door/东附楼3F弱电井(1)/东附楼2316南门","");
}
function door12_js(){
writetag("Door/16F弱电井#2/1602","");
}
function door13_js(){
writetag("Door/东附楼3F弱电井(1)/东附楼2314南门","");
}
function door14_js(){
writetag("Door/16F弱电井#2/1602","");
}
function door15_js(){
writetag("Door/16F弱电井#2/1602","");
}
function door16_js(){
writetag("Door/东附楼3F弱电井(1)/东附楼2312南门","");
}
function door17_js(){
writetag("Door/东附楼3F弱电井(2)/东附楼2310南门","");
}
function door18_js(){
writetag("user.Door/东附楼3F弱电井(1)/东附楼2306西门_OnOff","");
}
function door19_js(){
writetag("user.Door/东附楼3F弱电井(1)/东附楼2306东门_OnOff","");
}
function door20_js(){
writetag("user.Door/东附楼3F弱电井(1)/东附楼2308西门_OnOff","");
}
function door21_js(){
writetag("user.Door/东附楼3F弱电井(1)/东附楼2308东门_OnOff","");
}
function door22_js(){
writetag("Door/东附楼3F弱电井(1)/东附楼2307西门","");
}
function door23_js(){
writetag("Door/16F弱电井#2/1602","");
}
function door24_js(){
writetag("Door/16F弱电井#2/1602","");
}
function door25_js(){
writetag("Door/东附楼3F弱电井(1)/东附楼2304西门","");
}
function door26_js(){
writetag("Door/16F弱电井#2/1602","");
}
function jk_js(){
var id = "jk";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="jk";
 }
}
function imagee_js(){
var id = "zm";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="zm";
 }
}
function door_js(){
var id = "door";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="door";
 }
}
function zm22_js(){
writetag("ITEM661LoopControl_IOPC1_LOOP_4_40_4_C","");
}
function zm23_js(){
writetag("ITEM667LoopControl_IOPC1_LOOP_4_41_2_C","");
}
function zm24_js(){
writetag("ITEM668LoopControl_IOPC1_LOOP_4_41_3_C","");
}
function zm25_js(){
writetag("ITEM663LoopControl_IOPC1_LOOP_4_40_6_C","");
}
function zm26_js(){
writetag("ITEM1359LoopStatus_IOPC1_LOOP_4_40_8_S","");
}
function zm27_js(){
writetag("ITEM659LoopControl_IOPC1_LOOP_4_40_2_C","");
}
function zm28_js(){
writetag("ITEM658LoopControl_IOPC1_LOOP_4_40_1_C","");
}
function zm29_js(){
writetag("ITEM660LoopControl_IOPC1_LOOP_4_40_3_C","");
}
function zm30_js(){
writetag("ITEM662LoopControl_IOPC1_LOOP_4_40_5_C","");
}
function jk1_js(){
open_video("192.168.1.99");
}
function jk2_js(){
open_video("192.168.1.101");
}
function jk3_js(){
open_video("192.168.1.100");
}
function jk4_js(){
open_video("192.168.1.98");
}
function jk5_js(){
open_video("192.168.1.97");
}
function jk6_js(){
open_video("192.168.1.94");
}
function jk7_js(){
open_video("192.168.1.96");
}
function jk8_js(){
open_video("192.168.1.95");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door2=new swimgObj('door2','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door2);
var door3=new swimgObj('door3','images/door_km.gif','images/door_close.gif');
db["door/东附楼3f弱电井（2）/东附楼2301南门_onoff"].htmlobj.push(door3);
var door4=new swimgObj('door4','images/door_km.gif','images/door_close.gif');
db["door/东附楼3f弱电井（2）/东附楼2302北门_onoff"].htmlobj.push(door4);
var door5=new swimgObj('door5','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door5);
var door6=new swimgObj('door6','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door6);
var door7=new swimgObj('door7','images/door_km.gif','images/door_close.gif');
db["door/东附楼3f弱电井（1）/东附楼2303东门_onoff"].htmlobj.push(door7);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/东附楼3f弱电井（1）/东附楼2305西门_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/东附楼3f弱电井（1）/东附楼2316北门_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/东附楼3f弱电井（1）/东附楼2316南门_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/东附楼3f弱电井（1）/东附楼2314南门_onoff"].htmlobj.push(door13);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door15);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/东附楼3f弱电井（1）/东附楼2312南门_onoff"].htmlobj.push(door16);
var door17=new swimgObj('door17','images/door_km.gif','images/door_close.gif');
db["door/东附楼3f弱电井（2）/东附楼2310南门_onoff"].htmlobj.push(door17);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/东附楼3f弱电井（1）/东附楼2306西门_onoff"].htmlobj.push(door18);
var door19=new swimgObj('door19','images/door_km.gif','images/door_close.gif');
db["door/东附楼3f弱电井（1）/东附楼2306东门_onoff"].htmlobj.push(door19);
var door20=new swimgObj('door20','images/door_km.gif','images/door_close.gif');
db["door/东附楼3f弱电井（1）/东附楼2308西门_onoff"].htmlobj.push(door20);
var door21=new swimgObj('door21','images/door_km.gif','images/door_close.gif');
db["door/东附楼3f弱电井（1）/东附楼2308东门_onoff"].htmlobj.push(door21);
var door22=new swimgObj('door22','images/door_km.gif','images/door_close.gif');
db["door/东附楼3f弱电井（1）/东附楼2307西门_onoff"].htmlobj.push(door22);
var door23=new swimgObj('door23','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door23);
var door24=new swimgObj('door24','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door24);
var door25=new swimgObj('door25','images/door_km.gif','images/door_close.gif');
db["door/东附楼3f弱电井（1）/东附楼2304西门_onoff"].htmlobj.push(door25);
var door26=new swimgObj('door26','images/door_km.gif','images/door_close.gif');
db["door/16f弱电井#2/1602_onoff"].htmlobj.push(door26);
var zm22=new swimgObj('zm22','images/light_on.png','images/light_off.png');
db["item1355loopstatus_iopc1_loop_4_40_4_s"].htmlobj.push(zm22);
var zm23=new swimgObj('zm23','images/light_on.png','images/light_off.png');
db["item1361loopstatus_iopc1_loop_4_41_2_s"].htmlobj.push(zm23);
var zm24=new swimgObj('zm24','images/light_on.png','images/light_off.png');
db["item1362loopstatus_iopc1_loop_4_41_3_s"].htmlobj.push(zm24);
var zm25=new swimgObj('zm25','images/light_on.png','images/light_off.png');
db["item1357loopstatus_iopc1_loop_4_40_6_s"].htmlobj.push(zm25);
var zm26=new swimgObj('zm26','images/light_on.png','images/light_off.png');
db["item1273loopstatus_iopc1_loop_4_30_2_s"].htmlobj.push(zm26);
var zm27=new swimgObj('zm27','images/light_on.png','images/light_off.png');
db["item1353loopstatus_iopc1_loop_4_40_2_s"].htmlobj.push(zm27);
var zm28=new swimgObj('zm28','images/light_on.png','images/light_off.png');
db["item1352loopstatus_iopc1_loop_4_40_1_s"].htmlobj.push(zm28);
var zm29=new swimgObj('zm29','images/light_on.png','images/light_off.png');
db["item1354loopstatus_iopc1_loop_4_40_3_s"].htmlobj.push(zm29);
var zm30=new swimgObj('zm30','images/light_on.png','images/light_off.png');
db["item1356loopstatus_iopc1_loop_4_40_5_s"].htmlobj.push(zm30);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/东楼3F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 东楼3F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/3F.jpg" />
<img id="door2" style="position:absolute;border:0px;left:784px;top:456px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door2_js();"/>
<img id="door3" style="position:absolute;border:0px;left:700px;top:427px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door3_js();"/>
<img id="door4" style="position:absolute;border:0px;left:776px;top:592px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door4_js();"/>
<img id="door5" style="position:absolute;border:0px;left:960px;top:592px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door5_js();"/>
<img id="door6" style="position:absolute;border:0px;left:776px;top:520px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door6_js();"/>
<img id="door7" style="position:absolute;border:0px;left:1032px;top:672px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door7_js();"/>
<img id="door8" style="position:absolute;border:0px;left:1024px;top:480px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:864px;top:520px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:1152px;top:488px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:1158px;top:542px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:1160px;top:590px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:1160px;top:643px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door14" style="position:absolute;border:0px;left:1162px;top:689px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:1176px;top:800px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door16" style="position:absolute;border:0px;left:1167px;top:736px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door17" style="position:absolute;border:0px;left:1184px;top:872px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door17_js();"/>
<img id="door18" style="position:absolute;border:0px;left:656px;top:1048px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="door19" style="position:absolute;border:0px;left:792px;top:1048px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door19_js();"/>
<img id="door20" style="position:absolute;border:0px;left:848px;top:1048px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door20_js();"/>
<img id="door21" style="position:absolute;border:0px;left:968px;top:1048px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door21_js();"/>
<img id="door22" style="position:absolute;border:0px;left:864px;top:640px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door22_js();"/>
<img id="door23" style="position:absolute;border:0px;left:963px;top:519px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door23_js();"/>
<img id="door24" style="position:absolute;border:0px;left:704px;top:503px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door24_js();"/>
<img id="door25" style="position:absolute;border:0px;left:1008px;top:552px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door25_js();"/>
<img id="door26" style="position:absolute;border:0px;left:904px;top:520px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door26_js();"/>
<img id="jk" style="position:absolute;border:0px;left:1432px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk_js();"/>
<img id="imagee" style="position:absolute;border:0px;left:1504px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:imagee_js();"/>
<img id="door" style="position:absolute;border:0px;left:1368px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door_js();"/>
<img id="zm22" style="position:absolute;border:0px;left:824px;top:400px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm22_js();" title="4-40-4"/>
<img id="zm23" style="position:absolute;border:0px;left:744px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm23_js();" title="4-41-2"/>
<img id="zm24" style="position:absolute;border:0px;left:840px;top:560px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm24_js();" title="4-41-3"/>
<img id="zm25" style="position:absolute;border:0px;left:728px;top:720px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm25_js();" title="4-40-6"/>
<img id="zm26" style="position:absolute;border:0px;left:664px;top:792px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm26_js();" title="4-40-8"/>
<img id="zm27" style="position:absolute;border:0px;left:1020px;top:728px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm27_js();" title="4-40-2"/>
<img id="zm28" style="position:absolute;border:0px;left:1120px;top:816px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm28_js();" title="4-40-1"/>
<img id="zm29" style="position:absolute;border:0px;left:1160px;top:848px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm29_js();" title="4-40-3"/>
<img id="zm30" style="position:absolute;border:0px;left:1128px;top:888px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm30_js();" title="4-40-5"/>
<img id="jk1" style="position:absolute;border:0px;left:592px;top:792px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk1_js();"/>
<img id="jk2" style="position:absolute;border:0px;left:1120px;top:856px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:1144px;top:800px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:728px;top:656px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:1016px;top:592px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:744px;top:440px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:1008px;top:440px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:968px;top:408px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>

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
