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
<title>主楼2F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 41;
db["door/2f弱电井#1/202_onoff"]={tagname:"door/2f弱电井#1/202_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#1/204_onoff"]={tagname:"door/2f弱电井#1/204_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#1/206_onoff"]={tagname:"door/2f弱电井#1/206_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#1/208_onoff"]={tagname:"door/2f弱电井#1/208_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#1/210西门_onoff"]={tagname:"door/2f弱电井#1/210西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#1/210东门_onoff"]={tagname:"door/2f弱电井#1/210东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#2/212_onoff"]={tagname:"door/2f弱电井#2/212_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#2/214_onoff"]={tagname:"door/2f弱电井#2/214_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#2/216_onoff"]={tagname:"door/2f弱电井#2/216_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#2/218西门_onoff"]={tagname:"door/2f弱电井#2/218西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#2/218东门_onoff"]={tagname:"door/2f弱电井#2/218东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#1/201_onoff"]={tagname:"door/2f弱电井#1/201_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#1/203_onoff"]={tagname:"door/2f弱电井#1/203_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#1/205_onoff"]={tagname:"door/2f弱电井#1/205_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#1/207_onoff"]={tagname:"door/2f弱电井#1/207_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#2/213北门_onoff"]={tagname:"door/2f弱电井#2/213北门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#2/213西门_onoff"]={tagname:"door/2f弱电井#2/213西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#2/213南门_onoff"]={tagname:"door/2f弱电井#2/213南门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#2/209_onoff"]={tagname:"door/2f弱电井#2/209_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/2f弱电井#2/211_onoff"]={tagname:"door/2f弱电井#2/211_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1044loopstatus_iopc1_loop_2_34_1_s"]={tagname:"item1044loopstatus_iopc1_loop_2_34_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1047loopstatus_iopc1_loop_2_34_4_s"]={tagname:"item1047loopstatus_iopc1_loop_2_34_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1049loopstatus_iopc1_loop_2_34_6_s"]={tagname:"item1049loopstatus_iopc1_loop_2_34_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1051loopstatus_iopc1_loop_2_35_2_s"]={tagname:"item1051loopstatus_iopc1_loop_2_35_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1053loopstatus_iopc1_loop_2_35_4_s"]={tagname:"item1053loopstatus_iopc1_loop_2_35_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1287loopstatus_iopc1_loop_4_31_8_s"]={tagname:"item1287loopstatus_iopc1_loop_4_31_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1050loopstatus_iopc1_loop_2_35_1_s"]={tagname:"item1050loopstatus_iopc1_loop_2_35_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1046loopstatus_iopc1_loop_2_34_3_s"]={tagname:"item1046loopstatus_iopc1_loop_2_34_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1064loopstatus_iopc1_loop_2_36_7_s"]={tagname:"item1064loopstatus_iopc1_loop_2_36_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1067loopstatus_iopc1_loop_2_37_2_s"]={tagname:"item1067loopstatus_iopc1_loop_2_37_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1068loopstatus_iopc1_loop_2_37_3_s"]={tagname:"item1068loopstatus_iopc1_loop_2_37_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1052loopstatus_iopc1_loop_2_35_3_s"]={tagname:"item1052loopstatus_iopc1_loop_2_35_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1048loopstatus_iopc1_loop_2_34_5_s"]={tagname:"item1048loopstatus_iopc1_loop_2_34_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1063loopstatus_iopc1_loop_2_36_6_s"]={tagname:"item1063loopstatus_iopc1_loop_2_36_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1065loopstatus_iopc1_loop_2_36_8_s"]={tagname:"item1065loopstatus_iopc1_loop_2_36_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1069loopstatus_iopc1_loop_2_37_4_s"]={tagname:"item1069loopstatus_iopc1_loop_2_37_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1058loopstatus_iopc1_loop_2_36_1_s"]={tagname:"item1058loopstatus_iopc1_loop_2_36_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1073loopstatus_iopc1_loop_2_37_8_s"]={tagname:"item1073loopstatus_iopc1_loop_2_37_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1059loopstatus_iopc1_loop_2_36_2_s"]={tagname:"item1059loopstatus_iopc1_loop_2_36_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1060loopstatus_iopc1_loop_2_36_3_s"]={tagname:"item1060loopstatus_iopc1_loop_2_36_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1071loopstatus_iopc1_loop_2_37_6_s"]={tagname:"item1071loopstatus_iopc1_loop_2_37_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
writetag("Door/2F弱电井#1/202","");
}
function door2_js(){
writetag("Door/2F弱电井#1/204","");
}
function door3_js(){
writetag("Door/2F弱电井#1/206","");
}
function door4_js(){
writetag("Door/2F弱电井#1/208","");
}
function door5_js(){
writetag("Door/2F弱电井#1/210","");
}
function door6_js(){
writetag("Door/2F弱电井#1/210","");
}
function door7_js(){
writetag("Door/2F弱电井#1/212","");
}
function door8_js(){
writetag("Door/2F弱电井#1/214","");
}
function door9_js(){
writetag("Door/2F弱电井#1/216","");
}
function door10_js(){
writetag("Door/2F弱电井#1/218","");
}
function door11_js(){
writetag("Door/2F弱电井#1/218","");
}
function door12_js(){
writetag("Door/2F弱电井#1/201","");
}
function door13_js(){
writetag("Door/2F弱电井#1/203","");
}
function door14_js(){
writetag("Door/2F弱电井#1/205","");
}
function door15_js(){
writetag("Door/2F弱电井#1/207","");
}
function door16_js(){
writetag("Door/2F弱电井#1/212","");
}
function door17_js(){
writetag("Door/2F弱电井#1/212","");
}
function door18_js(){
writetag("Door/2F弱电井#1/213","");
}
function door19_js(){
writetag("Door/2F弱电井#1/209","");
}
function door20_js(){
writetag("Door/2F弱电井#1/211","");
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
writetag("ITEM350LoopControl_IOPC1_LOOP_2_34_1_C","");
}
function zm2_js(){
writetag("ITEM353LoopControl_IOPC1_LOOP_2_34_4_C","");
}
function zm3_js(){
writetag("ITEM355LoopControl_IOPC1_LOOP_2_34_6_C","");
}
function zm5_js(){
writetag("ITEM357LoopControl_IOPC1_LOOP_2_35_2_C","");
}
function zm6_js(){
writetag("ITEM359LoopControl_IOPC1_LOOP_2_35_4_C","");
}
function zm7_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm8_js(){
writetag("ITEM356LoopControl_IOPC1_LOOP_2_35_1_C","");
}
function zm9_js(){
writetag("ITEM352LoopControl_IOPC1_LOOP_2_34_3_C","");
}
function zm10_js(){
writetag("ITEM370LoopControl_IOPC1_LOOP_2_36_7_C","");
}
function zm11_js(){
writetag("ITEM373LoopControl_IOPC1_LOOP_2_37_2_C","");
}
function zm12_js(){
writetag("ITEM374LoopControl_IOPC1_LOOP_2_37_3_C","");
}
function zm13_js(){
writetag("ITEM358LoopControl_IOPC1_LOOP_2_35_3_C","");
}
function zm14_js(){
writetag("ITEM354LoopControl_IOPC1_LOOP_2_34_5_C","");
}
function zm15_js(){
writetag("ITEM369LoopControl_IOPC1_LOOP_2_36_6_C","");
}
function zm16_js(){
writetag("ITEM371LoopControl_IOPC1_LOOP_2_36_8_C","");
}
function zm17_js(){
writetag("ITEM375LoopControl_IOPC1_LOOP_2_37_4_C","");
}
function zm18_js(){
writetag("ITEM364LoopControl_IOPC1_LOOP_2_36_1_C","");
}
function zm19_js(){
writetag("ITEM379LoopControl_IOPC1_LOOP_2_37_8_C","");
}
function zm20_js(){
writetag("ITEM365LoopControl_IOPC1_LOOP_2_36_2_C","");
}
function zm21_js(){
writetag("ITEM366LoopControl_IOPC1_LOOP_2_36_3_C","");
}
function zm22_js(){
writetag("ITEM377LoopControl_IOPC1_LOOP_2_37_6_C","");
}
function jk1_js(){
open_video2("192.168.3.33");
}
function jk2_js(){
open_video2("192.168.3.34");
}
function jk3_js(){
open_video2("192.168.3.35");
}
function jk4_js(){
open_video2("192.168.3.32");
}
function jk5_js(){
open_video2("192.168.3.31");
}
function jk6_js(){
open_video2("192.168.3.30");
}
function jk7_js(){
open_video2("192.168.3.29");
}
function jk8_js(){
open_video2("192.168.3.28");
}
function jk9_js(){
open_video2("192.168.3.39");
}
function jk10_js(){
open_video2("192.168.3.37");
}
function jk11_js(){
open_video2("192.168.3.38");
}
function jk12_js(){
open_video2("192.168.3.39");
}
function jk13_js(){
open_video2("192.168.3.42");
}
function jk14_js(){
open_video2("192.168.3.41");
}
function jk15_js(){
open_video2("192.168.3.40");
}
function zm4_js(){
writetag("ITEM353LoopControl_IOPC1_LOOP_2_34_4_C","");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door1=new swimgObj('door1','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#1/202_onoff"].htmlobj.push(door1);
var door2=new swimgObj('door2','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#1/204_onoff"].htmlobj.push(door2);
var door3=new swimgObj('door3','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#1/206_onoff"].htmlobj.push(door3);
var door4=new swimgObj('door4','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#1/208_onoff"].htmlobj.push(door4);
var door5=new swimgObj('door5','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#1/210西门_onoff"].htmlobj.push(door5);
var door6=new swimgObj('door6','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#1/210东门_onoff"].htmlobj.push(door6);
var door7=new swimgObj('door7','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#2/212_onoff"].htmlobj.push(door7);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#2/214_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#2/216_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#2/218西门_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#2/218东门_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#1/201_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#1/203_onoff"].htmlobj.push(door13);
var door14=new swimgObj('door14','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#1/205_onoff"].htmlobj.push(door14);
var door15=new swimgObj('door15','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#1/207_onoff"].htmlobj.push(door15);
var door16=new swimgObj('door16','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#2/213北门_onoff"].htmlobj.push(door16);
var door17=new swimgObj('door17','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#2/213西门_onoff"].htmlobj.push(door17);
var door18=new swimgObj('door18','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#2/213南门_onoff"].htmlobj.push(door18);
var door19=new swimgObj('door19','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#2/209_onoff"].htmlobj.push(door19);
var door20=new swimgObj('door20','images/door_km.gif','images/door_close.gif');
db["door/2f弱电井#2/211_onoff"].htmlobj.push(door20);
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item1044loopstatus_iopc1_loop_2_34_1_s"].htmlobj.push(zm1);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item1047loopstatus_iopc1_loop_2_34_4_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item1049loopstatus_iopc1_loop_2_34_6_s"].htmlobj.push(zm3);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item1051loopstatus_iopc1_loop_2_35_2_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item1053loopstatus_iopc1_loop_2_35_4_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item1050loopstatus_iopc1_loop_2_35_1_s"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item1046loopstatus_iopc1_loop_2_34_3_s"].htmlobj.push(zm9);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item1064loopstatus_iopc1_loop_2_36_7_s"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item1067loopstatus_iopc1_loop_2_37_2_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item1068loopstatus_iopc1_loop_2_37_3_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item1052loopstatus_iopc1_loop_2_35_3_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item1048loopstatus_iopc1_loop_2_34_5_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item1063loopstatus_iopc1_loop_2_36_6_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item1065loopstatus_iopc1_loop_2_36_8_s"].htmlobj.push(zm16);
var zm17=new swimgObj('zm17','images/light_on.png','images/light_off.png');
db["item1069loopstatus_iopc1_loop_2_37_4_s"].htmlobj.push(zm17);
var zm18=new swimgObj('zm18','images/light_on.png','images/light_off.png');
db["item1058loopstatus_iopc1_loop_2_36_1_s"].htmlobj.push(zm18);
var zm19=new swimgObj('zm19','images/light_on.png','images/light_off.png');
db["item1073loopstatus_iopc1_loop_2_37_8_s"].htmlobj.push(zm19);
var zm20=new swimgObj('zm20','images/light_on.png','images/light_off.png');
db["item1059loopstatus_iopc1_loop_2_36_2_s"].htmlobj.push(zm20);
var zm21=new swimgObj('zm21','images/light_on.png','images/light_off.png');
db["item1060loopstatus_iopc1_loop_2_36_3_s"].htmlobj.push(zm21);
var zm22=new swimgObj('zm22','images/light_on.png','images/light_off.png');
db["item1071loopstatus_iopc1_loop_2_37_6_s"].htmlobj.push(zm22);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item1047loopstatus_iopc1_loop_2_34_4_s"].htmlobj.push(zm4);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/主楼2F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼2F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/主楼2F.jpg" />
<img id="door1" style="position:absolute;border:0px;left:550px;top:357px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door1_js();"/>
<img id="door2" style="position:absolute;border:0px;left:630px;top:357px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door2_js();"/>
<img id="door3" style="position:absolute;border:0px;left:710px;top:357px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door3_js();"/>
<img id="door4" style="position:absolute;border:0px;left:798px;top:357px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door4_js();"/>
<img id="door5" style="position:absolute;border:0px;left:846px;top:357px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door5_js();"/>
<img id="door6" style="position:absolute;border:0px;left:942px;top:357px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door6_js();"/>
<img id="door7" style="position:absolute;border:0px;left:990px;top:357px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door7_js();"/>
<img id="door8" style="position:absolute;border:0px;left:1070px;top:357px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:1158px;top:357px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:1222px;top:357px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:1287px;top:357px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:336px;top:568px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:416px;top:568px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="door14" style="position:absolute;border:0px;left:512px;top:568px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door14_js();"/>
<img id="door15" style="position:absolute;border:0px;left:608px;top:568px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door15_js();"/>
<img id="door16" style="position:absolute;border:0px;left:1608px;top:576px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door16_js();"/>
<img id="door17" style="position:absolute;border:0px;left:1328px;top:568px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door17_js();"/>
<img id="door18" style="position:absolute;border:0px;left:1560px;top:640px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door18_js();"/>
<img id="door19" style="position:absolute;border:0px;left:1280px;top:640px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door19_js();"/>
<img id="door20" style="position:absolute;border:0px;left:1456px;top:640px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door20_js();"/>
<img id="j1" style="position:absolute;border:0px;left:1432px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j1_js();"/>
<img id="d1" style="position:absolute;border:0px;left:1512px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d1_js();"/>
<img id="m1" style="position:absolute;border:0px;left:1360px;top:26px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m1_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:1394px;top:335px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="2-34-1"/>
<img id="zm2" style="position:absolute;border:0px;left:440px;top:320px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="2-34-4"/>
<img id="zm3" style="position:absolute;border:0px;left:456px;top:352px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="2-34-6"/>
<img id="zm5" style="position:absolute;border:0px;left:280px;top:416px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="2-35-2"/>
<img id="zm6" style="position:absolute;border:0px;left:432px;top:416px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="2-35-4"/>
<img id="zm7" style="position:absolute;border:0px;left:608px;top:410px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="2-34-2"/>
<img id="zm8" style="position:absolute;border:0px;left:1056px;top:408px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="2-35-1"/>
<img id="zm9" style="position:absolute;border:0px;left:1216px;top:408px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="2-34-3"/>
<img id="zm10" style="position:absolute;border:0px;left:1232px;top:456px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="2-36-7"/>
<img id="zm11" style="position:absolute;border:0px;left:216px;top:600px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="2-37-2"/>
<img id="zm12" style="position:absolute;border:0px;left:216px;top:640px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="2-37-3"/>
<img id="zm13" style="position:absolute;border:0px;left:264px;top:480px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="2-35-3"/>
<img id="zm14" style="position:absolute;border:0px;left:304px;top:480px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="2-34-5"/>
<img id="zm15" style="position:absolute;border:0px;left:512px;top:520px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="2-36-6"/>
<img id="zm16" style="position:absolute;border:0px;left:384px;top:520px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="2-36-8"/>
<img id="zm17" style="position:absolute;border:0px;left:600px;top:528px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm17_js();" title="2-37-4"/>
<img id="zm18" style="position:absolute;border:0px;left:880px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm18_js();" title="2-36-1"/>
<img id="zm19" style="position:absolute;border:0px;left:928px;top:474px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm19_js();" title="2-37-8"/>
<img id="zm20" style="position:absolute;border:0px;left:1248px;top:576px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm20_js();" title="2-36-2"/>
<img id="zm21" style="position:absolute;border:0px;left:1408px;top:600px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm21_js();" title="2-36-3"/>
<img id="zm22" style="position:absolute;border:0px;left:1504px;top:560px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm22_js();" title="2-37-6"/>
<img id="jk1" style="position:absolute;border:0px;left:840px;top:536px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk1_js();"/>
<img id="jk2" style="position:absolute;border:0px;left:944px;top:536px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:896px;top:504px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:192px;top:632px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:232px;top:544px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:232px;top:504px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:256px;top:432px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:312px;top:400px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:864px;top:408px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:920px;top:408px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:1384px;top:360px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:1616px;top:392px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:1552px;top:552px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:1248px;top:600px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="jk15" style="position:absolute;border:0px;left:1240px;top:528px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk15_js();"/>
<img id="zm4" style="position:absolute;border:0px;left:392px;top:368px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="2-34-4"/>

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
