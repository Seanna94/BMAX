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
<meta name="viewport" content="width=1470,height=996,initial-scale=0.5,minimum-scale=0.5,maximum-scale=5,user-scalable=yes" />
<title>gongqifang_1</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1470;
grfheight = 996;
var tagcount = 1;
db["工勤楼117f1楼50"]={tagname:"工勤楼117f1楼50",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
function yca_js(){
var id = "mj";
for(var i =1;i<=999;i++){
	id=id+i;
	$("#"+id).toggle();
	id="mj";
	}
	
}
function ycb_js(){
var id = "spjk";
for(var i =1;i<=999;i++){
	id=id+i;
	$("#"+id).toggle();
	id="spjk";
	}
}
function ycc_js(){
var id = "znzm";
for(var i =1;i<=999;i++){
	id=id+i;
	$("#"+id).toggle();
	id="znzm";
	}
}
function znzm1_js(){
writetag("工勤楼117F1楼50","");
}
function spjk1_js(){
open_video("53.24.2.74");
}
function spjk2_js(){
open_video("53.24.2.77");
}
function spjk3_js(){
open_video("53.24.2.78");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var znzm1=new swimgObj('znzm1','images/on2.png','images/light_c4.png');
db["工勤楼117f1楼50"].htmlobj.push(znzm1);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#0A2B4A">
<div id="fscada">
<img src="Images/gongqifang_1.png" border="0" />
<img id="gqf_1" style="position:absolute;border:0px;left:0px;top:0px;width:1470px;height:996px;" src="images/gqf_1.jpg" />
<img id="sbj" style="position:absolute;border:0px;left:0px;top:0px;" src="gongqifang_1/1.png" />
<div id="xianshi" style="position:absolute;line-height:40px;left:21px;width:368px;height:40px;top:14px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 工勤房1层</div>
<img id="yca" style="position:absolute;border:0px;left:1258px;top:17px;width:30px;height:30px;cursor:pointer;" src="images/door_open.gif" onclick="javascript:yca_js();"/>
<img id="ycb" style="position:absolute;border:0px;left:1311px;top:17px;width:30px;height:30px;cursor:pointer;" src="images/qiuj.gif" onclick="javascript:ycb_js();"/>
<img id="ycc" style="position:absolute;border:0px;left:1364px;top:17px;width:42px;height:32px;cursor:pointer;" src="images/light_c4.png" onclick="javascript:ycc_js();"/>
<img id="znzm1" style="position:absolute;border:0px;left:872px;top:264px;width:42px;height:32px;cursor:pointer;" src="images/on2.png" onclick="javascript:znzm1_js();"/>
<img id="spjk1" style="position:absolute;border:0px;left:864px;top:320px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:spjk1_js();"/>
<img id="spjk2" style="position:absolute;border:0px;left:768px;top:384px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:spjk2_js();"/>
<img id="spjk3" style="position:absolute;border:0px;left:933px;top:816px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:spjk3_js();"/>

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
