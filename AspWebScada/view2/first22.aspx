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
<meta name="viewport" content="width=500,height=500,initial-scale=0.5,minimum-scale=0.5,maximum-scale=5,user-scalable=yes" />
<title>first22</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>
<script src="jquery.min.js"></script>
<script src="jquery.mousewheel.min.js"></script>


<script type="text/javascript">
grfwidth = 500;
grfheight = 500;
var tagcount = 0;
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

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#000080">
<div id="fscada">
<img src="Images/first22.png" border="0" />
<img id="image1" style="position:absolute;border:0px;left:184px;top:136px;" src="first22/1.png" />

</div>

<script type="text/javascript">    

    if (divcenter){
        var mydiv = document.getElementById("fscada");
        mydiv_resize();
        window.onresize = mydiv_resize;
    }


    var zoom = 100,exp=10;
        		$(function(){
        			$('body').css('zoom',zoom+'%');
        		});

        		$('body').mousewheel(function(event, delta, deltaX, deltaY) {
        		    if (window.console && console.log) {
        		    	zoom = delta == 1 ? zoom+=exp : zoom-=exp;
        		    	if(zoom <= 100) zoom = 100;
        		    	$(this).css('zoom',zoom+'%');
        		    }
        		});

        		$('body').dblclick(function(event) {
        			zoom = 100;
        			$(this).css('zoom','100%');
        		});
</script>

</body>
</html>
