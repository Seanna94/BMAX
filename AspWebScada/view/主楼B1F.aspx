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
<title>主楼B1F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 46;
db["item1145loopstatus_iopc1_loop_2_48_4_s"]={tagname:"item1145loopstatus_iopc1_loop_2_48_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1144loopstatus_iopc1_loop_2_48_3_s"]={tagname:"item1144loopstatus_iopc1_loop_2_48_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1142loopstatus_iopc1_loop_2_48_1_s"]={tagname:"item1142loopstatus_iopc1_loop_2_48_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1146loopstatus_iopc1_loop_2_48_5_s"]={tagname:"item1146loopstatus_iopc1_loop_2_48_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1143loopstatus_iopc1_loop_2_48_2_s"]={tagname:"item1143loopstatus_iopc1_loop_2_48_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1163loopstatus_iopc1_loop_2_51_2_s"]={tagname:"item1163loopstatus_iopc1_loop_2_51_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1152loopstatus_iopc1_loop_2_49_5_s"]={tagname:"item1152loopstatus_iopc1_loop_2_49_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1151loopstatus_iopc1_loop_2_49_4_s"]={tagname:"item1151loopstatus_iopc1_loop_2_49_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1157loopstatus_iopc1_loop_2_50_4_s"]={tagname:"item1157loopstatus_iopc1_loop_2_50_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1164loopstatus_iopc1_loop_2_51_3_s"]={tagname:"item1164loopstatus_iopc1_loop_2_51_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1287loopstatus_iopc1_loop_4_31_8_s"]={tagname:"item1287loopstatus_iopc1_loop_4_31_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1156loopstatus_iopc1_loop_2_50_3_s"]={tagname:"item1156loopstatus_iopc1_loop_2_50_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1155loopstatus_iopc1_loop_2_50_2_s"]={tagname:"item1155loopstatus_iopc1_loop_2_50_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1137loopstatus_iopc1_loop_2_47_4_s"]={tagname:"item1137loopstatus_iopc1_loop_2_47_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1135loopstatus_iopc1_loop_2_47_2_s"]={tagname:"item1135loopstatus_iopc1_loop_2_47_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1139loopstatus_iopc1_loop_2_47_6_s"]={tagname:"item1139loopstatus_iopc1_loop_2_47_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1136loopstatus_iopc1_loop_2_47_3_s"]={tagname:"item1136loopstatus_iopc1_loop_2_47_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1162loopstatus_iopc1_loop_2_51_1_s"]={tagname:"item1162loopstatus_iopc1_loop_2_51_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1128loopstatus_iopc1_loop_2_46_3_s"]={tagname:"item1128loopstatus_iopc1_loop_2_46_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1127loopstatus_iopc1_loop_2_46_2_s"]={tagname:"item1127loopstatus_iopc1_loop_2_46_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1129loopstatus_iopc1_loop_2_46_4_s"]={tagname:"item1129loopstatus_iopc1_loop_2_46_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1130loopstatus_iopc1_loop_2_46_5_s"]={tagname:"item1130loopstatus_iopc1_loop_2_46_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1126loopstatus_iopc1_loop_2_46_1_s"]={tagname:"item1126loopstatus_iopc1_loop_2_46_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1168loopstatus_iopc1_loop_2_52_1_s"]={tagname:"item1168loopstatus_iopc1_loop_2_52_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1169loopstatus_iopc1_loop_2_52_2_s"]={tagname:"item1169loopstatus_iopc1_loop_2_52_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1176loopstatus_iopc1_loop_2_53_1_s"]={tagname:"item1176loopstatus_iopc1_loop_2_53_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1173loopstatus_iopc1_loop_2_52_6_s"]={tagname:"item1173loopstatus_iopc1_loop_2_52_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1170loopstatus_iopc1_loop_2_52_3_s"]={tagname:"item1170loopstatus_iopc1_loop_2_52_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1172loopstatus_iopc1_loop_2_52_5_s"]={tagname:"item1172loopstatus_iopc1_loop_2_52_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1171loopstatus_iopc1_loop_2_52_4_s"]={tagname:"item1171loopstatus_iopc1_loop_2_52_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1190loopstatus_iopc1_loop_2_55_1_s"]={tagname:"item1190loopstatus_iopc1_loop_2_55_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1184loopstatus_iopc1_loop_2_54_3_s"]={tagname:"item1184loopstatus_iopc1_loop_2_54_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1192loopstatus_iopc1_loop_2_55_3_s"]={tagname:"item1192loopstatus_iopc1_loop_2_55_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1198loopstatus_iopc1_loop_2_56_3_s"]={tagname:"item1198loopstatus_iopc1_loop_2_56_3_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1185loopstatus_iopc1_loop_2_54_4_s"]={tagname:"item1185loopstatus_iopc1_loop_2_54_4_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1189loopstatus_iopc1_loop_2_54_8_s"]={tagname:"item1189loopstatus_iopc1_loop_2_54_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1191loopstatus_iopc1_loop_2_55_2_s"]={tagname:"item1191loopstatus_iopc1_loop_2_55_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1183loopstatus_iopc1_loop_2_54_2_s"]={tagname:"item1183loopstatus_iopc1_loop_2_54_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1196loopstatus_iopc1_loop_2_56_1_s"]={tagname:"item1196loopstatus_iopc1_loop_2_56_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1197loopstatus_iopc1_loop_2_56_2_s"]={tagname:"item1197loopstatus_iopc1_loop_2_56_2_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1186loopstatus_iopc1_loop_2_54_5_s"]={tagname:"item1186loopstatus_iopc1_loop_2_54_5_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1187loopstatus_iopc1_loop_2_54_6_s"]={tagname:"item1187loopstatus_iopc1_loop_2_54_6_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1182loopstatus_iopc1_loop_2_54_1_s"]={tagname:"item1182loopstatus_iopc1_loop_2_54_1_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1188loopstatus_iopc1_loop_2_54_7_s"]={tagname:"item1188loopstatus_iopc1_loop_2_54_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1207loopstatus_iopc1_loop_2_57_8_s"]={tagname:"item1207loopstatus_iopc1_loop_2_57_8_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
db["item1206loopstatus_iopc1_loop_2_57_7_s"]={tagname:"item1206loopstatus_iopc1_loop_2_57_7_s",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};
tagcount = tagcount + 1;
db["地图内容选择"] = {tagname:"地图内容选择",type:"",value:"",state:"0",alarm:0,htmlobj: new Array()};

 function init(){
  for(var i =1;i<=500;i++){
   $("#zm"+i).hide();
   $("#jk"+i).hide();
   $("#door"+i).hide();
  }
  
  if(db["地图内容选择"].value.indexOf("zm") >= 0){
    var id = "zm";
    for(var i =1;i<=500;i++){
      id=id+i;
      $("#"+id).show();
      id="zm";
     }
      
      
      
     }else if(db["地图内容选择"].value.indexOf("jk") >= 0){

   var id = "jk";
   for(var i =1;i<=500;i++){
     id=id+i;
     $("#"+id).show();
     id="jk";
    }
      

    }else if(db["地图内容选择"].value.indexOf("mj") >= 0){

   var id = "door";
   for(var i =1;i<=500;i++){
     id=id+i;
     $("#"+id).show();
     id="door";
   }
  }


 }
    
   
     
  setTimeout(init,100);

$(function(){
   
   
 for(var i = 1;i<=50;i++){
     //呼吸灯
   $("#saddr"+i).mousemove(function(){
     $(this).css("background-color","#000000");
     

            }).mouseout(function(){
    $(this).css("background-color","#0000FF");
    
 
       });
   }  

  });
function j1_js(){
var id = "jk";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="jk";
 }
}
function d1_js(){
var id = "zm";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="zm";
 }
}
function m1_js(){
var id = "door";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="door";
 }
}
function j2_js(){
var id = "jk";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="jk";
 }
}
function j3_js(){
var id = "jk";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="jk";
 }
}
function d2_js(){
var id = "zm";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="zm";
 }
}
function m2_js(){
var id = "door";
for(var i =1;i<=500;i++){
 id=id+i;
 $("#"+id).toggle();
 id="door";
 }
}
function zm1_js(){
writetag("ITEM451LoopControl_IOPC1_LOOP_2_48_4_C","");
}
function zm2_js(){
writetag("ITEM450LoopControl_IOPC1_LOOP_2_48_3_C","");
}
function zm3_js(){
writetag("ITEM448LoopControl_IOPC1_LOOP_2_48_1_C","");
}
function zm4_js(){
writetag("ITEM452LoopControl_IOPC1_LOOP_2_48_5_C","");
}
function zm5_js(){
writetag("ITEM449LoopControl_IOPC1_LOOP_2_48_2_C","");
}
function zm6_js(){
writetag("ITEM469LoopControl_IOPC1_LOOP_2_51_2_C","");
}
function zm7_js(){
writetag("ITEM458LoopControl_IOPC1_LOOP_2_49_5_C","");
}
function zm8_js(){
writetag("ITEM457LoopControl_IOPC1_LOOP_2_49_4_C","");
}
function zm9_js(){
writetag("ITEM463LoopControl_IOPC1_LOOP_2_50_4_C","");
}
function zm10_js(){
writetag("ITEM470LoopControl_IOPC1_LOOP_2_51_3_C","");
}
function zm11_js(){
writetag("ITEM593LoopControl_IOPC1_LOOP_4_31_8_C","");
}
function zm12_js(){
writetag("ITEM462LoopControl_IOPC1_LOOP_2_50_3_C","");
}
function zm13_js(){
writetag("ITEM461LoopControl_IOPC1_LOOP_2_50_2_C","");
}
function zm14_js(){
writetag("ITEM463LoopControl_IOPC1_LOOP_2_50_4_C","");
}
function zm15_js(){
writetag("ITEM443LoopControl_IOPC1_LOOP_2_47_4_C","");
}
function zm16_js(){
writetag("ITEM441LoopControl_IOPC1_LOOP_2_47_2_C","");
}
function zm17_js(){
writetag("ITEM445LoopControl_IOPC1_LOOP_2_47_6_C","");
}
function zm18_js(){
writetag("ITEM442LoopControl_IOPC1_LOOP_2_47_3_C","");
}
function zm19_js(){
writetag("ITEM468LoopControl_IOPC1_LOOP_2_51_1_C","");
}
function zm20_js(){
writetag("ITEM463LoopControl_IOPC1_LOOP_2_50_4_C","");
}
function zm21_js(){
writetag("ITEM461LoopControl_IOPC1_LOOP_2_50_2_C","");
}
function zm22_js(){
writetag("ITEM434LoopControl_IOPC1_LOOP_2_46_3_C","");
}
function zm23_js(){
writetag("ITEM433LoopControl_IOPC1_LOOP_2_46_2_C","");
}
function zm24_js(){
writetag("ITEM435LoopControl_IOPC1_LOOP_2_46_4_C","");
}
function zm25_js(){
writetag("ITEM436LoopControl_IOPC1_LOOP_2_46_5_C","");
}
function zm26_js(){
writetag("ITEM432LoopControl_IOPC1_LOOP_2_46_1_C","");
}
function zm27_js(){
writetag("ITEM435LoopControl_IOPC1_LOOP_2_46_4_C","");
}
function zm28_js(){
writetag("ITEM474LoopControl_IOPC1_LOOP_2_52_1_C","");
}
function zm29_js(){
writetag("ITEM475LoopControl_IOPC1_LOOP_2_52_2_C","");
}
function zm30_js(){
writetag("ITEM482LoopControl_IOPC1_LOOP_2_53_1_C","");
}
function zm31_js(){
writetag("ITEM479LoopControl_IOPC1_LOOP_2_52_6_C","");
}
function zm32_js(){
writetag("ITEM474LoopControl_IOPC1_LOOP_2_52_1_C","");
}
function zm33_js(){
writetag("ITEM476LoopControl_IOPC1_LOOP_2_52_3_C","");
}
function zm34_js(){
writetag("ITEM475LoopControl_IOPC1_LOOP_2_52_2_C","");
}
function zm35_js(){
writetag("ITEM478LoopControl_IOPC1_LOOP_2_52_5_C","");
}
function zm36_js(){
writetag("ITEM477LoopControl_IOPC1_LOOP_2_52_4_C","");
}
function zm37_js(){
writetag("ITEM496LoopControl_IOPC1_LOOP_2_55_1_C","");
}
function zm38_js(){
writetag("ITEM490LoopControl_IOPC1_LOOP_2_54_3_C","");
}
function zm39_js(){
writetag("ITEM498LoopControl_IOPC1_LOOP_2_55_3_C","");
}
function zm40_js(){
writetag("ITEM504LoopControl_IOPC1_LOOP_2_56_3_C","");
}
function zm41_js(){
writetag("ITEM491LoopControl_IOPC1_LOOP_2_54_4_C","");
}
function zm42_js(){
writetag("ITEM495LoopControl_IOPC1_LOOP_2_54_8_C","");
}
function zm43_js(){
writetag("ITEM497LoopControl_IOPC1_LOOP_2_55_2_C","");
}
function zm44_js(){
writetag("ITEM489LoopControl_IOPC1_LOOP_2_54_2_C","");
}
function zm45_js(){
writetag("ITEM502LoopControl_IOPC1_LOOP_2_56_1_C","");
}
function zm46_js(){
writetag("ITEM503LoopControl_IOPC1_LOOP_2_56_2_C","");
}
function zm47_js(){
writetag("ITEM492LoopControl_IOPC1_LOOP_2_54_5_C","");
}
function zm48_js(){
writetag("ITEM493LoopControl_IOPC1_LOOP_2_54_6_C","");
}
function zm49_js(){
writetag("ITEM488LoopControl_IOPC1_LOOP_2_54_1_C","");
}
function zm50_js(){
writetag("ITEM494LoopControl_IOPC1_LOOP_2_54_7_C","");
}
function zm51_js(){
writetag("ITEM513LoopControl_IOPC1_LOOP_2_57_8_C","");
}
function zm52_js(){
writetag("ITEM512LoopControl_IOPC1_LOOP_2_57_7_C","");
}
function jk1_js(){
open_video2("192.168.2.69");
}
function jk2_js(){
open_video2("192.168.2.62");
}
function jk3_js(){
open_video2("192.168.2.63");
}
function jk4_js(){
open_video2("192.168.2.64");
}
function jk5_js(){
open_video2("192.168.2.65");
}
function jk6_js(){
open_video2("192.168.2.67");
}
function jk7_js(){
open_video2("192.168.2.21");
}
function jk8_js(){
open_video2("192.168.2.22");
}
function jk9_js(){
open_video2("192.168.2.66");
}
function jk10_js(){
open_video2("192.168.2.61");
}
function jk11_js(){
open_video2("192.168.2.58");
}
function jk12_js(){
open_video2("192.168.2.68");
}
function jk13_js(){
open_video2("192.168.2.60");
}
function jk14_js(){
open_video2("192.168.2.59");
}
function jk15_js(){
open_video2("192.168.2.71");
}
function jk16_js(){
open_video2("192.168.2.70");
}
function jk17_js(){
open_video2("192.168.2.72");
}
function jk18_js(){
open_video2("192.168.2.75");
}
function jk19_js(){
open_video2("192.168.2.73");
}
function jk20_js(){
open_video2("192.168.2.74");
}
function jk21_js(){
open_video2("192.168.2.76");
}
function jk22_js(){
open_video2("192.168.2.77");
}
function jk23_js(){
open_video2("192.168.2.78");
}
function jk24_js(){
open_video2("192.168.2.79");
}
function jk25_js(){
open_video2("192.168.2.80");
}
function jk26_js(){
open_video2("192.168.2.82");
}
function jk27_js(){
open_video2("192.168.2.88");
}
function jk28_js(){
open_video2("192.168.2.89");
}
function jk29_js(){
open_video2("192.168.2.87");
}
function jk30_js(){
open_video2("192.168.2.86");
}
function jk31_js(){
open_video2("192.168.2.43");
}
function jk32_js(){
open_video2("192.168.2.36");
}
function jk33_js(){
open_video2("192.168.2.35");
}
function jk34_js(){
open_video2("192.168.2.45");
}
function jk35_js(){
open_video2("192.168.2.44");
}
function jk36_js(){
open_video2("192.168.2.46");
}
function jk37_js(){
open_video2("192.168.2.47");
}
function jk38_js(){
open_video2("192.168.2.106");
}
function jk39_js(){
open_video2("192.168.2.107");
}
function jk40_js(){
open_video2("192.168.2.93");
}
function jk41_js(){
open_video2("192.168.2.94");
}
function jk42_js(){
open_video2("192.168.2.99");
}
function jk43_js(){
open_video2("192.168.2.100");
}
function jk44_js(){
open_video2("192.168.2.101");
}
function jk45_js(){
open_video2("192.168.2.102");
}
function jk46_js(){
open_video2("192.168.2.103");
}
function jk47_js(){
open_video2("192.168.2.113");
}
function jk48_js(){
open_video2("192.168.2.109");
}
function jk49_js(){
open_video2("192.168.2.117");
}
function jk50_js(){
open_video2("192.168.2.108");
}
function jk51_js(){
open_video2("192.168.2.111");
}
function jk52_js(){
open_video2("192.168.2.109");
}
function jk53_js(){
open_video2("192.168.2.109");
}
function jk54_js(){
open_video2("192.168.2.109");
}
function jk55_js(){
open_video2("192.168.2.113");
}
function jk56_js(){
open_video2("192.168.2.56");
}
function jk57_js(){
open_video2("192.168.2.53");
}
function jk58_js(){
open_video2("192.168.2.54");
}
function jk59_js(){
open_video2("192.168.2.55");
}
function jk60_js(){
open_video2("192.168.2.51");
}
function jk61_js(){
open_video2("192.168.2.52");
}
function jk62_js(){
open_video2("192.168.2.45");
}
function jk63_js(){
open_video2("192.168.2.46");
}
function jk64_js(){
open_video2("192.168.2.49");
}
function jk65_js(){
open_video2("192.168.2.50");
}
function jk66_js(){
open_video2("192.168.2.44");
}
function jk67_js(){
open_video2("192.168.2.37");
}
function jk68_js(){
open_video2("192.168.2.48");
}
function jk69_js(){
open_video2("192.168.2.57");
}
function jk70_js(){
open_video2("192.168.2.42");
}
function jk71_js(){
open_video2("192.168.2.41");
}
function jk72_js(){
open_video2("192.168.2.39");
}
function jk73_js(){
open_video2("192.168.2.40");
}
function jk74_js(){
open_video2("192.168.2.38");
}
function jk75_js(){
open_video2("192.168.2.33");
}
function jk76_js(){
open_video2("192.168.2.34");
}
function jk77_js(){
open_video2("192.168.2.83");
}
function jk78_js(){
open_video2("192.168.2.84");
}
function jk79_js(){
open_video2("192.168.2.81");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){
var zm1=new swimgObj('zm1','images/light_on.png','images/light_off.png');
db["item1145loopstatus_iopc1_loop_2_48_4_s"].htmlobj.push(zm1);
var zm2=new swimgObj('zm2','images/light_on.png','images/light_off.png');
db["item1144loopstatus_iopc1_loop_2_48_3_s"].htmlobj.push(zm2);
var zm3=new swimgObj('zm3','images/light_on.png','images/light_off.png');
db["item1142loopstatus_iopc1_loop_2_48_1_s"].htmlobj.push(zm3);
var zm4=new swimgObj('zm4','images/light_on.png','images/light_off.png');
db["item1146loopstatus_iopc1_loop_2_48_5_s"].htmlobj.push(zm4);
var zm5=new swimgObj('zm5','images/light_on.png','images/light_off.png');
db["item1143loopstatus_iopc1_loop_2_48_2_s"].htmlobj.push(zm5);
var zm6=new swimgObj('zm6','images/light_on.png','images/light_off.png');
db["item1163loopstatus_iopc1_loop_2_51_2_s"].htmlobj.push(zm6);
var zm7=new swimgObj('zm7','images/light_on.png','images/light_off.png');
db["item1152loopstatus_iopc1_loop_2_49_5_s"].htmlobj.push(zm7);
var zm8=new swimgObj('zm8','images/light_on.png','images/light_off.png');
db["item1151loopstatus_iopc1_loop_2_49_4_s"].htmlobj.push(zm8);
var zm9=new swimgObj('zm9','images/light_on.png','images/light_off.png');
db["item1157loopstatus_iopc1_loop_2_50_4_s"].htmlobj.push(zm9);
var zm10=new swimgObj('zm10','images/light_on.png','images/light_off.png');
db["item1164loopstatus_iopc1_loop_2_51_3_s"].htmlobj.push(zm10);
var zm11=new swimgObj('zm11','images/light_on.png','images/light_off.png');
db["item1287loopstatus_iopc1_loop_4_31_8_s"].htmlobj.push(zm11);
var zm12=new swimgObj('zm12','images/light_on.png','images/light_off.png');
db["item1156loopstatus_iopc1_loop_2_50_3_s"].htmlobj.push(zm12);
var zm13=new swimgObj('zm13','images/light_on.png','images/light_off.png');
db["item1155loopstatus_iopc1_loop_2_50_2_s"].htmlobj.push(zm13);
var zm14=new swimgObj('zm14','images/light_on.png','images/light_off.png');
db["item1157loopstatus_iopc1_loop_2_50_4_s"].htmlobj.push(zm14);
var zm15=new swimgObj('zm15','images/light_on.png','images/light_off.png');
db["item1137loopstatus_iopc1_loop_2_47_4_s"].htmlobj.push(zm15);
var zm16=new swimgObj('zm16','images/light_on.png','images/light_off.png');
db["item1135loopstatus_iopc1_loop_2_47_2_s"].htmlobj.push(zm16);
var zm17=new swimgObj('zm17','images/light_on.png','images/light_off.png');
db["item1139loopstatus_iopc1_loop_2_47_6_s"].htmlobj.push(zm17);
var zm18=new swimgObj('zm18','images/light_on.png','images/light_off.png');
db["item1136loopstatus_iopc1_loop_2_47_3_s"].htmlobj.push(zm18);
var zm19=new swimgObj('zm19','images/light_on.png','images/light_off.png');
db["item1162loopstatus_iopc1_loop_2_51_1_s"].htmlobj.push(zm19);
var zm20=new swimgObj('zm20','images/light_on.png','images/light_off.png');
db["item1157loopstatus_iopc1_loop_2_50_4_s"].htmlobj.push(zm20);
var zm21=new swimgObj('zm21','images/light_on.png','images/light_off.png');
db["item1155loopstatus_iopc1_loop_2_50_2_s"].htmlobj.push(zm21);
var zm22=new swimgObj('zm22','images/light_on.png','images/light_off.png');
db["item1128loopstatus_iopc1_loop_2_46_3_s"].htmlobj.push(zm22);
var zm23=new swimgObj('zm23','images/light_on.png','images/light_off.png');
db["item1127loopstatus_iopc1_loop_2_46_2_s"].htmlobj.push(zm23);
var zm24=new swimgObj('zm24','images/light_on.png','images/light_off.png');
db["item1129loopstatus_iopc1_loop_2_46_4_s"].htmlobj.push(zm24);
var zm25=new swimgObj('zm25','images/light_on.png','images/light_off.png');
db["item1130loopstatus_iopc1_loop_2_46_5_s"].htmlobj.push(zm25);
var zm26=new swimgObj('zm26','images/light_on.png','images/light_off.png');
db["item1126loopstatus_iopc1_loop_2_46_1_s"].htmlobj.push(zm26);
var zm27=new swimgObj('zm27','images/light_on.png','images/light_off.png');
db["item1129loopstatus_iopc1_loop_2_46_4_s"].htmlobj.push(zm27);
var zm28=new swimgObj('zm28','images/light_on.png','images/light_off.png');
db["item1168loopstatus_iopc1_loop_2_52_1_s"].htmlobj.push(zm28);
var zm29=new swimgObj('zm29','images/light_on.png','images/light_off.png');
db["item1169loopstatus_iopc1_loop_2_52_2_s"].htmlobj.push(zm29);
var zm30=new swimgObj('zm30','images/light_on.png','images/light_off.png');
db["item1176loopstatus_iopc1_loop_2_53_1_s"].htmlobj.push(zm30);
var zm31=new swimgObj('zm31','images/light_on.png','images/light_off.png');
db["item1173loopstatus_iopc1_loop_2_52_6_s"].htmlobj.push(zm31);
var zm32=new swimgObj('zm32','images/light_on.png','images/light_off.png');
db["item1168loopstatus_iopc1_loop_2_52_1_s"].htmlobj.push(zm32);
var zm33=new swimgObj('zm33','images/light_on.png','images/light_off.png');
db["item1170loopstatus_iopc1_loop_2_52_3_s"].htmlobj.push(zm33);
var zm34=new swimgObj('zm34','images/light_on.png','images/light_off.png');
db["item1169loopstatus_iopc1_loop_2_52_2_s"].htmlobj.push(zm34);
var zm35=new swimgObj('zm35','images/light_on.png','images/light_off.png');
db["item1172loopstatus_iopc1_loop_2_52_5_s"].htmlobj.push(zm35);
var zm36=new swimgObj('zm36','images/light_on.png','images/light_off.png');
db["item1171loopstatus_iopc1_loop_2_52_4_s"].htmlobj.push(zm36);
var zm37=new swimgObj('zm37','images/light_on.png','images/light_off.png');
db["item1190loopstatus_iopc1_loop_2_55_1_s"].htmlobj.push(zm37);
var zm38=new swimgObj('zm38','images/light_on.png','images/light_off.png');
db["item1184loopstatus_iopc1_loop_2_54_3_s"].htmlobj.push(zm38);
var zm39=new swimgObj('zm39','images/light_on.png','images/light_off.png');
db["item1192loopstatus_iopc1_loop_2_55_3_s"].htmlobj.push(zm39);
var zm40=new swimgObj('zm40','images/light_on.png','images/light_off.png');
db["item1198loopstatus_iopc1_loop_2_56_3_s"].htmlobj.push(zm40);
var zm41=new swimgObj('zm41','images/light_on.png','images/light_off.png');
db["item1185loopstatus_iopc1_loop_2_54_4_s"].htmlobj.push(zm41);
var zm42=new swimgObj('zm42','images/light_on.png','images/light_off.png');
db["item1189loopstatus_iopc1_loop_2_54_8_s"].htmlobj.push(zm42);
var zm43=new swimgObj('zm43','images/light_on.png','images/light_off.png');
db["item1191loopstatus_iopc1_loop_2_55_2_s"].htmlobj.push(zm43);
var zm44=new swimgObj('zm44','images/light_on.png','images/light_off.png');
db["item1183loopstatus_iopc1_loop_2_54_2_s"].htmlobj.push(zm44);
var zm45=new swimgObj('zm45','images/light_on.png','images/light_off.png');
db["item1196loopstatus_iopc1_loop_2_56_1_s"].htmlobj.push(zm45);
var zm46=new swimgObj('zm46','images/light_on.png','images/light_off.png');
db["item1197loopstatus_iopc1_loop_2_56_2_s"].htmlobj.push(zm46);
var zm47=new swimgObj('zm47','images/light_on.png','images/light_off.png');
db["item1186loopstatus_iopc1_loop_2_54_5_s"].htmlobj.push(zm47);
var zm48=new swimgObj('zm48','images/light_on.png','images/light_off.png');
db["item1187loopstatus_iopc1_loop_2_54_6_s"].htmlobj.push(zm48);
var zm49=new swimgObj('zm49','images/light_on.png','images/light_off.png');
db["item1182loopstatus_iopc1_loop_2_54_1_s"].htmlobj.push(zm49);
var zm50=new swimgObj('zm50','images/light_on.png','images/light_off.png');
db["item1188loopstatus_iopc1_loop_2_54_7_s"].htmlobj.push(zm50);
var zm51=new swimgObj('zm51','images/light_on.png','images/light_off.png');
db["item1207loopstatus_iopc1_loop_2_57_8_s"].htmlobj.push(zm51);
var zm52=new swimgObj('zm52','images/light_on.png','images/light_off.png');
db["item1206loopstatus_iopc1_loop_2_57_7_s"].htmlobj.push(zm52);


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/主楼B1F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼B1F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:1865px;height:996px;" src="images/B1F.jpg" />
<img id="j1" style="position:absolute;border:0px;left:2304px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j1_js();"/>
<img id="d1" style="position:absolute;border:0px;left:2384px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d1_js();"/>
<img id="m1" style="position:absolute;border:0px;left:2232px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m1_js();"/>
<img id="j2" style="position:absolute;border:0px;left:2320px;top:120px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j2_js();"/>
<img id="j3" style="position:absolute;border:0px;left:1296px;top:24px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:j3_js();"/>
<img id="d2" style="position:absolute;border:0px;left:1376px;top:24px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:d2_js();"/>
<img id="m2" style="position:absolute;border:0px;left:1224px;top:25px;width:30px;height:30px;cursor:pointer;" src="images/door_km.gif" onclick="javascript:m2_js();"/>
<img id="zm1" style="position:absolute;border:0px;left:216px;top:432px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm1_js();" title="2-48-4"/>
<img id="zm2" style="position:absolute;border:0px;left:208px;top:408px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm2_js();" title="2-48-3"/>
<img id="zm3" style="position:absolute;border:0px;left:272px;top:440px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm3_js();" title="2-48-1"/>
<img id="zm4" style="position:absolute;border:0px;left:408px;top:432px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm4_js();" title="2-48-5"/>
<img id="zm5" style="position:absolute;border:0px;left:344px;top:440px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm5_js();" title="2-48-2"/>
<img id="zm6" style="position:absolute;border:0px;left:184px;top:512px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm6_js();" title="2-51-2"/>
<img id="zm7" style="position:absolute;border:0px;left:240px;top:584px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm7_js();" title="2-49-5"/>
<img id="zm8" style="position:absolute;border:0px;left:168px;top:616px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm8_js();" title="2-49-4"/>
<img id="zm9" style="position:absolute;border:0px;left:232px;top:760px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm9_js();" title="2-50-4"/>
<img id="zm10" style="position:absolute;border:0px;left:408px;top:712px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm10_js();" title="2-51-3"/>
<img id="zm11" style="position:absolute;border:0px;left:256px;top:672px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm11_js();" title="2-50-5"/>
<img id="zm12" style="position:absolute;border:0px;left:320px;top:672px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm12_js();" title="2-50-3"/>
<img id="zm13" style="position:absolute;border:0px;left:504px;top:552px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm13_js();" title="2-50-2"/>
<img id="zm14" style="position:absolute;border:0px;left:496px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm14_js();" title="2-50-4"/>
<img id="zm15" style="position:absolute;border:0px;left:416px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm15_js();" title="2-47-4"/>
<img id="zm16" style="position:absolute;border:0px;left:528px;top:472px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm16_js();" title="2-47-2"/>
<img id="zm17" style="position:absolute;border:0px;left:632px;top:536px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm17_js();" title="2-47-6"/>
<img id="zm18" style="position:absolute;border:0px;left:624px;top:608px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm18_js();" title="2-47-3"/>
<img id="zm19" style="position:absolute;border:0px;left:456px;top:624px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm19_js();" title="2-51-1"/>
<img id="zm20" style="position:absolute;border:0px;left:400px;top:552px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm20_js();" title="2-50-4"/>
<img id="zm21" style="position:absolute;border:0px;left:392px;top:600px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm21_js();" title="2-50-2"/>
<img id="zm22" style="position:absolute;border:0px;left:680px;top:632px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm22_js();" title="2-46-3"/>
<img id="zm23" style="position:absolute;border:0px;left:720px;top:640px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm23_js();" title="2-46-2"/>
<img id="zm24" style="position:absolute;border:0px;left:928px;top:568px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm24_js();" title="2-46-4"/>
<img id="zm25" style="position:absolute;border:0px;left:912px;top:536px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm25_js();" title="2-46-5"/>
<img id="zm26" style="position:absolute;border:0px;left:704px;top:504px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm26_js();" title="2-46-1"/>
<img id="zm27" style="position:absolute;border:0px;left:752px;top:536px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm27_js();" title="2-46-4"/>
<img id="zm28" style="position:absolute;border:0px;left:1032px;top:496px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm28_js();" title="2-52-1"/>
<img id="zm29" style="position:absolute;border:0px;left:1032px;top:560px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm29_js();" title="2-52-2"/>
<img id="zm30" style="position:absolute;border:0px;left:1136px;top:512px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm30_js();" title="2-53-1"/>
<img id="zm31" style="position:absolute;border:0px;left:1136px;top:536px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm31_js();" title="2-52-6"/>
<img id="zm32" style="position:absolute;border:0px;left:1128px;top:584px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm32_js();" title="2-52-1"/>
<img id="zm33" style="position:absolute;border:0px;left:1240px;top:584px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm33_js();" title="2-52-3"/>
<img id="zm34" style="position:absolute;border:0px;left:1112px;top:632px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm34_js();" title="2-52-2"/>
<img id="zm35" style="position:absolute;border:0px;left:1144px;top:672px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm35_js();" title="2-52-5"/>
<img id="zm36" style="position:absolute;border:0px;left:1248px;top:672px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm36_js();" title="2-52-4"/>
<img id="zm37" style="position:absolute;border:0px;left:1360px;top:672px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm37_js();" title="2-55-1"/>
<img id="zm38" style="position:absolute;border:0px;left:1448px;top:664px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm38_js();" title="2-54-3"/>
<img id="zm39" style="position:absolute;border:0px;left:1640px;top:728px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm39_js();" title="2-55-3"/>
<img id="zm40" style="position:absolute;border:0px;left:1472px;top:632px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm40_js();" title="2-56-3"/>
<img id="zm41" style="position:absolute;border:0px;left:1384px;top:536px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm41_js();" title="2-54-4"/>
<img id="zm42" style="position:absolute;border:0px;left:1400px;top:616px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm42_js();" title="2-54-8"/>
<img id="zm43" style="position:absolute;border:0px;left:1496px;top:504px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm43_js();" title="2-55-2"/>
<img id="zm44" style="position:absolute;border:0px;left:1504px;top:560px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm44_js();" title="2-54-2"/>
<img id="zm45" style="position:absolute;border:0px;left:1568px;top:488px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm45_js();" title="2-56-1"/>
<img id="zm46" style="position:absolute;border:0px;left:1584px;top:544px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm46_js();" title="2-56-2"/>
<img id="zm47" style="position:absolute;border:0px;left:1304px;top:432px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm47_js();" title="2-54-5"/>
<img id="zm48" style="position:absolute;border:0px;left:1408px;top:480px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm48_js();" title="2-54-6"/>
<img id="zm49" style="position:absolute;border:0px;left:1328px;top:368px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm49_js();" title="2-54-1"/>
<img id="zm50" style="position:absolute;border:0px;left:1400px;top:368px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm50_js();" title="2-54-7"/>
<img id="zm51" style="position:absolute;border:0px;left:1448px;top:408px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm51_js();" title="2-57-8"/>
<img id="zm52" style="position:absolute;border:0px;left:1520px;top:408px;width:29px;height:29px;cursor:pointer;" src="images/light_on.png" onclick="javascript:zm52_js();" title="2-57-7"/>
<img id="jk1" style="position:absolute;border:0px;left:248px;top:736px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk1_js();"/>
<img id="jk2" style="position:absolute;border:0px;left:152px;top:696px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk2_js();"/>
<img id="jk3" style="position:absolute;border:0px;left:168px;top:672px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk3_js();"/>
<img id="jk4" style="position:absolute;border:0px;left:224px;top:664px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk4_js();"/>
<img id="jk5" style="position:absolute;border:0px;left:384px;top:648px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk5_js();"/>
<img id="jk6" style="position:absolute;border:0px;left:448px;top:672px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk6_js();"/>
<img id="jk7" style="position:absolute;border:0px;left:496px;top:648px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk7_js();"/>
<img id="jk8" style="position:absolute;border:0px;left:616px;top:672px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk8_js();"/>
<img id="jk9" style="position:absolute;border:0px;left:384px;top:696px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk9_js();"/>
<img id="jk10" style="position:absolute;border:0px;left:232px;top:632px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk10_js();"/>
<img id="jk11" style="position:absolute;border:0px;left:208px;top:520px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk11_js();"/>
<img id="jk12" style="position:absolute;border:0px;left:240px;top:520px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk12_js();"/>
<img id="jk13" style="position:absolute;border:0px;left:352px;top:523px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk13_js();"/>
<img id="jk14" style="position:absolute;border:0px;left:298px;top:491px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk14_js();"/>
<img id="jk15" style="position:absolute;border:0px;left:232px;top:448px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk15_js();"/>
<img id="jk16" style="position:absolute;border:0px;left:200px;top:448px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk16_js();"/>
<img id="jk17" style="position:absolute;border:0px;left:256px;top:416px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk17_js();"/>
<img id="jk18" style="position:absolute;border:0px;left:275px;top:467px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk18_js();"/>
<img id="jk19" style="position:absolute;border:0px;left:312px;top:424px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk19_js();"/>
<img id="jk20" style="position:absolute;border:0px;left:360px;top:424px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk20_js();"/>
<img id="jk21" style="position:absolute;border:0px;left:404px;top:477px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk21_js();"/>
<img id="jk22" style="position:absolute;border:0px;left:400px;top:512px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk22_js();"/>
<img id="jk23" style="position:absolute;border:0px;left:432px;top:440px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk23_js();"/>
<img id="jk24" style="position:absolute;border:0px;left:432px;top:416px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk24_js();"/>
<img id="jk25" style="position:absolute;border:0px;left:504px;top:456px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk25_js();"/>
<img id="jk26" style="position:absolute;border:0px;left:632px;top:440px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk26_js();"/>
<img id="jk27" style="position:absolute;border:0px;left:648px;top:368px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk27_js();"/>
<img id="jk28" style="position:absolute;border:0px;left:704px;top:365px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk28_js();"/>
<img id="jk29" style="position:absolute;border:0px;left:544px;top:376px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk29_js();"/>
<img id="jk30" style="position:absolute;border:0px;left:544px;top:344px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk30_js();"/>
<img id="jk31" style="position:absolute;border:0px;left:904px;top:368px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk31_js();"/>
<img id="jk32" style="position:absolute;border:0px;left:912px;top:448px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk32_js();"/>
<img id="jk33" style="position:absolute;border:0px;left:808px;top:440px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk33_js();"/>
<img id="jk34" style="position:absolute;border:0px;left:1024px;top:368px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk34_js();"/>
<img id="jk35" style="position:absolute;border:0px;left:1024px;top:400px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk35_js();"/>
<img id="jk36" style="position:absolute;border:0px;left:1072px;top:392px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk36_js();"/>
<img id="jk37" style="position:absolute;border:0px;left:1096px;top:368px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk37_js();"/>
<img id="jk38" style="position:absolute;border:0px;left:1200px;top:392px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk38_js();"/>
<img id="jk39" style="position:absolute;border:0px;left:1256px;top:368px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk39_js();"/>
<img id="jk40" style="position:absolute;border:0px;left:1296px;top:352px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk40_js();"/>
<img id="jk41" style="position:absolute;border:0px;left:1304px;top:376px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk41_js();"/>
<img id="jk42" style="position:absolute;border:0px;left:1368px;top:392px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk42_js();"/>
<img id="jk43" style="position:absolute;border:0px;left:1488px;top:408px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk43_js();"/>
<img id="jk44" style="position:absolute;border:0px;left:1584px;top:432px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk44_js();"/>
<img id="jk45" style="position:absolute;border:0px;left:1616px;top:480px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk45_js();"/>
<img id="jk46" style="position:absolute;border:0px;left:1576px;top:520px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk46_js();"/>
<img id="jk47" style="position:absolute;border:0px;left:1656px;top:624px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk47_js();"/>
<img id="jk48" style="position:absolute;border:0px;left:1600px;top:616px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk48_js();"/>
<img id="jk49" style="position:absolute;border:0px;left:1520px;top:584px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk49_js();"/>
<img id="jk50" style="position:absolute;border:0px;left:1496px;top:624px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk50_js();"/>
<img id="jk51" style="position:absolute;border:0px;left:1640px;top:672px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk51_js();"/>
<img id="jk52" style="position:absolute;border:0px;left:1608px;top:760px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk52_js();"/>
<img id="jk53" style="position:absolute;border:0px;left:1472px;top:736px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk53_js();"/>
<img id="jk54" style="position:absolute;border:0px;left:1560px;top:736px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk54_js();"/>
<img id="jk55" style="position:absolute;border:0px;left:1384px;top:672px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk55_js();"/>
<img id="jk56" style="position:absolute;border:0px;left:1208px;top:672px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk56_js();"/>
<img id="jk57" style="position:absolute;border:0px;left:1160px;top:600px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk57_js();"/>
<img id="jk58" style="position:absolute;border:0px;left:1200px;top:592px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk58_js();"/>
<img id="jk59" style="position:absolute;border:0px;left:1264px;top:584px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk59_js();"/>
<img id="jk60" style="position:absolute;border:0px;left:1040px;top:624px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk60_js();"/>
<img id="jk61" style="position:absolute;border:0px;left:1040px;top:664px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk61_js();"/>
<img id="jk62" style="position:absolute;border:0px;left:912px;top:624px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk62_js();"/>
<img id="jk63" style="position:absolute;border:0px;left:912px;top:672px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk63_js();"/>
<img id="jk64" style="position:absolute;border:0px;left:984px;top:624px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk64_js();"/>
<img id="jk65" style="position:absolute;border:0px;left:992px;top:688px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk65_js();"/>
<img id="jk66" style="position:absolute;border:0px;left:904px;top:560px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk66_js();"/>
<img id="jk67" style="position:absolute;border:0px;left:1032px;top:520px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk67_js();"/>
<img id="jk68" style="position:absolute;border:0px;left:1112px;top:512px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk68_js();"/>
<img id="jk69" style="position:absolute;border:0px;left:1224px;top:536px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk69_js();"/>
<img id="jk70" style="position:absolute;border:0px;left:984px;top:512px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk70_js();"/>
<img id="jk71" style="position:absolute;border:0px;left:920px;top:512px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk71_js();"/>
<img id="jk72" style="position:absolute;border:0px;left:864px;top:504px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk72_js();"/>
<img id="jk73" style="position:absolute;border:0px;left:848px;top:536px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk73_js();"/>
<img id="jk74" style="position:absolute;border:0px;left:800px;top:520px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk74_js();"/>
<img id="jk75" style="position:absolute;border:0px;left:680px;top:528px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk75_js();"/>
<img id="jk76" style="position:absolute;border:0px;left:635px;top:508px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk76_js();"/>
<img id="jk77" style="position:absolute;border:0px;left:672px;top:464px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk77_js();"/>
<img id="jk78" style="position:absolute;border:0px;left:632px;top:472px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk78_js();"/>
<img id="jk79" style="position:absolute;border:0px;left:504px;top:496px;width:30px;height:30px;cursor:pointer;" src="images/qj.gif" onclick="javascript:jk79_js();"/>

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
