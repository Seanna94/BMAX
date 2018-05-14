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
<title>配电室3</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1470;
grfheight = 996;
var tagcount = 1;
db["second"]={tagname:"second",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
function button51_js(){

$("#dainbiao_child").attr("src","");
$("#dainbiao_child").hide();

}
function button52_js(){
$("#dainbiao_child").attr("src","../view/配电室1_13到24.aspx");
$("#dainbiao_child").hide();
$("#dainbiao_child").slideDown(1000);

}
function button53_js(){
$("#dainbiao_child").attr("src","../view/配电室1_25到30.aspx");
$("#dainbiao_child").hide();
$("#dainbiao_child").slideDown(1000);

}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var tagdatacontrol4=new analogObj('tagdatacontrol4',2,'');
db["second"].htmlobj.push(tagdatacontrol4);
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


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/配电室3.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电表系统 >>> 配电室1</div>
<button id="button51" style="position:absolute;cursor:pointer;left:407px;width:100px;height:56px;top:71px;font-family:'宋体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:button51_js();">1-12</button>
<button id="button52" style="position:absolute;cursor:pointer;left:615px;width:100px;height:56px;top:71px;font-family:'宋体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:button52_js();">13-24</button>
<button id="button53" style="position:absolute;cursor:pointer;left:831px;width:100px;height:56px;top:71px;font-family:'宋体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" onclick="javascript:button53_js();">25-30</button>
<img id="imageex3" style="position:absolute;border:0px;left:65px;top:211px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi3" style="position:absolute;line-height:28px;left:162px;width:50px;height:28px;top:232px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol4" style="position:absolute;line-height:-2147483648px;left:220px;width:-2147483648px;height:-2147483648px;top:232px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi4" style="position:absolute;line-height:28px;left:287px;width:24px;height:28px;top:232px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi5" style="position:absolute;line-height:28px;left:162px;width:50px;height:28px;top:269px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol5" style="position:absolute;line-height:-2147483648px;left:220px;width:-2147483648px;height:-2147483648px;top:269px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi6" style="position:absolute;line-height:28px;left:286px;width:24px;height:28px;top:269px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi7" style="position:absolute;line-height:28px;left:162px;width:50px;height:28px;top:303px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol6" style="position:absolute;line-height:-2147483648px;left:220px;width:-2147483648px;height:-2147483648px;top:302px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi8" style="position:absolute;line-height:28px;left:275px;width:56px;height:28px;top:303px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex4" style="position:absolute;border:0px;left:425px;top:211px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi9" style="position:absolute;line-height:28px;left:522px;width:50px;height:28px;top:232px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol7" style="position:absolute;line-height:-2147483648px;left:580px;width:-2147483648px;height:-2147483648px;top:232px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi10" style="position:absolute;line-height:28px;left:647px;width:24px;height:28px;top:232px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi11" style="position:absolute;line-height:28px;left:522px;width:50px;height:28px;top:269px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol8" style="position:absolute;line-height:-2147483648px;left:580px;width:-2147483648px;height:-2147483648px;top:269px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi12" style="position:absolute;line-height:28px;left:646px;width:24px;height:28px;top:269px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi13" style="position:absolute;line-height:28px;left:522px;width:50px;height:28px;top:303px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol9" style="position:absolute;line-height:-2147483648px;left:580px;width:-2147483648px;height:-2147483648px;top:302px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi14" style="position:absolute;line-height:28px;left:635px;width:56px;height:28px;top:303px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex5" style="position:absolute;border:0px;left:785px;top:211px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi15" style="position:absolute;line-height:28px;left:882px;width:50px;height:28px;top:232px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol10" style="position:absolute;line-height:-2147483648px;left:940px;width:-2147483648px;height:-2147483648px;top:232px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi16" style="position:absolute;line-height:28px;left:1007px;width:24px;height:28px;top:232px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi17" style="position:absolute;line-height:28px;left:882px;width:50px;height:28px;top:269px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol11" style="position:absolute;line-height:-2147483648px;left:940px;width:-2147483648px;height:-2147483648px;top:269px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi18" style="position:absolute;line-height:28px;left:1006px;width:24px;height:28px;top:269px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi19" style="position:absolute;line-height:28px;left:882px;width:50px;height:28px;top:303px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol12" style="position:absolute;line-height:-2147483648px;left:940px;width:-2147483648px;height:-2147483648px;top:302px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi20" style="position:absolute;line-height:28px;left:995px;width:56px;height:28px;top:303px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex6" style="position:absolute;border:0px;left:1145px;top:211px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi21" style="position:absolute;line-height:28px;left:1242px;width:50px;height:28px;top:232px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol13" style="position:absolute;line-height:-2147483648px;left:1300px;width:-2147483648px;height:-2147483648px;top:232px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi22" style="position:absolute;line-height:28px;left:1367px;width:24px;height:28px;top:232px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi23" style="position:absolute;line-height:28px;left:1242px;width:50px;height:28px;top:269px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol14" style="position:absolute;line-height:-2147483648px;left:1300px;width:-2147483648px;height:-2147483648px;top:269px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi24" style="position:absolute;line-height:28px;left:1366px;width:24px;height:28px;top:269px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi25" style="position:absolute;line-height:28px;left:1242px;width:50px;height:28px;top:303px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol15" style="position:absolute;line-height:-2147483648px;left:1300px;width:-2147483648px;height:-2147483648px;top:302px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi26" style="position:absolute;line-height:28px;left:1355px;width:56px;height:28px;top:303px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex7" style="position:absolute;border:0px;left:65px;top:491px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi27" style="position:absolute;line-height:28px;left:162px;width:50px;height:28px;top:512px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol16" style="position:absolute;line-height:-2147483648px;left:220px;width:-2147483648px;height:-2147483648px;top:512px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi28" style="position:absolute;line-height:28px;left:287px;width:24px;height:28px;top:512px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi29" style="position:absolute;line-height:28px;left:162px;width:50px;height:28px;top:549px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol17" style="position:absolute;line-height:-2147483648px;left:220px;width:-2147483648px;height:-2147483648px;top:549px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi30" style="position:absolute;line-height:28px;left:286px;width:24px;height:28px;top:549px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi31" style="position:absolute;line-height:28px;left:162px;width:50px;height:28px;top:583px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol18" style="position:absolute;line-height:-2147483648px;left:220px;width:-2147483648px;height:-2147483648px;top:582px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi32" style="position:absolute;line-height:28px;left:275px;width:56px;height:28px;top:583px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex8" style="position:absolute;border:0px;left:425px;top:491px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi33" style="position:absolute;line-height:28px;left:522px;width:50px;height:28px;top:512px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol19" style="position:absolute;line-height:-2147483648px;left:580px;width:-2147483648px;height:-2147483648px;top:512px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi34" style="position:absolute;line-height:28px;left:647px;width:24px;height:28px;top:512px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi35" style="position:absolute;line-height:28px;left:522px;width:50px;height:28px;top:549px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol20" style="position:absolute;line-height:-2147483648px;left:580px;width:-2147483648px;height:-2147483648px;top:549px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi36" style="position:absolute;line-height:28px;left:646px;width:24px;height:28px;top:549px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi37" style="position:absolute;line-height:28px;left:522px;width:50px;height:28px;top:583px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol21" style="position:absolute;line-height:-2147483648px;left:580px;width:-2147483648px;height:-2147483648px;top:582px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi38" style="position:absolute;line-height:28px;left:635px;width:56px;height:28px;top:583px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex9" style="position:absolute;border:0px;left:785px;top:491px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi39" style="position:absolute;line-height:28px;left:882px;width:50px;height:28px;top:512px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol22" style="position:absolute;line-height:-2147483648px;left:940px;width:-2147483648px;height:-2147483648px;top:512px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi40" style="position:absolute;line-height:28px;left:1007px;width:24px;height:28px;top:512px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi41" style="position:absolute;line-height:28px;left:882px;width:50px;height:28px;top:549px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol23" style="position:absolute;line-height:-2147483648px;left:940px;width:-2147483648px;height:-2147483648px;top:549px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi42" style="position:absolute;line-height:28px;left:1006px;width:24px;height:28px;top:549px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi43" style="position:absolute;line-height:28px;left:882px;width:50px;height:28px;top:583px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol24" style="position:absolute;line-height:-2147483648px;left:940px;width:-2147483648px;height:-2147483648px;top:582px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi44" style="position:absolute;line-height:28px;left:995px;width:56px;height:28px;top:583px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex10" style="position:absolute;border:0px;left:1145px;top:491px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi45" style="position:absolute;line-height:28px;left:1242px;width:50px;height:28px;top:512px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol25" style="position:absolute;line-height:-2147483648px;left:1300px;width:-2147483648px;height:-2147483648px;top:512px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi46" style="position:absolute;line-height:28px;left:1367px;width:24px;height:28px;top:512px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi47" style="position:absolute;line-height:28px;left:1242px;width:50px;height:28px;top:549px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol26" style="position:absolute;line-height:-2147483648px;left:1300px;width:-2147483648px;height:-2147483648px;top:549px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi48" style="position:absolute;line-height:28px;left:1366px;width:24px;height:28px;top:549px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi49" style="position:absolute;line-height:28px;left:1242px;width:50px;height:28px;top:583px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol27" style="position:absolute;line-height:-2147483648px;left:1300px;width:-2147483648px;height:-2147483648px;top:582px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi50" style="position:absolute;line-height:28px;left:1355px;width:56px;height:28px;top:583px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex11" style="position:absolute;border:0px;left:65px;top:763px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi51" style="position:absolute;line-height:28px;left:162px;width:50px;height:28px;top:784px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol28" style="position:absolute;line-height:-2147483648px;left:220px;width:-2147483648px;height:-2147483648px;top:784px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi52" style="position:absolute;line-height:28px;left:287px;width:24px;height:28px;top:784px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi53" style="position:absolute;line-height:28px;left:162px;width:50px;height:28px;top:821px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol29" style="position:absolute;line-height:-2147483648px;left:220px;width:-2147483648px;height:-2147483648px;top:821px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi54" style="position:absolute;line-height:28px;left:286px;width:24px;height:28px;top:821px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi55" style="position:absolute;line-height:28px;left:162px;width:50px;height:28px;top:855px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol30" style="position:absolute;line-height:-2147483648px;left:220px;width:-2147483648px;height:-2147483648px;top:854px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi56" style="position:absolute;line-height:28px;left:275px;width:56px;height:28px;top:855px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex12" style="position:absolute;border:0px;left:425px;top:763px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi57" style="position:absolute;line-height:28px;left:522px;width:50px;height:28px;top:784px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol31" style="position:absolute;line-height:-2147483648px;left:580px;width:-2147483648px;height:-2147483648px;top:784px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi58" style="position:absolute;line-height:28px;left:647px;width:24px;height:28px;top:784px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi59" style="position:absolute;line-height:28px;left:522px;width:50px;height:28px;top:821px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol32" style="position:absolute;line-height:-2147483648px;left:580px;width:-2147483648px;height:-2147483648px;top:821px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi60" style="position:absolute;line-height:28px;left:646px;width:24px;height:28px;top:821px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi61" style="position:absolute;line-height:28px;left:522px;width:50px;height:28px;top:855px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol33" style="position:absolute;line-height:-2147483648px;left:580px;width:-2147483648px;height:-2147483648px;top:854px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi62" style="position:absolute;line-height:28px;left:635px;width:56px;height:28px;top:855px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex13" style="position:absolute;border:0px;left:785px;top:763px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi63" style="position:absolute;line-height:28px;left:882px;width:50px;height:28px;top:784px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol34" style="position:absolute;line-height:-2147483648px;left:940px;width:-2147483648px;height:-2147483648px;top:784px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi64" style="position:absolute;line-height:28px;left:1007px;width:24px;height:28px;top:784px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi65" style="position:absolute;line-height:28px;left:882px;width:50px;height:28px;top:821px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol35" style="position:absolute;line-height:-2147483648px;left:940px;width:-2147483648px;height:-2147483648px;top:821px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi66" style="position:absolute;line-height:28px;left:1006px;width:24px;height:28px;top:821px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi67" style="position:absolute;line-height:28px;left:882px;width:50px;height:28px;top:855px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol36" style="position:absolute;line-height:-2147483648px;left:940px;width:-2147483648px;height:-2147483648px;top:854px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi68" style="position:absolute;line-height:28px;left:995px;width:56px;height:28px;top:855px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<img id="imageex14" style="position:absolute;border:0px;left:1145px;top:763px;width:80px;height:130px;" src="images/电表.png" />
<div id="xianshi69" style="position:absolute;line-height:28px;left:1242px;width:50px;height:28px;top:784px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol37" style="position:absolute;line-height:-2147483648px;left:1300px;width:-2147483648px;height:-2147483648px;top:784px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi70" style="position:absolute;line-height:28px;left:1367px;width:24px;height:28px;top:784px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >V</div>
<div id="xianshi71" style="position:absolute;line-height:28px;left:1242px;width:50px;height:28px;top:821px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电压:</div>
<div id="tagdatacontrol38" style="position:absolute;line-height:-2147483648px;left:1300px;width:-2147483648px;height:-2147483648px;top:821px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi72" style="position:absolute;line-height:28px;left:1366px;width:24px;height:28px;top:821px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >I</div>
<div id="xianshi73" style="position:absolute;line-height:28px;left:1242px;width:50px;height:28px;top:855px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(255,255,255);" >电量:</div>
<div id="tagdatacontrol39" style="position:absolute;line-height:-2147483648px;left:1300px;width:-2147483648px;height:-2147483648px;top:854px;font-family:'楷体','Serif';font-style:normal;font-size:20px;font-weight:normal;color:rgb(0,255,0);" >0.00</div>
<div id="xianshi74" style="position:absolute;line-height:28px;left:1355px;width:56px;height:28px;top:855px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;color:rgb(255,255,255);" >kW/h</div>
<iframe src="" id="dainbiao_child" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="position:absolute;left:0px;width:1470px;height:860px;top:140px;"></iframe>

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
