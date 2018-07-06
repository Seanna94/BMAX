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
<meta name="viewport" content="width=1682,height=996,initial-scale=0.5,minimum-scale=0.5,maximum-scale=5,user-scalable=yes" />
<title>系统主页</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1682;
grfheight = 996;
var tagcount = 0;
$(function(){

				$("#lk").mouseout(function(){
					
					$("#lk").width(493).height(281);
					$("#leftContainer").width(300).height(281);
				});

  });
function lklabel_js(){
$("#lk").width(800).height(600);
}
function xxxxx_js(){
alert(2222);
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

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#0A2B4A">
<div id="fscada">
<img src="Images/系统主页.png" border="0" />
<img id="imageex1" style="position:absolute;border:0px;left:32px;top:24px;width:70px;height:70px;" src="images/楼宇自控.png" />
<div id="lklabel" style="position:absolute;line-height:-2147483648px;left:105px;width:-2147483648px;height:-2147483648px;top:42px;font-family:'幼圆','Serif';font-style:normal;font-size:30px;font-weight:normal;color:rgb(255,255,255);cursor:pointer;" onclick="javascript:lklabel_js();">楼宇自控系统</div>
<img id="imageex2" style="position:absolute;border:0px;left:576px;top:24px;width:70px;height:70px;" src="images/变配电.png" />
<img id="imageex3" style="position:absolute;border:0px;left:1128px;top:24px;width:70px;height:70px;" src="images/视频监控.png" />
<img id="imageex4" style="position:absolute;border:0px;left:32px;top:448px;width:70px;height:70px;" src="images/消防系统.png" />
<img id="imageex5" style="position:absolute;border:0px;left:576px;top:448px;width:70px;height:70px;" src="images/电梯管理.png" />
<img id="imageex6" style="position:absolute;border:0px;left:1128px;top:448px;width:70px;height:70px;" src="images/水电表.png" />
<img id="imageex7" style="position:absolute;border:0px;left:32px;top:864px;width:100px;height:100px;" src="images/停车.png" />
<iframe src="../view/test.aspx" id="lk" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="position:absolute;left:32px;width:500px;height:280px;top:104px;"></iframe>
<button id="xxxxx" style="position:absolute;cursor:pointer;left:664px;width:96px;height:56px;top:208px;font-family:'宋体','Serif';font-style:normal;font-size:12px;font-weight:normal;color:rgb(0,0,0);" onclick="javascript:xxxxx_js();">Text</button>

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
