<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClassList.aspx.cs" Inherits="ClassList" %>
<%@ Import Namespace="AcomLb.Model" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>产品分类管理</title>
    <link href="Style/Main.css" rel="stylesheet" type="text/css" />
    <link href="Style/dateshow.css" rel="stylesheet" type="text/css" /> 
    <script language="javascript" src="Script/Common.js"></script> 
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager> 
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>       
    <table cellpadding=2 cellspacing=0 border=1 bordercolordark=#ffffff bordercolorlight=#999999 class="TabFix">
        <tr>
            <td class="Ndatatitle NTableTitle" height="25">类别管理</td>
        </tr>
        <tr>
            <td style="height: 30px">栏目名称：
                <asp:DropDownList ID="DdlMenu" runat="server">
                <asp:ListItem Value="0" Text="添加为根菜单"></asp:ListItem>
                </asp:DropDownList>
                <asp:HiddenField ID="HidId" runat="server" />  
                <asp:HiddenField ID="HidClassId" runat="server" />
                <asp:TextBox ID="txtClassName" runat="server" Width="200px"></asp:TextBox>
                <asp:Button ID="btnAdd" runat="server" Text="保存" CssClass="button60" OnClick="btnAdd_Click" />
                </td>
        </tr>
        <tr>
            <td valign="top">
            <div class="sdiv">
                            
                <asp:Repeater ID="rptMenuList" runat="server" OnItemDataBound="rptMenuList_ItemDataBound" OnItemCommand="rptMenuList_ItemCommand">
                <HeaderTemplate>
                 <table id="datatable" cellpadding=0 cellspacing=0 border=1 width=100% bordercolordark="#ffffff" bordercolorlight="#999999">                  
                   <tr class="Ndatatitle" align="center">
                        <td style="width: 16px;" class="datatitle">&nbsp;</td>
                        <td>栏目名称</td>
                        <td>编辑</td>
                        <td>删除</td>
                    </tr>
                </HeaderTemplate>
                <ItemTemplate>
                 <tr>
                    <td class="Ndatatitle Ndataarrow" nowrap="nowrap">&nbsp;</td>
                    <td>
                        <asp:HiddenField ID="txtId" runat="server" Value="<%#DataBinder.Eval(Container.DataItem,ShClassData.ID_FIELD) %>" />
                        <asp:HiddenField ID="txtClassId" runat="server" Value="<%#DataBinder.Eval(Container.DataItem,ShClassData.CLASSID_FIELD) %>" />
                        <asp:Literal ID="LitFirst" runat="server"></asp:Literal><asp:Label ID="LabClassNm" runat="server" Text="<%#DataBinder.Eval(Container.DataItem,ShClassData.CLASSNAME_FIELD) %>"></asp:Label>
                    </td>
                    <td align="center"><asp:LinkButton ID="BtnEdit" CommandName="BtnEdit" runat="server">编辑</asp:LinkButton></td>
                    <td align="center"><asp:LinkButton ID="BtnDelete" CommandName="BtnDelete" runat="server" OnClientClick="return confirm('你确定要删除吗')">删除</asp:LinkButton></td>
                 </tr>
                </ItemTemplate>
               <FooterTemplate>
                </table>
               </FooterTemplate>
                </asp:Repeater>              
                
             </div>
            </td>
        </tr>
        <tr>
            <td class="cmdrow">
                <input id="Button2" type="button" value="返回" onclick="history.go(-1);" class="button60" />
            </td>
        </tr>
    </table>
   </ContentTemplate> 
        </asp:UpdatePanel>  
    <script language="javascript">
    function ChkInput()
    {
        if($("txtClassName").value=="")
        {
            alert("栏目名称不能为空");
            $("txtClassName").focus();
            return false;
        }
    }
    </script> 
    </form>
</body>
</html>
