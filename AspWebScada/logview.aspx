<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="logview.aspx.cs" Inherits="WebScada.logview" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="styles/style1.css" rel="stylesheet" />
    <title>系统日志浏览</title>
</head>
    <body leftmargin="1" topmargin="2" rightmargin="0" bottommargin="5">
    <form id="form1" runat="server">
    <table class="bordered" width="100%">
        <asp:Literal ID="logdata" runat="server"></asp:Literal>
    </table>
    </form>
</body>
</html>
