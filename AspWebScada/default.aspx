<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" EnableViewState="false" Inherits="WebScada._default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="styles/style1.css" rel="stylesheet" />
    <title>WebScada启动画面</title>
    <script type="text/javascript">
        function load()
        {
            location.reload();
            setTimeout("load()", 10000);
        }
        setTimeout("load()", 10000);
    </script>
</head>
<body>
    <h2>WebScada启动画面</h2>
    <form id="form1" runat="server">
        <table class="bordered" width="100%">
            <tr>
                <th width="50">序号</th>
                <th>功能</th>
                <th>状态</th>
            </tr>
            <tr>
                <th>1</th>
                <td>Scada使能状态</td>
                <td>
                    <asp:Label ID="startscada" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <th>2</th>
                <td>IOServer( <asp:Label ID="ioserverport" runat="server" Text="Label"></asp:Label>)</td>
                <td>
                    <asp:Label ID="ioserver" runat="server" Text="Label"></asp:Label></td>
            </tr>

             <tr>
                <th>3</th>
                <td>TCPQuery( <asp:Label ID="tcpqueryport" runat="server" Text="Label"></asp:Label>)</td>
                <td>
                    <asp:Label ID="tcpquery" runat="server" Text="Label"></asp:Label></td>
            </tr>

             <tr>
                <th>4</th>
                <td>标签数据库</td>
                <td>
                  <a href="database.aspx">database.aspx</a></td>
            </tr>

            <tr>
                <th>5</th>
                <td>系统日志</td>
                <td>
                  <a href="logview.aspx">logview.aspx</a></td>
            </tr>

           <tr>
                <th>6</th>
                <td>报警浏览</td>
                <td>
                  <a href="alarmview.aspx?count=20&area=0">alarmview.aspx</a></td>
            </tr>


             <tr>
                <th>7</th>
                <td>实时趋势</td>
                <td>
                  <a href="realtrend.aspx?tags=system.hour,system.minute,system.day&title=实时趋势演示">realtrend.aspx</a></td>
            </tr>


            <tr>
                <th>8</th>
                <td>历史趋势</td>
                <td>
                  <a href="histrend.aspx?tags=sim.flow,sim.tank1level&title=历史趋势演示">histrend.aspx</a></td>
            </tr>

             <tr>
                <th>9</th>
                <td>进入组态画面</td>
                <td>
                  <a href="view/data.html">view/first.aspx</a></td>
            </tr>
	<tr>
                <th>10</th>
                <td>进入集成平台</td>
                <td>
                  <a href="basepint/index.html">view/first.aspx</a></td>
            </tr>

        </table>

        <asp:Label ID="state" runat="server" Text="Label"></asp:Label>
    </form>
    
    <div>
    	
    	
    </div>
    
</body>
</html>
