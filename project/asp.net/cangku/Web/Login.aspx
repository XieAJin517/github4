<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 4.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>系统登陆</title>
    <link href="Style/Main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
<div style=" text-align:center; padding-top:5%;">
<asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" UserNameRequiredErrorMessage="必须填写“用户名”" PasswordRequiredErrorMessage="必须填写“密　码”">
 <LayoutTemplate>
    <table cellpadding="0" cellspacing="0" border="0" align="center">
        <tr>
            <td>
                <img src="Images/Login/login_01.gif" alt=""><img src="Images/Login/login_02.gif" alt=""><img src="Images/Login/login_03.gif" alt=""><img src="Images/Login/login_04.gif" alt=""><br>
            </td>
        </tr>
        <tr>
            <td>
                <img src="Images/Login/login_05.gif" alt=""><img src="Images/Login/login_06.gif" alt=""><img src="Images/Login/login_07.gif" alt=""><img src="Images/Login/login_08.gif" alt=""><br>
            </td>
        </tr>
        <tr>
            <td>
                <img src="Images/Login/login_09.gif" alt=""><img src="Images/Login/login_10.gif" alt=""><img src="Images/Login/login_11.gif" alt=""><img src="Images/Login/login_12.gif" alt=""><br>
            </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                    <tr>
                        <td width="176"><img src="Images/Login/login_13.gif" alt="" /></td>
                        <td width="57"><img src="Images/Login/login_14.gif" alt=""></td>
                        <td style="background:url(Images/Login/login_bg.gif) repeat-x; padding-left:20px;" valign="top" align="left">
                            <div style="padding-top:25px;">
		                            <span style="color:#ffffff">用户名：</span>
		                            <asp:TextBox ID="UserName" runat="server" CssClass="logintext" TabIndex="1"></asp:TextBox> <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="登 录" ValidationGroup="Login1" CssClass="lbotton" TabIndex="3"/> <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"  ErrorMessage="必须填写“用户名”" ToolTip="必须填写“用户名”" ValidationGroup="Login1" ForeColor="White">*</asp:RequiredFieldValidator><br />
		                            <p style="margin:2px"></p>
		                            <span style="color:#ffffff">密　码：</span>
		                            <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="logintext" TabIndex="2"></asp:TextBox> <input name="login" type="button" value="退 出" class="lbotton" onclick="window.close()" tabindex="4" /> <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="必须填写“密　码”" ToolTip="必须填写“密　码”" ValidationGroup="Login1" ForeColor="White">*</asp:RequiredFieldValidator><br />
	                            </div> 
                        </td>
                        <td width="176"><img src="Images/Login/login_16.gif" alt=""></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="0" cellspacing="0" border="0" style="width:100%;">
                    <tr>
                        <td width="176"><img src="Images/Login/login_17.gif" width="176" height="94" alt=""></td>
                        <td style="background: url(Images/Login/login_18.gif) repeat-x;width:100%;">&nbsp;
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Login1" ForeColor="#0674CB" />
                        </td>
                        <td width="176" align="right"><img src="Images/Login/login_20.gif" width="176" height="94" alt=""></td>
                    </tr>
                </table>
            </td>
        </tr>
        
    </table> 
  
 </LayoutTemplate>
</asp:Login>
</div> 
    </form>
   <script type="text/javascript">

var oUserId = document.getElementById("Login1_UserName");
var oPwd = document.getElementById("Login1_Password");

window.onload = function()
{
    oUserId.focus();
    oUserId.onkeydown = function ()
    {
    	if(event.keyCode == 13 ) oPwd.focus();
    }
}


</script> 
</body>
</html>
