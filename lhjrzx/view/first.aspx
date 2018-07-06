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
<meta name="viewport" content="width=900,height=800,initial-scale=0.5,minimum-scale=0.5,maximum-scale=5,user-scalable=yes" />
<title>first</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 900;
grfheight = 800;
var tagcount = 12;
db["system.minute"]={tagname:"system.minute",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["system.second"]={tagname:"system.second",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["system.month"]={tagname:"system.month",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["system.millisecond"]={tagname:"system.millisecond",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["system.hour"]={tagname:"system.hour",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["system.year"]={tagname:"system.year",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["system.blink"]={tagname:"system.blink",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["system.datetime"]={tagname:"system.datetime",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["sim.tank1level"]={tagname:"sim.tank1level",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["sim.val1"]={tagname:"sim.val1",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["sim.val2"]={tagname:"sim.val2",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["sim.val3"]={tagname:"sim.val3",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
function label1_js(){
display("alarm");
}
function button22_js(){
openvariables();
}
function button23_js(){
display("default");
}
function button24_js(){
writetag("sim.tank1level","");
}
function button25_js(){
 addtagvalue("sim.tank1level","1");
}
function button26_js(){
 toogletag("sim.val1");
}
function progressbarexcontrol33_js(){
display("main");
}
function switchimage2_js(){
 toogletag("sim.val2");
}
function switchimage3_js(){
 toogletag("sim.val1");
}
function switchimage4_js(){
 toogletag("sim.val3");
}
function button2_js(){
alert($("#txt").value());
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var tagdatacontrol1=new analogObj('tagdatacontrol1',2,'%');
db["system.minute"].htmlobj.push(tagdatacontrol1);
var tagdatacontrol2=new analogObj('tagdatacontrol2',2,'MPa');
db["system.second"].htmlobj.push(tagdatacontrol2);
var tagdatacontrol3=new analogObj('tagdatacontrol3',2,'℃');
db["system.second"].htmlobj.push(tagdatacontrol3);
var tagdatacontrol4=new analogObj('tagdatacontrol4',2,'MPa');
db["system.month"].htmlobj.push(tagdatacontrol4);
var tagdatacontrol5=new analogObj('tagdatacontrol5',2,'℃');
db["system.millisecond"].htmlobj.push(tagdatacontrol5);
var tagdatacontrol6=new analogObj('tagdatacontrol6',2,'%');
db["system.second"].htmlobj.push(tagdatacontrol6);
var tagdatacontrol7=new analogObj('tagdatacontrol7',2,'MPa');
db["system.hour"].htmlobj.push(tagdatacontrol7);
var tagdatacontrol8=new analogObj('tagdatacontrol8',2,'℃');
db["system.minute"].htmlobj.push(tagdatacontrol8);
var tagdatacontrol9=new analogObj('tagdatacontrol9',2,'NKm3/h');
db["system.millisecond"].htmlobj.push(tagdatacontrol9);
var tagdatacontrol10=new analogObj('tagdatacontrol10',2,'NKm3');
db["system.year"].htmlobj.push(tagdatacontrol10);
var onofftextcontrol11=new digitalObj('onofftextcontrol11','就地','远方',{"background-color":"transparent",color:"rgb(255,0,0)"},{"background-color":"transparent",color:"rgb(0,0,0)"});
db["system.blink"].htmlobj.push(onofftextcontrol11);
var onofftextcontrol12=new digitalObj('onofftextcontrol12','就地','远方',{"background-color":"transparent",color:"rgb(255,0,0)"},{"background-color":"transparent",color:"rgb(0,0,0)"});
db["system.blink"].htmlobj.push(onofftextcontrol12);
var onofftextcontrol13=new digitalObj('onofftextcontrol13','就地','远方',{"background-color":"transparent",color:"rgb(255,0,0)"},{"background-color":"transparent",color:"rgb(0,0,0)"});
db["system.blink"].htmlobj.push(onofftextcontrol13);
var onofftextcontrol14=new digitalObj('onofftextcontrol14','就地','远方',{"background-color":"transparent",color:"rgb(255,0,0)"},{"background-color":"transparent",color:"rgb(0,0,0)"});
db["system.blink"].htmlobj.push(onofftextcontrol14);
var onofftextcontrol15=new digitalObj('onofftextcontrol15','就地','远方',{"background-color":"transparent",color:"rgb(255,0,0)"},{"background-color":"transparent",color:"rgb(0,0,0)"});
db["system.blink"].htmlobj.push(onofftextcontrol15);
var onofftextcontrol16=new digitalObj('onofftextcontrol16','就地','远方',{"background-color":"transparent",color:"rgb(255,0,0)"},{"background-color":"transparent",color:"rgb(0,0,0)"});
db["system.blink"].htmlobj.push(onofftextcontrol16);
var onofftextcontrol17=new digitalObj('onofftextcontrol17','就地','远方',{"background-color":"transparent",color:"rgb(255,0,0)"},{"background-color":"transparent",color:"rgb(0,0,0)"});
db["system.blink"].htmlobj.push(onofftextcontrol17);
var tagdatacontrol18=new analogObj('tagdatacontrol18',2,'MJ/m3');
db["system.second"].htmlobj.push(tagdatacontrol18);
var tagdatacontrol19=new analogObj('tagdatacontrol19',2,'KJ/m3');
db["system.second"].htmlobj.push(tagdatacontrol19);
var tagdatacontrol20=new analogObj('tagdatacontrol20',2,'KJ/sm3');
db["system.second"].htmlobj.push(tagdatacontrol20);
var tagdatacontrol21=new analogObj('tagdatacontrol21',0,'');
db["system.datetime"].htmlobj.push(tagdatacontrol21);
var tagdatacontrol29=new analogObj('tagdatacontrol29',0,'%');
db["sim.tank1level"].htmlobj.push(tagdatacontrol29);
var tagdatacontrol30=new analogObj('tagdatacontrol30',0,'');
db["sim.val1"].htmlobj.push(tagdatacontrol30);
var progressbarexcontrol32=new progressbarObj("progressbarexcontrol32_border", "progressbarexcontrol32", true, 100, 0,137,22);
db["system.second"].htmlobj.push(progressbarexcontrol32);
var progressbarexcontrol33=new progressbarObj("progressbarexcontrol33_border", "progressbarexcontrol33", false, 60, 0,18,110);
db["system.second"].htmlobj.push(progressbarexcontrol33);
var onofftextcontrol1=new digitalObj('onofftextcontrol1','','',{"background-color":"rgb(255,0,0)",color:"rgb(0,0,0)"},{"background-color":"transparent",color:"rgb(0,0,0)"});
db["system.blink"].htmlobj.push(onofftextcontrol1);
var onofftextcontrol2=new digitalObj('onofftextcontrol2','','',{"background-color":"rgb(255,0,0)",color:"rgb(0,0,0)"},{"background-color":"transparent",color:"rgb(0,0,0)"});
db["system.blink"].htmlobj.push(onofftextcontrol2);
var onofftextcontrol3=new digitalObj('onofftextcontrol3','','',{"background-color":"rgb(255,0,0)",color:"rgb(0,0,0)"},{"background-color":"transparent",color:"rgb(0,0,0)"});
db["system.blink"].htmlobj.push(onofftextcontrol3);
var onofftextcontrol4=new digitalObj('onofftextcontrol4','','',{"background-color":"rgb(255,0,0)",color:"rgb(0,0,0)"},{"background-color":"transparent",color:"rgb(0,0,0)"});
db["system.blink"].htmlobj.push(onofftextcontrol4);
var onofftextcontrol5=new digitalObj('onofftextcontrol5','','',{"background-color":"rgb(255,0,0)",color:"rgb(0,0,0)"},{"background-color":"transparent",color:"rgb(0,0,0)"});
db["system.blink"].htmlobj.push(onofftextcontrol5);
var onofftextcontrol6=new digitalObj('onofftextcontrol6','','',{"background-color":"rgb(255,0,0)",color:"rgb(0,0,0)"},{"background-color":"transparent",color:"rgb(0,0,0)"});
db["system.blink"].htmlobj.push(onofftextcontrol6);
var onofftextcontrol7=new digitalObj('onofftextcontrol7','','',{"background-color":"rgb(255,0,0)",color:"rgb(0,0,0)"},{"background-color":"transparent",color:"rgb(0,0,0)"});
db["system.blink"].htmlobj.push(onofftextcontrol7);
var onofftextcontrol8=new digitalObj('onofftextcontrol8','','',{"background-color":"rgb(255,0,0)",color:"rgb(0,0,0)"},{"background-color":"transparent",color:"rgb(0,0,0)"});
db["system.blink"].htmlobj.push(onofftextcontrol8);
var javascripttag1=new tagObj('system.second');
javascripttag1.callback=function(tag){
//标签值改变触发Javascript脚本,tag为标签对象,tag.value tag.type tag.tagname tag.state

};
db["system.second"].htmlobj.push(javascripttag1);
var switchimage2=new swimgObj('switchimage2','images/vopen.png','images/vclose.png');
db["sim.val2"].htmlobj.push(switchimage2);
var switchimage3=new swimgObj('switchimage3','images/vopen.png','images/vclose.png');
db["sim.val1"].htmlobj.push(switchimage3);
var switchimage1=new swimgObj('switchimage1','images/vopen.png','images/vclose.png');
db["system.blink"].htmlobj.push(switchimage1);
var switchimage4=new swimgObj('switchimage4','images/vopen.png','images/vclose.png');
db["sim.val3"].htmlobj.push(switchimage4);
var switchimage5=new swimgObj('switchimage5','images/vopen.png','images/vclose.png');
db["system.blink"].htmlobj.push(switchimage5);
$("#combobox4").change(function(){
    var checkValue=$("#combobox4").val();  //获取Select选择的Value
    alert(checkValue);
});//为Select添加事件，当选择其中一项时触发


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF">
<div id="fscada">

<div id="tagdatacontrol1" style="position:absolute;line-height:24px;left:633px;width:63px;height:24px;top:418px;font-family:'微软雅黑','Serif';font-style:normal;font-size:13px;font-weight:bold;color:rgb(0,0,0);" >00.00%</div>
<div id="tagdatacontrol2" style="position:absolute;line-height:24px;left:632px;width:71px;height:24px;top:441px;font-family:'微软雅黑','Serif';font-style:normal;font-size:13px;font-weight:bold;color:rgb(0,0,0);" >0.00MPa</div>
<div id="tagdatacontrol3" style="position:absolute;line-height:24px;left:633px;width:63px;height:24px;top:465px;font-family:'微软雅黑','Serif';font-style:normal;font-size:13px;font-weight:bold;color:rgb(0,0,0);" >0.00℃</div>
<div id="tagdatacontrol4" style="position:absolute;line-height:24px;left:274px;width:79px;height:24px;top:250px;font-family:'微软雅黑','Serif';font-style:normal;font-size:13px;font-weight:bold;color:rgb(0,0,0);" >0.00MPa</div>
<div id="tagdatacontrol5" style="position:absolute;line-height:24px;left:276px;width:63px;height:24px;top:276px;font-family:'微软雅黑','Serif';font-style:normal;font-size:13px;font-weight:bold;color:rgb(0,0,0);" >0.00℃</div>
<div id="tagdatacontrol6" style="position:absolute;line-height:24px;left:364px;width:63px;height:24px;top:126px;font-family:'微软雅黑','Serif';font-style:normal;font-size:13px;font-weight:bold;color:rgb(0,0,0);" >00.00%</div>
<div id="tagdatacontrol7" style="position:absolute;line-height:24px;left:435px;width:69px;height:24px;top:583px;font-family:'微软雅黑','Serif';font-style:normal;font-size:13px;font-weight:bold;color:rgb(0,0,0);" >0.00MPa</div>
<div id="tagdatacontrol8" style="position:absolute;line-height:24px;left:510px;width:63px;height:24px;top:524px;font-family:'微软雅黑','Serif';font-style:normal;font-size:13px;font-weight:bold;color:rgb(0,0,0);" >0.00℃</div>
<div id="tagdatacontrol9" style="position:absolute;line-height:24px;left:409px;width:95px;height:24px;top:498px;font-family:'微软雅黑','Serif';font-style:normal;font-size:13px;font-weight:bold;color:rgb(0,0,0);" >0.00NKm3/h</div>
<div id="tagdatacontrol10" style="position:absolute;line-height:24px;left:409px;width:88px;height:24px;top:521px;font-family:'微软雅黑','Serif';font-style:normal;font-size:13px;font-weight:bold;color:rgb(0,0,0);" >0.00NKm3</div>
<div id="onofftextcontrol11" style="position:absolute;line-height:18px;left:733px;width:33px;height:18px;top:492px;font-family:'微软雅黑','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);" >远方</div>
<div id="onofftextcontrol12" style="position:absolute;line-height:18px;left:524px;width:33px;height:18px;top:440px;font-family:'微软雅黑','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);" >远方</div>
<div id="onofftextcontrol13" style="position:absolute;line-height:18px;left:468px;width:33px;height:18px;top:130px;font-family:'微软雅黑','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);" >远方</div>
<div id="onofftextcontrol14" style="position:absolute;line-height:18px;left:578px;width:33px;height:18px;top:255px;font-family:'微软雅黑','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);" >远方</div>
<div id="onofftextcontrol15" style="position:absolute;line-height:18px;left:281px;width:33px;height:18px;top:176px;font-family:'微软雅黑','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);" >远方</div>
<div id="onofftextcontrol16" style="position:absolute;line-height:18px;left:344px;width:33px;height:18px;top:535px;font-family:'微软雅黑','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);" >远方</div>
<div id="onofftextcontrol17" style="position:absolute;line-height:18px;left:648px;width:33px;height:18px;top:494px;font-family:'微软雅黑','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);" >远方</div>
<div id="label1" style="position:absolute;line-height:58px;left:371px;width:171px;height:58px;top:12px;font-family:'微软雅黑','Serif';font-style:normal;font-size:30px;font-weight:bold;color:rgb(0,0,0);cursor:pointer;" onclick="javascript:label1_js();">系统流程图</div>
<div id="tagdatacontrol18" style="position:absolute;line-height:24px;left:776px;width:98px;height:24px;top:48px;font-family:'微软雅黑','Serif';font-style:normal;font-size:13px;font-weight:bold;color:rgb(0,0,0);" >00.00MJ/m3</div>
<div id="tagdatacontrol19" style="position:absolute;line-height:24px;left:776px;width:90px;height:24px;top:72px;font-family:'微软雅黑','Serif';font-style:normal;font-size:13px;font-weight:bold;color:rgb(0,0,0);" >00.00KJ/m3</div>
<div id="tagdatacontrol20" style="position:absolute;line-height:24px;left:776px;width:96px;height:24px;top:94px;font-family:'微软雅黑','Serif';font-style:normal;font-size:13px;font-weight:bold;color:rgb(0,0,0);" >00.00KJ/sm3</div>
<div id="tagdatacontrol21" style="position:absolute;line-height:27px;left:732px;width:147px;height:27px;top:19px;font-family:'Arial','Serif';font-style:normal;font-size:15px;font-weight:bold;color:rgb(0,0,0);" >2012-12-12 12:00:00</div>
<button id="button22" style="position:absolute;cursor:pointer;left:714px;width:80px;height:30px;top:129px;font-family:'微软雅黑','Serif';font-style:normal;font-size:12px;font-weight:normal;background-color:rgb(221,221,221);color:rgb(0,0,0);" onclick="javascript:button22_js();">数据库</button>
<button id="button23" style="position:absolute;cursor:pointer;left:802px;width:80px;height:30px;top:129px;font-family:'微软雅黑','Serif';font-style:normal;font-size:12px;font-weight:normal;background-color:rgb(221,221,221);color:rgb(0,0,0);" onclick="javascript:button23_js();">主画面</button>
<button id="button24" style="position:absolute;cursor:pointer;left:74px;width:80px;height:30px;top:520px;font-family:'微软雅黑','Serif';font-style:normal;font-size:12px;font-weight:normal;background-color:rgb(221,221,221);color:rgb(0,0,0);" onclick="javascript:button24_js();">写标签</button>
<button id="button25" style="position:absolute;cursor:pointer;left:162px;width:80px;height:30px;top:520px;font-family:'微软雅黑','Serif';font-style:normal;font-size:12px;font-weight:normal;background-color:rgb(221,221,221);color:rgb(0,0,0);" onclick="javascript:button25_js();">标签值++</button>
<button id="button26" style="position:absolute;cursor:pointer;left:75px;width:80px;height:30px;top:483px;font-family:'微软雅黑','Serif';font-style:normal;font-size:12px;font-weight:normal;background-color:rgb(221,221,221);color:rgb(0,0,0);" onclick="javascript:button26_js();">切换标签</button>
<div id="tagdatacontrol29" style="position:absolute;line-height:24px;left:26px;width:49px;height:24px;top:527px;font-family:'微软雅黑','Serif';font-style:normal;font-size:13px;font-weight:bold;color:rgb(0,0,0);" >0%</div>
<div id="tagdatacontrol30" style="position:absolute;line-height:24px;left:32px;width:66px;height:24px;top:488px;font-family:'微软雅黑','Serif';font-style:normal;font-size:13px;font-weight:bold;color:rgb(0,0,0);" >0</div>
<div id="progressbarexcontrol32_border" style="position:absolute;left:737px;top:292px;width:137px;height:22px;border:1px solid rgb(0,0,0);" ><div id="progressbarexcontrol32" style="position:absolute;height:22px;width:0px;background-color:rgb(255,0,0);"></div></div>
<div id="progressbarexcontrol33_border" style="position:absolute;left:782px;top:389px;width:18px;height:110px;border:1px solid rgb(0,0,0);cursor:pointer;" onclick="javascript:progressbarexcontrol33_js();"><div id="progressbarexcontrol33" style="position:absolute;width:18px;height:0px;background-color:rgb(0,255,0);"></div></div>
<div id="onofftextcontrol1" style="position:absolute;line-height:18px;left:48px;width:17px;height:18px;top:234px;font-family:'微软雅黑','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);border:1px solid rgb(0,0,0);" >OFF</div>
<div id="onofftextcontrol2" style="position:absolute;line-height:18px;left:48px;width:17px;height:18px;top:258px;font-family:'微软雅黑','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);border:1px solid rgb(0,0,0);" >OFF</div>
<div id="onofftextcontrol3" style="position:absolute;line-height:18px;left:48px;width:17px;height:18px;top:283px;font-family:'微软雅黑','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);border:1px solid rgb(0,0,0);" >OFF</div>
<div id="onofftextcontrol4" style="position:absolute;line-height:18px;left:48px;width:17px;height:18px;top:308px;font-family:'微软雅黑','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);border:1px solid rgb(0,0,0);" >OFF</div>
<div id="onofftextcontrol5" style="position:absolute;line-height:18px;left:48px;width:17px;height:18px;top:333px;font-family:'微软雅黑','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);border:1px solid rgb(0,0,0);" >OFF</div>
<div id="onofftextcontrol6" style="position:absolute;line-height:18px;left:48px;width:17px;height:18px;top:358px;font-family:'微软雅黑','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);border:1px solid rgb(0,0,0);" >OFF</div>
<div id="onofftextcontrol7" style="position:absolute;line-height:18px;left:48px;width:17px;height:18px;top:383px;font-family:'微软雅黑','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);border:1px solid rgb(0,0,0);" >OFF</div>
<div id="onofftextcontrol8" style="position:absolute;line-height:18px;left:48px;width:17px;height:18px;top:408px;font-family:'微软雅黑','Serif';font-style:normal;font-size:15px;font-weight:normal;color:rgb(0,0,0);border:1px solid rgb(0,0,0);" >OFF</div>
<img id="image2" style="position:absolute;border:0px;left:39px;top:67px;" src="first/1.png" />
<img id="switchimage2" style="position:absolute;border:0px;left:466px;top:148px;width:30px;height:20px;cursor:pointer;" src="images/vopen.png" onclick="javascript:switchimage2_js();"/>
<img id="switchimage3" style="position:absolute;border:0px;left:731px;top:516px;width:30px;height:20px;cursor:pointer;" src="images/vopen.png" onclick="javascript:switchimage3_js();"/>
<img id="switchimage1" style="position:absolute;border:0px;left:522px;top:458px;width:30px;height:20px;" src="images/vopen.png" />
<img id="switchimage4" style="position:absolute;border:0px;left:647px;top:516px;width:30px;height:20px;cursor:pointer;" src="images/vopen.png" onclick="javascript:switchimage4_js();"/>
<img id="switchimage5" style="position:absolute;border:0px;left:342px;top:554px;width:30px;height:20px;" src="images/vopen.png" />
<select id="combobox4" style="position:absolute;left:379px;width:132px;height:24px;top:72px;font-family:'宋体','Serif';font-style:normal;font-size:12px;font-weight:normal;"><option value="item1">item1</option>
<option value="item2"  selected>item2</option>
<option value="item3">item3</option>
<option value="item4">item4</option>
</select>
<iframe src="../alarmview.aspx" id="htmchildcontrol2" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="position:absolute;left:8px;width:882px;height:181px;top:613px;"></iframe>
<input type="text" id="txt" style="position:absolute;left:28px;width:122px;height:27px;top:561px;font-family:'宋体','Serif';font-style:normal;font-size:12px;font-weight:normal;background-color:rgb(255,255,255);color:rgb(0,0,0);"  value=""/>
<button id="button2" style="position:absolute;cursor:pointer;left:164px;width:74px;height:27px;top:561px;font-family:'宋体','Serif';font-style:normal;font-size:12px;font-weight:normal;background-color:rgb(221,221,221);color:rgb(0,0,0);" onclick="javascript:button2_js();">Read</button>

</div>

<script type="text/javascript">    
setInterval(toggle_control, 1000);
function toggle_control(){
$("#image2").toggle();
}

    if (divcenter){
        var mydiv = document.getElementById("fscada");
        mydiv_resize();
        window.onresize = mydiv_resize;
    }
</script>

</body>
</html>
