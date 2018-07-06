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
<meta name="viewport" content="width=1000,height=600,initial-scale=0.5,minimum-scale=0.5,maximum-scale=5,user-scalable=yes" />
<title>first11</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1000;
grfheight = 600;
var tagcount = 1;
db["sim.sim3"]={tagname:"sim.sim3",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var onofftextcontrol3=new digitalObj('onofftextcontrol3','ON','OFF',{"background-color":"transparent",color:"rgb(255,0,0)"},{"background-color":"transparent",color:"rgb(0,0,0)"});
db["sim.sim3"].htmlobj.push(onofftextcontrol3);
var switchimage2=new swimgObj('switchimage2','images/2.gif','images/1.gif');
db["sim.sim3"].htmlobj.push(switchimage2);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF">
<div id="fscada">
<img src="Images/first11.png" border="0" />
<img id="imageex4" style="position:absolute;border:0px;left:688px;top:96px;width:50px;height:50px;" src="images/2.gif" />
<div id="onofftextcontrol3" style="position:absolute;line-height:-2147483648px;left:697px;width:-2147483648px;height:-2147483648px;top:178px;font-family:'Arial','Serif';font-style:normal;font-size:15px;font-weight:normal;background-color:rgb(255,255,255);color:rgb(0,0,0);" >Text</div>
<img id="switchimage2" style="position:absolute;border:0px;left:560px;top:112px;width:50px;height:50px;" src="images/2.gif" />

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
