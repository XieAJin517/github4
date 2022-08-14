<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CommonFrm.aspx.cs" Inherits="CommonFrm" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>请选择</title>
    <link href="Style/Main.css" rel="stylesheet" type="text/css" />
    <link href="Style/dateshow.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <iframe name="CommonFrm" frameborder="0" style="width:100%; height:100%;" id="CommonFrm" src='<asp:Literal ID="SubFrmSrc" runat="server"></asp:Literal>'></iframe>
    </form>
</body>
</html>
