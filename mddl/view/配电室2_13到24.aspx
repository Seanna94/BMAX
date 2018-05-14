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
<meta name="viewport" content="width=1470,height=860,initial-scale=0.5,minimum-scale=0.5,maximum-scale=5,user-scalable=yes" />
<title>配电室2_13到24</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1470;
grfheight = 860;
var tagcount = 1;
db["second"]={tagname:"second",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var tagdatacontrol5=new analogObj('tagdatacontrol5',2,'');
db["second"].htmlobj.push(tagdatacontrol5);
var tagdatacontrol6=new analogObj('tagdatacontrol6',2,'');
db["second"].htmlobj.push(tagdatacontrol6);
var tagdatacontrol7=new analogObj('tagdatacontrol7',2,'');
db["second"].htmlobj.push(tagdatacontrol7);
var tagdatacontrol8=new analogObj('tagdatacontrol8',2,'');
db["second"].htmlobj.push(tagdatacontrol8);
var tagdatacontrol9=new analogObj('tagdatacontrol9',2,'');
db["second"].htmlobj.push(tagdatacontrol9);
var tagdatacontrol10=new analogObj('tagdatacontrol10',2,'');
db["second"].htmlobj.push(tagdatacontrol10);
var tagdatacontrol11=new analogObj('tagdatacontrol11',2,'');
db["second"].htmlobj.push(tagdatacontrol11);
var tagdatacontrol12=new analogObj('tagdatacontrol12',2,'');
db["second"].htmlobj.push(tagdatacontrol12);
var tagdatacontrol13=new analogObj('tagdatacontrol13',2,'');
db["second"].htmlobj.push(tagdatacontrol13);
var tagdatacontrol14=new analogObj('tagdatacontrol14',2,'');
db["second"].htmlobj.push(tagdatacontrol14);
var tagdatacontrol15=new analogObj('tagdatacontrol15',2,'');
db["second"].htmlobj.push(tagdatacontrol15);
var tagdatacontrol16=new analogObj('tagdatacontrol16',2,'');
db["second"].htmlobj.push(tagdatacontrol16);
var tagdatacontrol17=new analogObj('tagdatacontrol17',2,'');
db["second"].htmlobj.push(tagdatacontrol17);
var tagdatacontrol18=new analogObj('tagdatacontrol18',2,'');
db["second"].htmlobj.push(tagdatacontrol18);
var tagdatacontrol19=new analogObj('tagdatacontrol19',2,'');
db["second"].htmlobj.push(tagdatacontrol19);
var tagdatacontrol20=new analogObj('tagdatacontrol20',2,'');
db["second"].htmlobj.push(tagdatacontrol20);
var tagdatacontrol21=new analogObj('tagdatacontrol21',2,'');
db["second"].htmlobj.push(tagdatacontrol21);
var tagdatacontrol22=new analogObj('tagdatacontrol22',2,'');
db["second"].htmlobj.push(tagdatacontrol22);
var tagdatacontrol23=new analogObj('tagdatacontrol23',2,'');
db["second"].htmlobj.push(tagdatacontrol23);
var tagdatacontrol24=new analogObj('tagdatacontrol24',2,'');
db["second"].htmlobj.push(tagdatacontrol24);
var tagdatacontrol25=new analogObj('tagdatacontrol25',2,'');
db["second"].htmlobj.push(tagdatacontrol25);
var tagdatacontrol26=new analogObj('tagdatacontrol26',2,'');
db["second"].htmlobj.push(tagdatacontrol26);
var tagdatacontrol27=new analogObj('tagdatacontrol27',2,'');
db["second"].htmlobj.push(tagdatacontrol27);
var tagdatacontrol28=new analogObj('tagdatacontrol28',2,'');
db["second"].htmlobj.push(tagdatacontrol28);
var tagdatacontrol29=new analogObj('tagdatacontrol29',2,'');
db["second"].htmlobj.push(tagdatacontrol29);
var tagdatacontrol30=new analogObj('tagdatacontrol30',2,'');
db["second"].htmlobj.push(tagdatacontrol30);
var tagdatacontrol31=new analogObj('tagdatacontrol31',2,'');
db["second"].htmlobj.push(tagdatacontrol31);
var tagdatacontrol32=new analogObj('tagdatacontrol32',2,'');
db["second"].htmlobj.push(tagdatacontrol32);
var tagdatacontrol33=new analogObj('tagdatacontrol33',2,'');
db["second"].htmlobj.push(tagdatacontrol33);
var tagdatacontrol34=new analogObj('tagdatacontrol34',2,'');
db["second"].htmlobj.push(tagdatacontrol34);
var tagdatacontrol35=new analogObj('tagdatacontrol35',2,'');
db["second"].htmlobj.push(tagdatacontrol35);
var tagdatacontrol36=new analogObj('tagdatacontrol36',2,'');
db["second"].htmlobj.push(tagdatacontrol36);
var tagdatacontrol37=new analogObj('tagdatacontrol37',2,'');
db["second"].htmlobj.push(tagdatacontrol37);
var tagdatacontrol38=new analogObj('tagdatacontrol38',2,'');
db["second"].htmlobj.push(tagdatacontrol38);
var tagdatacontrol39=new analogObj('tagdatacontrol39',2,'');
db["second"].htmlobj.push(tagdatacontrol39);
var tagdatacontrol40=new analogObj('tagdatacontrol40',2,'');
db["second"].htmlobj.push(tagdatacontrol40);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#0A2B4A">
<div id="fscada">
<img src="Images/配电室2_13到24.png" border="0" />
<img id="imageex4" style="position:absolute;border:0px;left:57px;top:83px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi3" style="position:absolute;line-height:28px;left:154px;width:50px;height:28px;top:104px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol5" style="position:absolute;line-height:-2147483648px;left:212px;width:-2147483648px;height:-2147483648px;top:104px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi4" style="position:absolute;line-height:28px;left:279px;width:24px;height:28px;top:104px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi6" style="position:absolute;line-height:28px;left:154px;width:50px;height:28px;top:141px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol6" style="position:absolute;line-height:-2147483648px;left:212px;width:-2147483648px;height:-2147483648px;top:141px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi7" style="position:absolute;line-height:28px;left:278px;width:24px;height:28px;top:141px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi8" style="position:absolute;line-height:28px;left:154px;width:50px;height:28px;top:175px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol7" style="position:absolute;line-height:-2147483648px;left:212px;width:-2147483648px;height:-2147483648px;top:174px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi9" style="position:absolute;line-height:28px;left:267px;width:56px;height:28px;top:175px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex5" style="position:absolute;border:0px;left:409px;top:83px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi5" style="position:absolute;line-height:28px;left:506px;width:50px;height:28px;top:104px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol8" style="position:absolute;line-height:-2147483648px;left:564px;width:-2147483648px;height:-2147483648px;top:104px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi10" style="position:absolute;line-height:28px;left:631px;width:24px;height:28px;top:104px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi11" style="position:absolute;line-height:28px;left:506px;width:50px;height:28px;top:141px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol9" style="position:absolute;line-height:-2147483648px;left:564px;width:-2147483648px;height:-2147483648px;top:141px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi12" style="position:absolute;line-height:28px;left:630px;width:24px;height:28px;top:141px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi13" style="position:absolute;line-height:28px;left:506px;width:50px;height:28px;top:175px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol10" style="position:absolute;line-height:-2147483648px;left:564px;width:-2147483648px;height:-2147483648px;top:174px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi14" style="position:absolute;line-height:28px;left:619px;width:56px;height:28px;top:175px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex6" style="position:absolute;border:0px;left:761px;top:83px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi15" style="position:absolute;line-height:28px;left:858px;width:50px;height:28px;top:104px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol11" style="position:absolute;line-height:-2147483648px;left:916px;width:-2147483648px;height:-2147483648px;top:104px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi16" style="position:absolute;line-height:28px;left:983px;width:24px;height:28px;top:104px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi17" style="position:absolute;line-height:28px;left:858px;width:50px;height:28px;top:141px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol12" style="position:absolute;line-height:-2147483648px;left:916px;width:-2147483648px;height:-2147483648px;top:141px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi18" style="position:absolute;line-height:28px;left:982px;width:24px;height:28px;top:141px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi19" style="position:absolute;line-height:28px;left:858px;width:50px;height:28px;top:175px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol13" style="position:absolute;line-height:-2147483648px;left:916px;width:-2147483648px;height:-2147483648px;top:174px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi20" style="position:absolute;line-height:28px;left:971px;width:56px;height:28px;top:175px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex7" style="position:absolute;border:0px;left:1113px;top:83px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi21" style="position:absolute;line-height:28px;left:1210px;width:50px;height:28px;top:104px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol14" style="position:absolute;line-height:-2147483648px;left:1268px;width:-2147483648px;height:-2147483648px;top:104px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi22" style="position:absolute;line-height:28px;left:1335px;width:24px;height:28px;top:104px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi23" style="position:absolute;line-height:28px;left:1210px;width:50px;height:28px;top:141px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol15" style="position:absolute;line-height:-2147483648px;left:1268px;width:-2147483648px;height:-2147483648px;top:141px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi24" style="position:absolute;line-height:28px;left:1334px;width:24px;height:28px;top:141px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi25" style="position:absolute;line-height:28px;left:1210px;width:50px;height:28px;top:175px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol16" style="position:absolute;line-height:-2147483648px;left:1268px;width:-2147483648px;height:-2147483648px;top:174px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi26" style="position:absolute;line-height:28px;left:1323px;width:56px;height:28px;top:175px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex8" style="position:absolute;border:0px;left:57px;top:339px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi27" style="position:absolute;line-height:28px;left:154px;width:50px;height:28px;top:360px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol17" style="position:absolute;line-height:-2147483648px;left:212px;width:-2147483648px;height:-2147483648px;top:360px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi28" style="position:absolute;line-height:28px;left:279px;width:24px;height:28px;top:360px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi29" style="position:absolute;line-height:28px;left:154px;width:50px;height:28px;top:397px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol18" style="position:absolute;line-height:-2147483648px;left:212px;width:-2147483648px;height:-2147483648px;top:397px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi30" style="position:absolute;line-height:28px;left:278px;width:24px;height:28px;top:397px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi31" style="position:absolute;line-height:28px;left:154px;width:50px;height:28px;top:431px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol19" style="position:absolute;line-height:-2147483648px;left:212px;width:-2147483648px;height:-2147483648px;top:430px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi32" style="position:absolute;line-height:28px;left:267px;width:56px;height:28px;top:431px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex9" style="position:absolute;border:0px;left:409px;top:339px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi33" style="position:absolute;line-height:28px;left:506px;width:50px;height:28px;top:360px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol20" style="position:absolute;line-height:-2147483648px;left:564px;width:-2147483648px;height:-2147483648px;top:360px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi34" style="position:absolute;line-height:28px;left:631px;width:24px;height:28px;top:360px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi35" style="position:absolute;line-height:28px;left:506px;width:50px;height:28px;top:397px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol21" style="position:absolute;line-height:-2147483648px;left:564px;width:-2147483648px;height:-2147483648px;top:397px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi36" style="position:absolute;line-height:28px;left:630px;width:24px;height:28px;top:397px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi37" style="position:absolute;line-height:28px;left:506px;width:50px;height:28px;top:431px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol22" style="position:absolute;line-height:-2147483648px;left:564px;width:-2147483648px;height:-2147483648px;top:430px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi38" style="position:absolute;line-height:28px;left:619px;width:56px;height:28px;top:431px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex10" style="position:absolute;border:0px;left:761px;top:339px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi39" style="position:absolute;line-height:28px;left:858px;width:50px;height:28px;top:360px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol23" style="position:absolute;line-height:-2147483648px;left:916px;width:-2147483648px;height:-2147483648px;top:360px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi40" style="position:absolute;line-height:28px;left:983px;width:24px;height:28px;top:360px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi41" style="position:absolute;line-height:28px;left:858px;width:50px;height:28px;top:397px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol24" style="position:absolute;line-height:-2147483648px;left:916px;width:-2147483648px;height:-2147483648px;top:397px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi42" style="position:absolute;line-height:28px;left:982px;width:24px;height:28px;top:397px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi43" style="position:absolute;line-height:28px;left:858px;width:50px;height:28px;top:431px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol25" style="position:absolute;line-height:-2147483648px;left:916px;width:-2147483648px;height:-2147483648px;top:430px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi44" style="position:absolute;line-height:28px;left:971px;width:56px;height:28px;top:431px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex11" style="position:absolute;border:0px;left:1113px;top:339px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi45" style="position:absolute;line-height:28px;left:1210px;width:50px;height:28px;top:360px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol26" style="position:absolute;line-height:-2147483648px;left:1268px;width:-2147483648px;height:-2147483648px;top:360px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi46" style="position:absolute;line-height:28px;left:1335px;width:24px;height:28px;top:360px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi47" style="position:absolute;line-height:28px;left:1210px;width:50px;height:28px;top:397px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol27" style="position:absolute;line-height:-2147483648px;left:1268px;width:-2147483648px;height:-2147483648px;top:397px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi48" style="position:absolute;line-height:28px;left:1334px;width:24px;height:28px;top:397px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi49" style="position:absolute;line-height:28px;left:1210px;width:50px;height:28px;top:431px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol28" style="position:absolute;line-height:-2147483648px;left:1268px;width:-2147483648px;height:-2147483648px;top:430px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi50" style="position:absolute;line-height:28px;left:1323px;width:56px;height:28px;top:431px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex12" style="position:absolute;border:0px;left:57px;top:603px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi51" style="position:absolute;line-height:28px;left:154px;width:50px;height:28px;top:624px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol29" style="position:absolute;line-height:-2147483648px;left:212px;width:-2147483648px;height:-2147483648px;top:624px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi52" style="position:absolute;line-height:28px;left:279px;width:24px;height:28px;top:624px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi53" style="position:absolute;line-height:28px;left:154px;width:50px;height:28px;top:661px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol30" style="position:absolute;line-height:-2147483648px;left:212px;width:-2147483648px;height:-2147483648px;top:661px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi54" style="position:absolute;line-height:28px;left:278px;width:24px;height:28px;top:661px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi55" style="position:absolute;line-height:28px;left:154px;width:50px;height:28px;top:695px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol31" style="position:absolute;line-height:-2147483648px;left:212px;width:-2147483648px;height:-2147483648px;top:694px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi56" style="position:absolute;line-height:28px;left:267px;width:56px;height:28px;top:695px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex13" style="position:absolute;border:0px;left:409px;top:603px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi57" style="position:absolute;line-height:28px;left:506px;width:50px;height:28px;top:624px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol32" style="position:absolute;line-height:-2147483648px;left:564px;width:-2147483648px;height:-2147483648px;top:624px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi58" style="position:absolute;line-height:28px;left:631px;width:24px;height:28px;top:624px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi59" style="position:absolute;line-height:28px;left:506px;width:50px;height:28px;top:661px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol33" style="position:absolute;line-height:-2147483648px;left:564px;width:-2147483648px;height:-2147483648px;top:661px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi60" style="position:absolute;line-height:28px;left:630px;width:24px;height:28px;top:661px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi61" style="position:absolute;line-height:28px;left:506px;width:50px;height:28px;top:695px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol34" style="position:absolute;line-height:-2147483648px;left:564px;width:-2147483648px;height:-2147483648px;top:694px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi62" style="position:absolute;line-height:28px;left:619px;width:56px;height:28px;top:695px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex14" style="position:absolute;border:0px;left:769px;top:603px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi63" style="position:absolute;line-height:28px;left:866px;width:50px;height:28px;top:624px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol35" style="position:absolute;line-height:-2147483648px;left:924px;width:-2147483648px;height:-2147483648px;top:624px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi64" style="position:absolute;line-height:28px;left:991px;width:24px;height:28px;top:624px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi65" style="position:absolute;line-height:28px;left:866px;width:50px;height:28px;top:661px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol36" style="position:absolute;line-height:-2147483648px;left:924px;width:-2147483648px;height:-2147483648px;top:661px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi66" style="position:absolute;line-height:28px;left:990px;width:24px;height:28px;top:661px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi67" style="position:absolute;line-height:28px;left:866px;width:50px;height:28px;top:695px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol37" style="position:absolute;line-height:-2147483648px;left:924px;width:-2147483648px;height:-2147483648px;top:694px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi68" style="position:absolute;line-height:28px;left:979px;width:56px;height:28px;top:695px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex15" style="position:absolute;border:0px;left:1121px;top:603px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi69" style="position:absolute;line-height:28px;left:1218px;width:50px;height:28px;top:624px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol38" style="position:absolute;line-height:-2147483648px;left:1276px;width:-2147483648px;height:-2147483648px;top:624px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi70" style="position:absolute;line-height:28px;left:1343px;width:24px;height:28px;top:624px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi71" style="position:absolute;line-height:28px;left:1218px;width:50px;height:28px;top:661px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol39" style="position:absolute;line-height:-2147483648px;left:1276px;width:-2147483648px;height:-2147483648px;top:661px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi72" style="position:absolute;line-height:28px;left:1342px;width:24px;height:28px;top:661px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi73" style="position:absolute;line-height:28px;left:1218px;width:50px;height:28px;top:695px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol40" style="position:absolute;line-height:-2147483648px;left:1276px;width:-2147483648px;height:-2147483648px;top:694px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi74" style="position:absolute;line-height:28px;left:1331px;width:56px;height:28px;top:695px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>

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
