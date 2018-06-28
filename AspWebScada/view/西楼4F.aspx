﻿<%@ Page Language="C#"%>
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
<title>西楼4F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 0;
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
function jk2_js(){
open_video("192.168.1.106");
}
function jk3_js(){
open_video("192.168.1.110");
}
function jk4_js(){
open_video("192.168.1.103");
}
function jk5_js(){
open_video("192.168.1.111");
}
function jk6_js(){
open_video("192.168.1.104");
}
function jk7_js(){
open_video("192.168.1.105");
}
function jk_js(){
var id = "jk";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="jk";
 }
 

}
function imag_js(){
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
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/西楼4F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 西楼4F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/4XF.jpg" />
<img id="jk2" style="position:absolute;border:0px;left:608px;top:392px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:656px;top:368px;width:20px;height:20px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:1096px;top:192px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:696px;top:368px;width:20px;height:20px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:656px;top:392px;width:20px;height:20px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:696px;top:392px;width:20px;height:20px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk" style="position:absolute;border:0px;left:1408px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk_js();"/>
<img id="imag" style="position:absolute;border:0px;left:1472px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:imag_js();"/>
<img id="door" style="position:absolute;border:0px;left:1344px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:door_js();"/>

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
