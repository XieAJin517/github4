<%@ Page Language="C#" Theme="common" AutoEventWireup="true" CodeFile="InStore.aspx.cs" Inherits="InStore" %>
<%@ Register Assembly="EeekSoft.Web.PopupWin" Namespace="EeekSoft.Web" TagPrefix="cc1" %>
<%@ Import Namespace="AcomLb.Model" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>添加入库单</title>
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
        <td colspan="4"><span style="color:#cc0000; font-weight:bold;">
         <asp:Literal ID="txtTitle" runat="server"></asp:Literal>&nbsp;&nbsp;
        单据号：<asp:Literal ID="txtBillNo" runat="server"></asp:Literal></span> </td>
   </tr>
   <tr>
    <td width="100">往来单位：</td>
    <td width="350">
    <asp:HiddenField ID="hidCorpId" runat="server" /> 
    <asp:TextBox ID="txtCorpNm" runat="server" Width="200"></asp:TextBox>
    <input id="BtnCropSel" type="button" value="选择" class="button60" onclick="SelCorp()" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtCorpNm" runat="server" Text="不能为空"></asp:RequiredFieldValidator> 
    </td>
    <td width="100">联系人：</td> 
    <td><asp:TextBox ID="txtLinkMan" runat="server"></asp:TextBox></td>   
   </tr>
   <tr>
    <td>地址：</td>
    <td><asp:TextBox ID="txtCorpAdd" runat="server" Width="300"></asp:TextBox></td> 
   <td>单据备注：</td>
    <td><asp:TextBox ID="txtDspt" runat="server" Width="300"></asp:TextBox></td>  
   </tr>
   </table>
    <table cellpadding="3" cellspacing="0" border="0" width="100%">
   <tr>
   <td width="100">产品名称：</td>
   <td width="350">
   <asp:HiddenField ID="HidProId" runat="server" />
   <asp:TextBox ID="txtProNm" runat="server" Width="200"></asp:TextBox> 
   <input id="BtnProSel" type="button" value="选择" class="button60" onclick="SelPro()" />
   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtProNm" runat="server" Text="不能为空"></asp:RequiredFieldValidator>
   </td>
   <td width="100">产品价格：</td>
   <td><asp:TextBox ID="txtProPrice" runat="server"></asp:TextBox>
       <asp:RangeValidator ID="RangeValidator2" ControlToValidate="txtProPrice" runat="server" MaximumValue="999999" MinimumValue="0" Type="Integer" Text="不合法" Display="Dynamic"></asp:RangeValidator>

   </td> 
   </tr> 
   <tr>
   <td>产品数量：</td>
   <td><asp:TextBox ID="txtProNum" runat="server" Width="60" AutoPostBack="True" Text="1"></asp:TextBox>
       <asp:RangeValidator ID="RangeValidator1" ControlToValidate="txtProNum" runat="server" MaximumValue="999999" MinimumValue="1" Type="Integer" Text="不合法" Display="Dynamic"></asp:RangeValidator>
   </td>
   <td>产品备注：</td>
   <td><asp:TextBox ID="txtProDspt" runat="server" Width="300"></asp:TextBox></td> 
   </tr> 
   </table>
    <asp:GridView ID="GvProInfo" runat="server" ShowHeader="false" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="GvProInfo_RowDataBound">
        <Columns>
             <asp:TemplateField>
                <ItemTemplate>
                    <asp:Literal ID="litNumber" runat="server"></asp:Literal>
                </ItemTemplate>
               <ItemStyle Width="50" HorizontalAlign="center" /> 
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    序列号：<asp:TextBox ID="txtBarCode1" runat="server" Width="300" Text="<%# DataBinder.Eval( Container.DataItem,ShBillListData.MAINBARCODE_FIELD) %>"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>                   
                   <asp:TextBox ID="txtBarCode2" runat="server" Width="10" Visible="false" Text=" <%# DataBinder.Eval( Container.DataItem,ShBillListData.SUBBARCODE_FIELD) %> "></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
     <b>已添加的产品：</b>
     <asp:GridView ID="GvProList" CssClass="Gv1" SkinID="NewSkin" runat="server" AutoGenerateColumns="False" OnRowDeleting="GvProList_RowDeleting" AllowPaging="True" OnPageIndexChanging="GvProList_PageIndexChanging" PageSize="20" OnRowDataBound="GvProList_RowDataBound">
         <Columns>
             <asp:TemplateField HeaderText="移除">
                 <ItemTemplate>
                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="移除" OnClientClick="return confirm('你确定要移除该产品吗，移除后不可恢复！')">
                        <img src="Images/cancel2.gif" border="0" /> 
                         </asp:LinkButton>
                 </ItemTemplate>
                 <HeaderStyle Width="50px" />
                 <ItemStyle HorizontalAlign="Center" />
             </asp:TemplateField>
             <asp:TemplateField HeaderText="序号">
                 <ItemTemplate>
                     <asp:Literal ID="litNum" runat="server"></asp:Literal>
                 </ItemTemplate>
                 <HeaderStyle Width="50" />
                 <ItemStyle HorizontalAlign="center" />
             </asp:TemplateField>
             <asp:TemplateField HeaderText="产品名称">
                 <ItemTemplate>
                     <asp:HiddenField ID="hidListId" runat="server" Value="<%# DataBinder.Eval( Container.DataItem,ShBillListData.ID_FIELD) %>" />
                    <%# DataBinder.Eval( Container.DataItem,ShBillListData.PRONAME_FIELD) %>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="价格">
                 <ItemTemplate>
                    <%# DataBinder.Eval( Container.DataItem,ShBillListData.PROPRICE_FIELD) %>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="主条形码">
                 <ItemTemplate>
                     <%# DataBinder.Eval( Container.DataItem,ShBillListData.MAINBARCODE_FIELD) %>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="添加时间">
                 <ItemTemplate>
                     <%# DataBinder.Eval( Container.DataItem,ShBillListData.ADDTIME_FIELD) %>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="备注">
                 <ItemTemplate>
                     <%# DataBinder.Eval( Container.DataItem,ShBillListData.DSPT_FIELD) %>
                 </ItemTemplate>
             </asp:TemplateField>
         </Columns>
     </asp:GridView> 
       <cc1:PopupWin ID="PopupWin1" runat="server" Visible="false" ColorStyle="Blue" />
   </div> 
   </td>
   </tr>
   <tr>
    <td class="CmdRow">
        <asp:Button ID="BtnSave" CssClass="button60" runat="server" Text="保存" OnClick="BtnSave_Click"/>
        <asp:Button ID="Button1" runat="server" CausesValidation="false" Text="返回列表" CssClass="button60" OnClick="Button1_Click" /> 
    </td>
   </tr>
   </table>  
    </form>
<script language="javascript">
function SelCorp()
{
    var Url="CommonFrm.aspx?PageType=1";
    var result=window.showModalDialog(Url,'tempdialog','dialogWidth:800px;status:no;');    
    if(result!=null)
    {
        var val=result.split('$$$');
        $("hidCorpId").value = val[0];
        $("txtCorpNm").value = val[1];
        $("txtLinkMan").value = val[2]; 
        $("txtCorpAdd").value = val[3];
    }
}
function SelPro()
{
    var Url="CommonFrm.aspx?PageType=2";
    var result=window.showModalDialog(Url,'tempdialog','dialogWidth:800px;status:no;');    
    if(result!=null)
    {
        var val=result.split('$$$');
        $("HidProId").value = val[0];
        $("txtProNm").value = val[1];
        $("txtProPrice").value = val[2]; 
    }
}
</script> 
</body>
</html>
