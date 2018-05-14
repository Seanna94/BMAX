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
<title>东楼状态</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1470;
grfheight = 996;
var tagcount = 2;
db["second"]={tagname:"second",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["blink"]={tagname:"blink",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var tagdatacontrol2=new analogObj('tagdatacontrol2',2,'');
db["second"].htmlobj.push(tagdatacontrol2);
var switchimage3=new swimgObj('switchimage3','images/上行.png','images/下行.png');
db["blink"].htmlobj.push(switchimage3);
var tagdatacontrol5=new analogObj('tagdatacontrol5',2,'');
db["second"].htmlobj.push(tagdatacontrol5);
var switchimage6=new swimgObj('switchimage6','images/上行.png','images/下行.png');
db["blink"].htmlobj.push(switchimage6);
var tagdatacontrol8=new analogObj('tagdatacontrol8',2,'');
db["second"].htmlobj.push(tagdatacontrol8);
var switchimage9=new swimgObj('switchimage9','images/上行.png','images/下行.png');
db["blink"].htmlobj.push(switchimage9);
var tagdatacontrol11=new analogObj('tagdatacontrol11',2,'');
db["second"].htmlobj.push(tagdatacontrol11);
var switchimage12=new swimgObj('switchimage12','images/上行.png','images/下行.png');
db["blink"].htmlobj.push(switchimage12);
var tagdatacontrol14=new analogObj('tagdatacontrol14',2,'');
db["second"].htmlobj.push(tagdatacontrol14);
var switchimage15=new swimgObj('switchimage15','images/上行.png','images/下行.png');
db["blink"].htmlobj.push(switchimage15);
var tagdatacontrol17=new analogObj('tagdatacontrol17',2,'');
db["second"].htmlobj.push(tagdatacontrol17);
var switchimage18=new swimgObj('switchimage18','images/上行.png','images/下行.png');
db["blink"].htmlobj.push(switchimage18);
var tagdatacontrol20=new analogObj('tagdatacontrol20',2,'');
db["second"].htmlobj.push(tagdatacontrol20);
var switchimage21=new swimgObj('switchimage21','images/上行.png','images/下行.png');
db["blink"].htmlobj.push(switchimage21);
var tagdatacontrol23=new analogObj('tagdatacontrol23',2,'');
db["second"].htmlobj.push(tagdatacontrol23);
var switchimage24=new swimgObj('switchimage24','images/上行.png','images/下行.png');
db["blink"].htmlobj.push(switchimage24);
var tagdatacontrol26=new analogObj('tagdatacontrol26',2,'');
db["second"].htmlobj.push(tagdatacontrol26);
var switchimage27=new swimgObj('switchimage27','images/上行.png','images/下行.png');
db["blink"].htmlobj.push(switchimage27);
var tagdatacontrol29=new analogObj('tagdatacontrol29',2,'');
db["second"].htmlobj.push(tagdatacontrol29);
var switchimage30=new swimgObj('switchimage30','images/上行.png','images/下行.png');
db["blink"].htmlobj.push(switchimage30);
var tagdatacontrol32=new analogObj('tagdatacontrol32',2,'');
db["second"].htmlobj.push(tagdatacontrol32);
var switchimage33=new swimgObj('switchimage33','images/上行.png','images/下行.png');
db["blink"].htmlobj.push(switchimage33);
var tagdatacontrol35=new analogObj('tagdatacontrol35',2,'');
db["second"].htmlobj.push(tagdatacontrol35);
var switchimage36=new swimgObj('switchimage36','images/上行.png','images/下行.png');
db["blink"].htmlobj.push(switchimage36);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/东楼状态.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电梯管理系统 >>> 东楼状态</div>
<img id="imageex1" style="position:absolute;border:0px;left:72px;top:120px;width:80px;height:130px;" src="images/电梯乘客.png" />
<div id="xianshi3" style="position:absolute;line-height:28px;left:169px;width:104px;height:28px;top:141px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >楼层：</div>
<div id="xianshi4" style="position:absolute;line-height:28px;left:167px;width:104px;height:28px;top:193px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >状态：</div>
<div id="xianshi5" style="position:absolute;line-height:28px;left:113px;width:140px;height:28px;top:263px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >1#电梯</div>
<div id="tagdatacontrol2" style="position:absolute;line-height:-2147483648px;left:265px;width:-2147483648px;height:-2147483648px;top:142px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<img id="switchimage3" style="position:absolute;border:0px;left:263px;top:192px;width:29px;height:29px;" src="images/上行.png" />
<img id="imageex4" style="position:absolute;border:0px;left:432px;top:120px;width:80px;height:130px;" src="images/电梯乘客.png" />
<div id="xianshi6" style="position:absolute;line-height:28px;left:529px;width:104px;height:28px;top:141px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >楼层：</div>
<div id="xianshi7" style="position:absolute;line-height:28px;left:527px;width:104px;height:28px;top:193px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >状态：</div>
<div id="xianshi8" style="position:absolute;line-height:28px;left:473px;width:140px;height:28px;top:263px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >2#电梯</div>
<div id="tagdatacontrol5" style="position:absolute;line-height:-2147483648px;left:625px;width:-2147483648px;height:-2147483648px;top:142px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<img id="switchimage6" style="position:absolute;border:0px;left:623px;top:192px;width:29px;height:29px;" src="images/上行.png" />
<img id="imageex7" style="position:absolute;border:0px;left:768px;top:120px;width:80px;height:130px;" src="images/电梯乘客.png" />
<div id="xianshi9" style="position:absolute;line-height:28px;left:865px;width:104px;height:28px;top:141px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >楼层：</div>
<div id="xianshi10" style="position:absolute;line-height:28px;left:863px;width:104px;height:28px;top:193px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >状态：</div>
<div id="xianshi11" style="position:absolute;line-height:28px;left:809px;width:140px;height:28px;top:263px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >3#电梯</div>
<div id="tagdatacontrol8" style="position:absolute;line-height:-2147483648px;left:961px;width:-2147483648px;height:-2147483648px;top:142px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<img id="switchimage9" style="position:absolute;border:0px;left:959px;top:192px;width:29px;height:29px;" src="images/上行.png" />
<img id="imageex10" style="position:absolute;border:0px;left:1136px;top:120px;width:80px;height:130px;" src="images/电梯乘客.png" />
<div id="xianshi12" style="position:absolute;line-height:28px;left:1233px;width:104px;height:28px;top:141px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >楼层：</div>
<div id="xianshi13" style="position:absolute;line-height:28px;left:1231px;width:104px;height:28px;top:193px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >状态：</div>
<div id="xianshi14" style="position:absolute;line-height:28px;left:1177px;width:140px;height:28px;top:263px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >4#电梯</div>
<div id="tagdatacontrol11" style="position:absolute;line-height:-2147483648px;left:1329px;width:-2147483648px;height:-2147483648px;top:142px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<img id="switchimage12" style="position:absolute;border:0px;left:1327px;top:192px;width:29px;height:29px;" src="images/上行.png" />
<img id="imageex13" style="position:absolute;border:0px;left:64px;top:408px;width:80px;height:130px;" src="images/电梯乘客.png" />
<div id="xianshi15" style="position:absolute;line-height:28px;left:161px;width:104px;height:28px;top:429px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >楼层：</div>
<div id="xianshi16" style="position:absolute;line-height:28px;left:159px;width:104px;height:28px;top:481px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >状态：</div>
<div id="xianshi17" style="position:absolute;line-height:28px;left:105px;width:140px;height:28px;top:551px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >5#电梯</div>
<div id="tagdatacontrol14" style="position:absolute;line-height:-2147483648px;left:257px;width:-2147483648px;height:-2147483648px;top:430px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<img id="switchimage15" style="position:absolute;border:0px;left:255px;top:480px;width:29px;height:29px;" src="images/上行.png" />
<img id="imageex16" style="position:absolute;border:0px;left:64px;top:688px;width:80px;height:130px;" src="images/电梯乘客.png" />
<div id="xianshi18" style="position:absolute;line-height:28px;left:161px;width:104px;height:28px;top:709px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >楼层：</div>
<div id="xianshi19" style="position:absolute;line-height:28px;left:159px;width:104px;height:28px;top:761px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >状态：</div>
<div id="xianshi20" style="position:absolute;line-height:28px;left:105px;width:140px;height:28px;top:831px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >9#电梯</div>
<div id="tagdatacontrol17" style="position:absolute;line-height:-2147483648px;left:257px;width:-2147483648px;height:-2147483648px;top:710px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<img id="switchimage18" style="position:absolute;border:0px;left:255px;top:760px;width:29px;height:29px;" src="images/上行.png" />
<img id="imageex19" style="position:absolute;border:0px;left:432px;top:408px;width:80px;height:130px;" src="images/电梯乘客.png" />
<div id="xianshi21" style="position:absolute;line-height:28px;left:529px;width:104px;height:28px;top:429px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >楼层：</div>
<div id="xianshi22" style="position:absolute;line-height:28px;left:527px;width:104px;height:28px;top:481px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >状态：</div>
<div id="xianshi23" style="position:absolute;line-height:28px;left:473px;width:140px;height:28px;top:551px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >6#电梯</div>
<div id="tagdatacontrol20" style="position:absolute;line-height:-2147483648px;left:625px;width:-2147483648px;height:-2147483648px;top:430px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<img id="switchimage21" style="position:absolute;border:0px;left:623px;top:480px;width:29px;height:29px;" src="images/上行.png" />
<img id="imageex22" style="position:absolute;border:0px;left:768px;top:408px;width:80px;height:130px;" src="images/电梯乘客.png" />
<div id="xianshi24" style="position:absolute;line-height:28px;left:865px;width:104px;height:28px;top:429px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >楼层：</div>
<div id="xianshi25" style="position:absolute;line-height:28px;left:863px;width:104px;height:28px;top:481px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >状态：</div>
<div id="xianshi26" style="position:absolute;line-height:28px;left:809px;width:140px;height:28px;top:551px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >7#电梯</div>
<div id="tagdatacontrol23" style="position:absolute;line-height:-2147483648px;left:961px;width:-2147483648px;height:-2147483648px;top:430px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<img id="switchimage24" style="position:absolute;border:0px;left:959px;top:480px;width:29px;height:29px;" src="images/上行.png" />
<img id="imageex25" style="position:absolute;border:0px;left:1136px;top:408px;width:80px;height:130px;" src="images/电梯乘客.png" />
<div id="xianshi27" style="position:absolute;line-height:28px;left:1233px;width:104px;height:28px;top:429px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >楼层：</div>
<div id="xianshi28" style="position:absolute;line-height:28px;left:1231px;width:104px;height:28px;top:481px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >状态：</div>
<div id="xianshi29" style="position:absolute;line-height:28px;left:1177px;width:140px;height:28px;top:551px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >8#电梯</div>
<div id="tagdatacontrol26" style="position:absolute;line-height:-2147483648px;left:1329px;width:-2147483648px;height:-2147483648px;top:430px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<img id="switchimage27" style="position:absolute;border:0px;left:1327px;top:480px;width:29px;height:29px;" src="images/上行.png" />
<img id="imageex28" style="position:absolute;border:0px;left:432px;top:688px;width:80px;height:130px;" src="images/电梯乘客.png" />
<div id="xianshi30" style="position:absolute;line-height:28px;left:529px;width:104px;height:28px;top:709px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >楼层：</div>
<div id="xianshi31" style="position:absolute;line-height:28px;left:527px;width:104px;height:28px;top:761px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >状态：</div>
<div id="xianshi32" style="position:absolute;line-height:28px;left:473px;width:140px;height:28px;top:831px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >10#电梯</div>
<div id="tagdatacontrol29" style="position:absolute;line-height:-2147483648px;left:625px;width:-2147483648px;height:-2147483648px;top:710px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<img id="switchimage30" style="position:absolute;border:0px;left:623px;top:760px;width:29px;height:29px;" src="images/上行.png" />
<img id="imageex31" style="position:absolute;border:0px;left:776px;top:688px;width:80px;height:130px;" src="images/电梯乘客.png" />
<div id="xianshi33" style="position:absolute;line-height:28px;left:873px;width:104px;height:28px;top:709px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >楼层：</div>
<div id="xianshi34" style="position:absolute;line-height:28px;left:871px;width:104px;height:28px;top:761px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >状态：</div>
<div id="xianshi35" style="position:absolute;line-height:28px;left:817px;width:140px;height:28px;top:831px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >11#电梯</div>
<div id="tagdatacontrol32" style="position:absolute;line-height:-2147483648px;left:969px;width:-2147483648px;height:-2147483648px;top:710px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<img id="switchimage33" style="position:absolute;border:0px;left:967px;top:760px;width:29px;height:29px;" src="images/上行.png" />
<img id="imageex34" style="position:absolute;border:0px;left:1144px;top:688px;width:80px;height:130px;" src="images/电梯乘客.png" />
<div id="xianshi36" style="position:absolute;line-height:28px;left:1241px;width:104px;height:28px;top:709px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >楼层：</div>
<div id="xianshi37" style="position:absolute;line-height:28px;left:1239px;width:104px;height:28px;top:761px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >状态：</div>
<div id="xianshi38" style="position:absolute;line-height:28px;left:1185px;width:140px;height:28px;top:831px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >12#电梯</div>
<div id="tagdatacontrol35" style="position:absolute;line-height:-2147483648px;left:1337px;width:-2147483648px;height:-2147483648px;top:710px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<img id="switchimage36" style="position:absolute;border:0px;left:1335px;top:760px;width:29px;height:29px;" src="images/上行.png" />

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
