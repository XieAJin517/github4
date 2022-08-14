<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductEdit.aspx.cs" Inherits="ProductEdit" %>
<%@ Register TagPrefix="CE" Namespace="CuteEditor" Assembly="CuteEditor" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>产品编辑</title>
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
        <td >产品名称：</td>
        <td>
            <asp:TextBox ID="txtProName" runat="server" Width="400px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProName">产品名称不能为空</asp:RequiredFieldValidator>
        </td>
    </tr>
   <tr>
        <td>产品价格：</td>
        <td><asp:TextBox ID="txtPriceNum" runat="server" Width="200" ></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" MaximumValue="999999" MinimumValue="0" ControlToValidate="txtPriceNum" runat="server" ErrorMessage="请输入正确的价格(应全为数字)" Display="Dynamic" Type="Integer"></asp:RangeValidator> 
        </td>
    </tr> 
    <tr>
        <td>所属分类：</td>
        <td><asp:DropDownList ID="ddlProClass" runat="server"></asp:DropDownList></td>
    </tr> 
     <tr>
        <td>数字码：</td>
        <td><asp:TextBox ID="txtNumCode" runat="server" Width="200"></asp:TextBox></td>
    </tr> 
    <tr>
        <td>拼音码：</td>
        <td><asp:TextBox ID="txtPayCode" runat="server" Width="200"></asp:TextBox></td>
    </tr>  
   <tr>
        <td>规格：</td>
        <td><asp:TextBox ID="txtSpes" runat="server" Width="200"></asp:TextBox></td>
    </tr>
   <tr>
        <td>单位：</td>
        <td><asp:DropDownList ID="ddlUnit" runat="server">
            <asp:ListItem>台</asp:ListItem>
            <asp:ListItem>件</asp:ListItem>
            <asp:ListItem>个</asp:ListItem>
            <asp:ListItem>套</asp:ListItem>
            <asp:ListItem>块</asp:ListItem>
            <asp:ListItem>盒</asp:ListItem>
            <asp:ListItem>只</asp:ListItem>
            <asp:ListItem>条</asp:ListItem>
            <asp:ListItem>箱</asp:ListItem>
            <asp:ListItem>把</asp:ListItem>
            <asp:ListItem>对</asp:ListItem>
            <asp:ListItem>桶</asp:ListItem>
            <asp:ListItem>辆</asp:ListItem>
           <asp:ListItem>PCS</asp:ListItem>  
        </asp:DropDownList></td>
    </tr>  
    <tr>
    <td colspan="2">产品描述：</td>
    </tr>
   <tr>
    <td colspan="2">
   <CE:Editor ID="Editor1" EditorWysiwygModeCss="Style/Editor.css" runat="server" Width="100%" Height="300px" AutoConfigure="Simple">
       <FrameStyle BackColor="White" BorderColor="#DDDDDD" BorderStyle="Solid" BorderWidth="1px"
           CssClass="CuteEditorFrame" Height="100%" Width="100%" />
   </CE:Editor>
    </td>
    </tr> 
   </table>
    </div> 
   </td>
   </tr>
   <tr>
    <td class="CmdRow">
        <asp:Button ID="BtnSave" CssClass="button60" runat="server" Text="保存" OnClick="BtnSave_Click"/>
        <input id="Button2" type="button" class="button60" onclick="location.href='ProductList.aspx';" value="返回列表" /> 
    </td>
   </tr>
   </table>  
    </form>
</body>
</html>
