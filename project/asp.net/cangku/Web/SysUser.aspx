<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SysUser.aspx.cs" Inherits="SysUser" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>系统用户</title>
     <link href="Style/dateshow.css" rel="stylesheet" type="text/css" />
    <link href="Style/Main.css" rel="stylesheet" type="text/css" />
    <script language="javascript" src="Script/Common.js"></script>   
 
</head>
<body>
    <form id="form1" runat="server">
  <table cellpadding="3" cellspacing="0" border="0" width="100%">
        <tr>
        <td>登陆ID：</td>
       <td><asp:TextBox ID="txtUserId" runat="server"></asp:TextBox></td> 
        </tr>
        <tr>
        <td>姓名：</td>
       <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td> 
        </tr>
        <tr>
        <td>密码：</td>
       <td><asp:TextBox ID="txtpassWd" runat="server"></asp:TextBox></td> 
        </tr>
        <tr>
        <td>重复密码：</td>
       <td><asp:TextBox ID="txtRePassWd" runat="server"></asp:TextBox></td> 
        </tr>
       <tr>
        <td>部门：</td>
       <td><asp:DropDownList ID="ddlDspt" runat="server"></asp:DropDownList></td> 
        </tr>
       <tr>
        <td>电话：</td>
       <td><asp:TextBox ID="txtTel" runat="server"></asp:TextBox></td> 
        </tr> 
       <tr>
            <td colspan="2" class="CmdRow">
                <asp:Button ID="BtnSave" runat="server" Text="保存" CssClass="button60" OnClick="BtnSave_Click" />
            </td>
       </tr>     
     </table> 
    </form>
</body>
</html>
