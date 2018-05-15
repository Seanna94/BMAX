<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="alarmview.aspx.cs" Inherits="WebScada.alarmview" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="js/jquery.min.js"></script>
    <link href="styles/style1.css" rel="stylesheet" />
    <title>报警浏览</title>
      <asp:Literal ID="headscript" runat="server"></asp:Literal>

    <script type="text/javascript">
        $(document).ready(function () {
          //$("#dt").freezeHeader();
            getpostvalues(true);
        });

        var alarm_area = 0;
        var timer = null;
        <%
        if (Request.QueryString["area"] != null)
        {
            int a = 0;
            if (int.TryParse(Request.QueryString["area"], out a))
                Response.Write("alarm_area=" + a.ToString()+";");
        }
        %>
        function ack(id) {
            if (timer != null)
                clearTimeout(timer);
            $.post("getrealalarms.ashx", { ack: id, count: acount, area: alarm_area }, function (data) {
                timer = setTimeout("getpostvalues(true);", 5000);
                ParseData(data);
            });
        }

        function ParseData(data) {
            if (data.count > 0) {
                var rows = data.values;
                var s = "";
                for (var i in rows) {
                    if (i < acount) {
                        var tag = rows[i];
                        //name value stime etime state desc ack
                        if (tag.state == "Noraml" || tag.ack == 0) {
                            s = "<a title='确认报警' href='javascript:ack(" + tag.id + ");'>" + tag.name  +  "</a>";
                            $("#name" + i.toString()).html(s);
                        }
                        else
                            $("#name" + i.toString()).html(tag.name);

                        $("#value" + i.toString()).html(tag.value);
                        $("#stime" + i.toString()).html(tag.stime);
                        $("#etime" + i.toString()).html(tag.etime);
                        $("#state" + i.toString()).html(tag.state);
                        $("#desc" + i.toString()).html(tag.desc);
                        $("#row" + i.toString()).css("background", getcolor(tag.state));
                    }
                }
            }
            if (data.count < acount) {
                for (var i = data.count; i < acount; i++) {
                    $("#name" + i.toString()).html("&nbsp;");
                    $("#value" + i.toString()).html("&nbsp;");
                    $("#stime" + i.toString()).html("&nbsp;");
                    $("#etime" + i.toString()).html("&nbsp;");
                    $("#state" + i.toString()).html("&nbsp;");
                    $("#desc" + i.toString()).html("&nbsp;");
                    $("#row" + i.toString()).css("background", "white");
                }
            }
        }

        function getpostvalues(cycle) {
            $.post("getrealalarms.ashx", { count: acount, area: alarm_area }, function (data) {
                ParseData(data);
                if (cycle)
                    timer =  setTimeout("getpostvalues(true);", 5000);
            }
            , "json");                      
        }

        function getcolor(s) {
            if (s == "HI" || s == "HIHI") {
                return "red";
            }
            else if (s == "LO" || s == "LOLO") {
                return "Lime";
            }
            else if (s == "Normal")
                return "white";
            else
                return "red";
        }
    </script>
</head>
    <body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0">
    <form id="form1" runat="server">
    <table class="bordered" width="100%">
      <thead>
          <tr>
              <th width="15%" title="确认全部报警">[<a  style="color:black;" href="javascript:ack(0);">报警确认</a>]</th>
              <th width="10%">当前值</th>
              <th width="15%">开始时间</th>
              <th width="15%">结束时间</th>
              <th width="10%">状态</th>
              <th width="30%">描述</th>
          </tr>
      </thead>
        <tbody>
             <asp:Literal ID="alarmdata" runat="server"></asp:Literal>
        </tbody>
    </table>
    </form>
</body>
</html>
