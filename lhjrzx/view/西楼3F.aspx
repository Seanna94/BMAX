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
<title>西楼3F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 31;
db["door/西附楼3f弱电井#5/西附楼3302西门_onoff"]={tagname:"door/西附楼3f弱电井#5/西附楼3302西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼3f弱电井#5/西附楼3302东门_onoff"]={tagname:"door/西附楼3f弱电井#5/西附楼3302东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼3f弱电井#5/西附楼3304_onoff"]={tagname:"door/西附楼3f弱电井#5/西附楼3304_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼3f弱电井#5/西附楼3306_onoff"]={tagname:"door/西附楼3f弱电井#5/西附楼3306_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼3f弱电井#6/西附楼3308_onoff"]={tagname:"door/西附楼3f弱电井#6/西附楼3308_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼3f弱电井#6/西附楼3310_onoff"]={tagname:"door/西附楼3f弱电井#6/西附楼3310_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼3f弱电井#6/西附楼3312西门_onoff"]={tagname:"door/西附楼3f弱电井#6/西附楼3312西门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼3f弱电井#6/西附楼3312东门_onoff"]={tagname:"door/西附楼3f弱电井#6/西附楼3312东门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼3f弱电井#5/西附楼3301西北门_onoff"]={tagname:"door/西附楼3f弱电井#5/西附楼3301西北门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼3f弱电井#5/西附楼3301东北门_onoff"]={tagname:"door/西附楼3f弱电井#5/西附楼3301东北门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼3f弱电井#5/西附楼3301西南门_onoff"]={tagname:"door/西附楼3f弱电井#5/西附楼3301西南门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["door/西附楼3f弱电井#5/西附楼3301东南门_onoff"]={tagname:"door/西附楼3f弱电井#5/西附楼3301东南门_onoff",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1249loopstatus_iopc1_loop_3_35_2_s"]={tagname:"item1249loopstatus_iopc1_loop_3_35_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1256loopstatus_iopc1_loop_3_36_1_s"]={tagname:"item1256loopstatus_iopc1_loop_3_36_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1235loopstatus_iopc1_loop_3_33_4_s"]={tagname:"item1235loopstatus_iopc1_loop_3_33_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1266loopstatus_iopc1_loop_3_37_3_s"]={tagname:"item1266loopstatus_iopc1_loop_3_37_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1255loopstatus_iopc1_loop_3_35_8_s"]={tagname:"item1255loopstatus_iopc1_loop_3_35_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1267loopstatus_iopc1_loop_3_37_4_s"]={tagname:"item1267loopstatus_iopc1_loop_3_37_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1270loopstatus_iopc1_loop_3_37_7_s"]={tagname:"item1270loopstatus_iopc1_loop_3_37_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1259loopstatus_iopc1_loop_3_36_4_s"]={tagname:"item1259loopstatus_iopc1_loop_3_36_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1264loopstatus_iopc1_loop_3_37_1_s"]={tagname:"item1264loopstatus_iopc1_loop_3_37_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1252loopstatus_iopc1_loop_3_35_5_s"]={tagname:"item1252loopstatus_iopc1_loop_3_35_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1250loopstatus_iopc1_loop_3_35_3_s"]={tagname:"item1250loopstatus_iopc1_loop_3_35_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1258loopstatus_iopc1_loop_3_36_3_s"]={tagname:"item1258loopstatus_iopc1_loop_3_36_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1268loopstatus_iopc1_loop_3_37_5_s"]={tagname:"item1268loopstatus_iopc1_loop_3_37_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1253loopstatus_iopc1_loop_3_35_6_s"]={tagname:"item1253loopstatus_iopc1_loop_3_35_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1257loopstatus_iopc1_loop_3_36_2_s"]={tagname:"item1257loopstatus_iopc1_loop_3_36_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1254loopstatus_iopc1_loop_3_35_7_s"]={tagname:"item1254loopstatus_iopc1_loop_3_35_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1263loopstatus_iopc1_loop_3_36_8_s"]={tagname:"item1263loopstatus_iopc1_loop_3_36_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1261loopstatus_iopc1_loop_3_36_6_s"]={tagname:"item1261loopstatus_iopc1_loop_3_36_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1265loopstatus_iopc1_loop_3_37_2_s"]={tagname:"item1265loopstatus_iopc1_loop_3_37_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
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
writetag("Door/西附楼3F弱电井#5/西附楼3302西门","");
}
function door3_js(){
writetag("Door/西附楼3F弱电井#5/西附楼3302东门","");
}
function door4_js(){
writetag("Door/西附楼3F弱电井#5/西附楼3304","");
}
function door5_js(){
writetag("Door/西附楼3F弱电井#5/西附楼3306","");
}
function door6_js(){
writetag("Door/西附楼3F弱电井#6/西附楼3308","");
}
function door7_js(){
writetag("Door/西附楼3F弱电井#6/西附楼3310","");
}
function door8_js(){
writetag("Door/西附楼3F弱电井#6/西附楼3312西门","");
}
function door9_js(){
writetag("Door/西附楼3F弱电井#6/西附楼3312东门","");
}
function door10_js(){
writetag("Door/西附楼3F弱电井#5/西附楼3301西北门","");
}
function door11_js(){
writetag("Door/西附楼3F弱电井#5/西附楼3301东北门","")
}
function door12_js(){
writetag("Door/西附楼3F弱电井#5/西附楼3301西南门","");
}
function door13_js(){
writetag("Door/西附楼3F弱电井#5/西附楼3301东南门","");
}
function jk_js(){
var id = "jk";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="jk";
 }
}
function image_js(){
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
function zm21_js(){
writetag("ITEM555LoopControl_IOPC1_LOOP_3_35_2_C","");
}
function zm22_js(){
writetag("ITEM562LoopControl_IOPC1_LOOP_3_36_1_C","");
}
function zm23_js(){
writetag("ITEM541LoopControl_IOPC1_LOOP_3_33_4_C","");
}
function zm24_js(){
writetag("ITEM572LoopControl_IOPC1_LOOP_3_37_3_C","");
}
function zm25_js(){
writetag("ITEM561LoopControl_IOPC1_LOOP_3_35_8_C","");
}
function zm26_js(){
writetag("ITEM573LoopControl_IOPC1_LOOP_3_37_4_C","");
}
function zm27_js(){
writetag("ITEM576LoopControl_IOPC1_LOOP_3_37_7_C","");
}
function zm28_js(){
writetag("ITEM565LoopControl_IOPC1_LOOP_3_36_4_C","");
}
function zm29_js(){
writetag("ITEM570LoopControl_IOPC1_LOOP_3_37_1_C","");
}
function zm30_js(){
writetag("ITEM558LoopControl_IOPC1_LOOP_3_35_5_C","");
}
function zm31_js(){
writetag("ITEM556LoopControl_IOPC1_LOOP_3_35_3_C","");
}
function zm32_js(){
writetag("ITEM564LoopControl_IOPC1_LOOP_3_36_3_C","");
}
function zm34_js(){
writetag("ITEM564LoopControl_IOPC1_LOOP_3_36_3_C","");
}
function zm35_js(){
writetag("ITEM574LoopControl_IOPC1_LOOP_3_37_5_C","");
}
function zm36_js(){
writetag("ITEM559LoopControl_IOPC1_LOOP_3_35_6_C","");
}
function zm37_js(){
writetag("ITEM563LoopControl_IOPC1_LOOP_3_36_2_C","");
}
function zm38_js(){
writetag("ITEM560LoopControl_IOPC1_LOOP_3_35_7_C","");
}
function zm39_js(){
writetag("ITEM569LoopControl_IOPC1_LOOP_3_36_8_C","");
}
function zm40_js(){
writetag("ITEM567LoopControl_IOPC1_LOOP_3_36_6_C","");
}
function zm41_js(){
writetag("ITEM571LoopControl_IOPC1_LOOP_3_37_2_C","");
}
function jk1_js(){
open_video("192.168.1.92");
}
function jk2_js(){
open_video("192.168.1.93");
}
function jk3_js(){
open_video("192.168.1.91");
}
function jk4_js(){
open_video("192.168.1.87");
}
function jk5_js(){
open_video("192.168.1.89");
}
function jk6_js(){
open_video("192.168.1.88");
}
function jk7_js(){
open_video("192.168.1.90");
}
function jk8_js(){
open_video("192.168.1.85");
}
function jk9_js(){
open_video("192.168.1.86");
}
function jk10_js(){
open_video("192.168.1.84");
}
function jk11_js(){
open_video("192.168.1.102");
}
function zm42_js(){
writetag("ITEM563LoopControl_IOPC1_LOOP_3_36_2_C","");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var door2=new swimgObj('door2','images/door_km.gif','images/door_close.gif');
db["door/西附楼3f弱电井#5/西附楼3302西门_onoff"].htmlobj.push(door2);
var door3=new swimgObj('door3','images/door_km.gif','images/door_close.gif');
db["door/西附楼3f弱电井#5/西附楼3302东门_onoff"].htmlobj.push(door3);
var door4=new swimgObj('door4','images/door_km.gif','images/door_close.gif');
db["door/西附楼3f弱电井#5/西附楼3304_onoff"].htmlobj.push(door4);
var door5=new swimgObj('door5','images/door_km.gif','images/door_close.gif');
db["door/西附楼3f弱电井#5/西附楼3306_onoff"].htmlobj.push(door5);
var door6=new swimgObj('door6','images/door_km.gif','images/door_close.gif');
db["door/西附楼3f弱电井#6/西附楼3308_onoff"].htmlobj.push(door6);
var door7=new swimgObj('door7','images/door_km.gif','images/door_close.gif');
db["door/西附楼3f弱电井#6/西附楼3310_onoff"].htmlobj.push(door7);
var door8=new swimgObj('door8','images/door_km.gif','images/door_close.gif');
db["door/西附楼3f弱电井#6/西附楼3312西门_onoff"].htmlobj.push(door8);
var door9=new swimgObj('door9','images/door_km.gif','images/door_close.gif');
db["door/西附楼3f弱电井#6/西附楼3312东门_onoff"].htmlobj.push(door9);
var door10=new swimgObj('door10','images/door_km.gif','images/door_close.gif');
db["door/西附楼3f弱电井#5/西附楼3301西北门_onoff"].htmlobj.push(door10);
var door11=new swimgObj('door11','images/door_km.gif','images/door_close.gif');
db["door/西附楼3f弱电井#5/西附楼3301东北门_onoff"].htmlobj.push(door11);
var door12=new swimgObj('door12','images/door_km.gif','images/door_close.gif');
db["door/西附楼3f弱电井#5/西附楼3301西南门_onoff"].htmlobj.push(door12);
var door13=new swimgObj('door13','images/door_km.gif','images/door_close.gif');
db["door/西附楼3f弱电井#5/西附楼3301东南门_onoff"].htmlobj.push(door13);
var zm21=new swimgObj('zm21','images/light_on.png','images/light_off.png');
db["item1249loopstatus_iopc1_loop_3_35_2_s"].htmlobj.push(zm21);
var zm22=new swimgObj('zm22','images/light_on.png','images/light_off.png');
db["item1256loopstatus_iopc1_loop_3_36_1_s"].htmlobj.push(zm22);
var zm23=new swimgObj('zm23','images/light_on.png','images/light_off.png');
db["item1235loopstatus_iopc1_loop_3_33_4_s"].htmlobj.push(zm23);
var zm24=new swimgObj('zm24','images/light_on.png','images/light_off.png');
db["item1266loopstatus_iopc1_loop_3_37_3_s"].htmlobj.push(zm24);
var zm25=new swimgObj('zm25','images/light_on.png','images/light_off.png');
db["item1255loopstatus_iopc1_loop_3_35_8_s"].htmlobj.push(zm25);
var zm26=new swimgObj('zm26','images/light_on.png','images/light_off.png');
db["item1267loopstatus_iopc1_loop_3_37_4_s"].htmlobj.push(zm26);
var zm27=new swimgObj('zm27','images/light_on.png','images/light_off.png');
db["item1270loopstatus_iopc1_loop_3_37_7_s"].htmlobj.push(zm27);
var zm28=new swimgObj('zm28','images/light_on.png','images/light_off.png');
db["item1259loopstatus_iopc1_loop_3_36_4_s"].htmlobj.push(zm28);
var zm29=new swimgObj('zm29','images/light_on.png','images/light_off.png');
db["item1264loopstatus_iopc1_loop_3_37_1_s"].htmlobj.push(zm29);
var zm30=new swimgObj('zm30','images/light_on.png','images/light_off.png');
db["item1252loopstatus_iopc1_loop_3_35_5_s"].htmlobj.push(zm30);
var zm31=new swimgObj('zm31','images/light_on.png','images/light_off.png');
db["item1250loopstatus_iopc1_loop_3_35_3_s"].htmlobj.push(zm31);
var zm32=new swimgObj('zm32','images/light_on.png','images/light_off.png');
db["item1258loopstatus_iopc1_loop_3_36_3_s"].htmlobj.push(zm32);
var zm34=new swimgObj('zm34','images/light_on.png','images/light_off.png');
db["item1258loopstatus_iopc1_loop_3_36_3_s"].htmlobj.push(zm34);
var zm35=new swimgObj('zm35','images/light_on.png','images/light_off.png');
db["item1268loopstatus_iopc1_loop_3_37_5_s"].htmlobj.push(zm35);
var zm36=new swimgObj('zm36','images/light_on.png','images/light_off.png');
db["item1253loopstatus_iopc1_loop_3_35_6_s"].htmlobj.push(zm36);
var zm37=new swimgObj('zm37','images/light_on.png','images/light_off.png');
db["item1257loopstatus_iopc1_loop_3_36_2_s"].htmlobj.push(zm37);
var zm38=new swimgObj('zm38','images/light_on.png','images/light_off.png');
db["item1254loopstatus_iopc1_loop_3_35_7_s"].htmlobj.push(zm38);
var zm39=new swimgObj('zm39','images/light_on.png','images/light_off.png');
db["item1263loopstatus_iopc1_loop_3_36_8_s"].htmlobj.push(zm39);
var zm40=new swimgObj('zm40','images/light_on.png','images/light_off.png');
db["item1261loopstatus_iopc1_loop_3_36_6_s"].htmlobj.push(zm40);
var zm41=new swimgObj('zm41','images/light_on.png','images/light_off.png');
db["item1265loopstatus_iopc1_loop_3_37_2_s"].htmlobj.push(zm41);
var zm42=new swimgObj('zm42','images/light_on.png','images/light_off.png');
db["item1257loopstatus_iopc1_loop_3_36_2_s"].htmlobj.push(zm42);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/西楼3F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 西楼3F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/3XF.jpg" />
<img id="door2" style="position:absolute;border:0px;left:1056px;top:376px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door2_js();"/>
<img id="door3" style="position:absolute;border:0px;left:1176px;top:376px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door3_js();"/>
<img id="door4" style="position:absolute;border:0px;left:896px;top:368px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door4_js();"/>
<img id="door5" style="position:absolute;border:0px;left:776px;top:376px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door5_js();"/>
<img id="door6" style="position:absolute;border:0px;left:776px;top:280px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door6_js();"/>
<img id="door7" style="position:absolute;border:0px;left:856px;top:280px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door7_js();"/>
<img id="door8" style="position:absolute;border:0px;left:928px;top:280px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door8_js();"/>
<img id="door9" style="position:absolute;border:0px;left:1168px;top:280px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door9_js();"/>
<img id="door10" style="position:absolute;border:0px;left:768px;top:488px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door10_js();"/>
<img id="door11" style="position:absolute;border:0px;left:1192px;top:464px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door11_js();"/>
<img id="door12" style="position:absolute;border:0px;left:752px;top:840px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door12_js();"/>
<img id="door13" style="position:absolute;border:0px;left:1232px;top:848px;width:40px;height:40px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door13_js();"/>
<img id="jk" style="position:absolute;border:0px;left:1376px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk_js();"/>
<img id="image" style="position:absolute;border:0px;left:1440px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:image_js();"/>
<img id="door" style="position:absolute;border:0px;left:1312px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door_js();"/>
<img id="zm21" style="position:absolute;border:0px;left:621px;top:422px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm21_js();" title="3-35-2"/>
<img id="zm22" style="position:absolute;border:0px;left:680px;top:416px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm22_js();" title="3-36-1"/>
<img id="zm23" style="position:absolute;border:0px;left:656px;top:792px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm23_js();" title="3-35-4"/>
<img id="zm24" style="position:absolute;border:0px;left:1104px;top:792px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm24_js();" title="3-37-3"/>
<img id="zm25" style="position:absolute;border:0px;left:952px;top:792px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm25_js();" title="3-35-8"/>
<img id="zm26" style="position:absolute;border:0px;left:712px;top:744px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm26_js();" title="3-37-4"/>
<img id="zm27" style="position:absolute;border:0px;left:728px;top:632px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm27_js();" title="3-37-7"/>
<img id="zm28" style="position:absolute;border:0px;left:736px;top:536px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm28_js();" title="3-36-4"/>
<img id="zm29" style="position:absolute;border:0px;left:736px;top:440px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm29_js();" title="3-37-1"/>
<img id="zm30" style="position:absolute;border:0px;left:744px;top:344px;width:30px;height:30px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm30_js();" title="3-35-5"/>
<img id="zm31" style="position:absolute;border:0px;left:792px;top:240px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm31_js();" title="3-35-3"/>
<img id="zm32" style="position:absolute;border:0px;left:912px;top:240px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm32_js();" title="3-36-5"/>
<img id="zm34" style="position:absolute;border:0px;left:1112px;top:216px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm34_js();" title="3-36-3"/>
<img id="zm35" style="position:absolute;border:0px;left:1128px;top:232px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm35_js();" title="3-37-5"/>
<img id="zm36" style="position:absolute;border:0px;left:760px;top:304px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm36_js();" title="3-35-6"/>
<img id="zm37" style="position:absolute;border:0px;left:992px;top:240px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm37_js();" title="3-36-2"/>
<img id="zm38" style="position:absolute;border:0px;left:952px;top:424px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm38_js();" title="3-35-7"/>
<img id="zm39" style="position:absolute;border:0px;left:856px;top:424px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm39_js();" title="3-36-8"/>
<img id="zm40" style="position:absolute;border:0px;left:1024px;top:424px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm40_js();" title="3-36-6"/>
<img id="zm41" style="position:absolute;border:0px;left:1088px;top:424px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm41_js();" title="3-37-2"/>
<img id="jk1" style="position:absolute;border:0px;left:552px;top:792px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk1_js();"/>
<img id="jk2" style="position:absolute;border:0px;left:920px;top:792px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:728px;top:664px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:736px;top:384px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:720px;top:424px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:656px;top:424px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:1056px;top:424px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:752px;top:232px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:746px;top:270px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:1112px;top:240px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:1160px;top:216px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="zm42" style="position:absolute;border:0px;left:1080px;top:240px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm42_js();" title="3-36-2"/>

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
