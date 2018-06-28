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
<title>园区</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 0;
function j1_js(){
var id = "jk";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="jk";
 }
}
function jk1_js(){
open_video2("192.168.2.130");
}
function jk2_js(){
open_video2("192.168.2.126");
}
function jk3_js(){
open_video2("192.168.2.118");
}
function jk4_js(){
open_video2("192.168.2.119");
}
function jk5_js(){
open_video2("192.168.2.135");
}
function jk6_js(){
open_video2("192.168.2.134");
}
function jk7_js(){
open_video2("192.168.2.129");
}
function jk8_js(){
open_video2("192.168.2.133");
}
function jk9_js(){
open_video2("192.168.2.151");
}
function jk10_js(){
open_video2("192.168.2.150");
}
function jk11_js(){
open_video2("192.168.2.134");
}
function jk12_js(){
open_video2("192.168.2.120");
}
function jk13_js(){
open_video2("192.168.2.121");
}
function jk14_js(){
open_video2("192.168.2.151");
}
function jk15_js(){
open_video2("192.168.2.123");
}
function jk16_js(){
open_video2("192.168.2.131");
}
function jk17_js(){
open_video2("192.168.2.132");
}
function jk18_js(){
open_video2("192.168.2.140");
}
function jk19_js(){
open_video2("192.168.2.127");
}
function jk20_js(){
open_video2("192.168.2.122");
}
function jk21_js(){
open_video2("192.168.2.140");
}
function jk22_js(){
open_video2("192.168.2.134");
}
function jk23_js(){
open_video2("192.168.2.141");
}
function jk24_js(){
open_video2("192.168.2.145");
}
function jk25_js(){
open_video2("192.168.2.146");
}
function jk26_js(){
open_video2("192.168.2.125");
}
function jk27_js(){
open_video2("192.168.2.147");
}
function jk28_js(){
open_video2("192.168.2.148");
}
function jk29_js(){
open_video2("192.168.2.128");
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
<img src="Images/园区.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 园区</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/md.jpg" />
<img id="j1" style="position:absolute;border:0px;left:1432px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j1_js();"/>
<img id="jk1" style="position:absolute;border:0px;left:1536px;top:864px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk1_js();"/>
<img id="jk2" style="position:absolute;border:0px;left:1616px;top:832px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:888px;top:832px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:424px;top:744px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:512px;top:632px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:448px;top:664px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:8px;top:592px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:8px;top:664px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:208px;top:608px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:120px;top:640px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:152px;top:608px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:952px;top:760px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:1008px;top:768px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:992px;top:728px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="jk15" style="position:absolute;border:0px;left:976px;top:808px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk15_js();"/>
<img id="jk16" style="position:absolute;border:0px;left:1688px;top:552px;width:50px;height:50px;cursor:pointer;" src="images/qiuj.gif" onclick="javascript:jk16_js();"/>
<img id="jk17" style="position:absolute;border:0px;left:1736px;top:560px;width:50px;height:50px;cursor:pointer;" src="images/qiuj.gif" onclick="javascript:jk17_js();"/>
<img id="jk18" style="position:absolute;border:0px;left:1704px;top:600px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk18_js();"/>
<img id="jk19" style="position:absolute;border:0px;left:128px;top:432px;width:50px;height:50px;cursor:pointer;" src="images/qiuj.gif" onclick="javascript:jk19_js();"/>
<img id="jk20" style="position:absolute;border:0px;left:176px;top:408px;width:50px;height:50px;cursor:pointer;" src="images/qiuj.gif" onclick="javascript:jk20_js();"/>
<img id="jk21" style="position:absolute;border:0px;left:184px;top:464px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk21_js();"/>
<img id="jk22" style="position:absolute;border:0px;left:272px;top:344px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk22_js();"/>
<img id="jk23" style="position:absolute;border:0px;left:336px;top:336px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk23_js();"/>
<img id="jk24" style="position:absolute;border:0px;left:656px;top:368px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk24_js();"/>
<img id="jk25" style="position:absolute;border:0px;left:720px;top:376px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk25_js();"/>
<img id="jk26" style="position:absolute;border:0px;left:688px;top:416px;width:50px;height:50px;cursor:pointer;" src="images/qiuj.gif" onclick="javascript:jk26_js();"/>
<img id="jk27" style="position:absolute;border:0px;left:920px;top:408px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk27_js();"/>
<img id="jk28" style="position:absolute;border:0px;left:984px;top:416px;width:50px;height:50px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk28_js();"/>
<img id="jk29" style="position:absolute;border:0px;left:952px;top:456px;width:50px;height:50px;cursor:pointer;" src="images/qiuj.gif" onclick="javascript:jk29_js();"/>

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
