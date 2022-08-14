<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CorpEdit.aspx.cs" Inherits="CorpEdit" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>往来单位编辑</title>
    <link href="Style/dateshow.css" rel="stylesheet" type="text/css" />
    <link href="Style/Main.css" rel="stylesheet" type="text/css" />
    <script language="javascript" src="Script/Common.js"></script>   
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="0" cellspacing="0" border="0" class="TabFix">
    <tr>
    <td valign="top">
   <div class="Sdiv">
   <table cellpadding="3" cellspacing="0" border="0" width="100%">
    <tr>
       <td>公司名：</td>
       <td width="45%">
       <asp:TextBox ID="txtCorpName" runat="server" Width="200px"></asp:TextBox>
       <asp:RequiredFieldValidator ID="Rv1" ControlToValidate="txtCorpName" runat="server" Text="不能为空" Display="dynamic"></asp:RequiredFieldValidator>
       </td>
       <td>联系电话：</td>
       <td width="45%"><asp:TextBox ID="txtTelephone" runat="server" Width="200px"></asp:TextBox></td> 
    </tr>
   <tr>
       <td>联系人：</td>
       <td><asp:TextBox ID="txtLinkman" runat="server" Width="200px"></asp:TextBox></td>
       <td>手机：</td>
       <td><asp:TextBox ID="txtHandset" runat="server" Width="200px"></asp:TextBox></td> 
    </tr>
   <tr>
       <td>E-Mail：</td>
       <td><asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox></td>
       <td>职务：</td>
       <td><asp:TextBox ID="txtBusiness" runat="server" Width="200px"></asp:TextBox></td> 
    </tr>
   <tr>
       <td>数字码：</td>
       <td><asp:TextBox ID="txtNumCode" runat="server" Width="200px"></asp:TextBox></td>
       <td>拼音码：</td>
       <td><asp:TextBox ID="txtPyCode" runat="server" Width="200px"></asp:TextBox></td> 
    </tr>
   <tr>
       <td>传真：</td>
       <td><asp:TextBox ID="txtFax" runat="server" Width="200px"></asp:TextBox></td>
       <td>邮编：</td>
       <td><asp:TextBox ID="txtPostCode" runat="server" Width="200px"></asp:TextBox></td> 
    </tr> 
   
   <tr>
       <td nowrap="nowrap">公司类别：</td>
       <td><asp:DropDownList ID="ddlCorpKind" runat="server"></asp:DropDownList></td>
       <td  nowrap="nowrap">信誉程度：</td>
       <td><asp:DropDownList ID="ddlCreditLevel" runat="server"></asp:DropDownList></td> 
    </tr>
   <tr>
       <td>所属区域：</td>
       <td><asp:DropDownList ID="ddlCorpArea" runat="server"></asp:DropDownList></td>
       <td>公司网站：</td>
       <td><asp:TextBox ID="txtWeb" runat="server" Width="200px"></asp:TextBox></td> 
    </tr> 
    <tr>
       <td>公司地址</td>
       <td colspan="3"><asp:TextBox ID="txtCorpAdd" runat="server" Width="500px"></asp:TextBox></td> 
    </tr>       
   <tr>
       <td>备注：</td>
       <td colspan="3"><asp:TextBox ID="txtDspt" runat="server" TextMode="MultiLine" Width="500px" Height="60px"></asp:TextBox></td>
    </tr>     
   </table>
   </div> 
   </td>
   </tr>
   <tr>
    <td class="CmdRow">
        <asp:Button ID="BtnSave" CssClass="button60" runat="server" Text="保存" OnClick="BtnSave_Click" />
        <input id="Button2" type="button" class="button60" onclick="location.href='CorpList.aspx';" value="返回列表" /> 
    </td>
   </tr>
   </table>  
    </form>
</body>
</html>
