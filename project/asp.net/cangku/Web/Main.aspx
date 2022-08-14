<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>系统管理</title>
    <link href="Style/Main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
  <table style="width: 100%; height: 100%; table-layout: fixed" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td height="31">
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
				<td class="TopLeft"><span class="TopInfo"><asp:Literal ID="txtStf" runat="server"></asp:Literal></span></td>
				<td class="TopBg">
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td class="TopAle" nowrap></td>
							<td class="TopTxt" nowrap><a href="Desktop.aspx" target="MainFrame">桌面</a></td>
							<td class="TopAle" nowrap></td>
							<td class="TopTxt" nowrap><a href="javascript:history.go(-1);">后退</a></td>  
							<td class="TopAle" nowrap></td>
							<td class="TopTxt" nowrap><a href="javascript:history.go(1);">前进</a></td>
							<td class="TopAle" nowrap></td>
							<td class="TopTxt" nowrap><a href="Logout.aspx" target="MainFrame">注销</a></td>
							<td class="TopAle" nowrap></td>
							<td class="TopTxt" nowrap><a href="javascript:if(confirm('你确定要退出本系统吗?'))window.close();">退出</a></td>
						</tr>
					</table>		
				</td>
				<td class="TopRightImg"></td>
				<td class="TopRightBg"></td>
			</tr>
		</table>
		</td>
	</tr>
	<tr >
		<td>
			<table cellpadding="0" cellspacing="0" border="0" width="100%" height="100%">
				<tr>
					<td style="width:140px; vertical-align:top; background:#E7F5FD;" id="frmleft"><iframe src="MenuTree.aspx" style="width: 100%; height: 100%" frameborder="0"></iframe></td>
					<td style="width:6px; background:url(Images/switchbg.gif); vertical-align:middle; white-space:nowrap;"  id="splitBar">
						<img src="Images/splitBar.gif" id="switchPoint" onClick="switchSysBar()" style="CURSOR:hand" title="关闭/打开左边导航栏">
					</td>
					<td>
						<table cellpadding="0" cellspacing="0" border="0" height="100%" width="100%">
							<tr>								
								<td>
									<iframe name="MainFrame" id="mainfrm" src="Desktop.aspx" style="width: 100%; height: 100%; " frameborder="0"> </iframe>
								</td>
							</tr>
							<tr>
		                     <td height="20px">
		 	                    <iframe src="Bottom.aspx" scrolling="no" style="width: 100%; height:20px" frameborder="0"> </iframe>
		                    </td>
	                    </tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	
  </table>
</form>
<script language="javascript">
    if(window.top.location.href != window.location.href)
    {
        window.top.location.href = window.location.href;
    }
	function switchSysBar(){
		var frmleft1=document.getElementById("frmleft");
		var switchPoint1=document.getElementById("switchPoint");
		frmleft1.style.display=frmleft1.style.display==""?"none":"";
		switchPoint1.src=frmleft1.style.display==""?"Images/splitBar.gif":"Images/splitBar2.gif";
	}	
</script>
</body>
</html>
