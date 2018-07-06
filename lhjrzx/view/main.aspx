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
<title>Main</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1000;
grfheight = 600;
var tagcount = 2;
db["sim1"]={tagname:"sim1",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["second"]={tagname:"second",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var tagdatacontrol1=new analogObj('tagdatacontrol1',0,'');
db["sim1"].htmlobj.push(tagdatacontrol1);
var tagdatacontrol2=new analogObj('tagdatacontrol2',0,'');
db["second"].htmlobj.push(tagdatacontrol2);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF">
<div id="fscada">
<img src="Images/Main.png" border="0" />
<div id="tagdatacontrol1" style="position:absolute;line-height:32px;left:297px;width:128px;height:32px;top:98px;font-family:'Arial','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);" >0</div>
<div id="tagdatacontrol2" style="position:absolute;line-height:32px;left:296px;width:128px;height:32px;top:150px;font-family:'Arial','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);" >0</div>

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
