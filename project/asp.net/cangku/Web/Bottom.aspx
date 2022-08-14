<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bottom.aspx.cs" Inherits="Admin_Bottom" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="Style/Main.css" rel="stylesheet" type="text/css" />
    <style>
    .menutext{ 
	COLOR: #333333;
	background:url(Images/contentbarbg.gif) repeat-x;
	height:20px; 
	padding:2 5;
	FILTER:glow(color=ffffff,strength=1) dropshadow(color:#ffffff,offx=1, offy=1, positive=1);
	text-align:center;
}
</style>
    <script language="javascript">
	function switchtopbar(){
		var frmleft1=window.top.document.getElementById("frmtop");
		var switchPoint1=document.getElementById("switchtopimg");
		frmleft1.style.display=frmleft1.style.display==""?"none":"";
		switchPoint1.src=frmleft1.style.display==""?"Images/up.gif":"Images/down.gif";
	}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="menutext">  
        <span id="time"></span>       
        <script>document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());setInterval("document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);</script>
        <asp:Label ID="lblWeek" runat="server" Text=""></asp:Label>&nbsp;
        当前用户：<asp:Label ID="lblUserId" runat="server" Text=""></asp:Label>　
        部门：<asp:Label ID="lblDept" runat="server" Text=""></asp:Label>　
        &nbsp;&nbsp;
       &nbsp; &nbsp;&nbsp;
       建议分辨率：1024*768以上 &nbsp;<a href="http://www.51aspx.com/" target="_blank">download from 51aspx.com</a>

	</div>
    </form>
</body>
</html>
