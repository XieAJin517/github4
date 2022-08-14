<%@ Page Language="C#" Theme="common" AutoEventWireup="true" CodeFile="InStoreStat.aspx.cs" Inherits="InStoreStat" %>
<%@ Import Namespace="AcomLb.Model" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>查询统计</title>
    <link href="Style/dateshow.css" rel="stylesheet" type="text/css" />
    <link href="Style/Main.css" rel="stylesheet" type="text/css" />
    <script language="javascript" src="Script/Common.js"></script>   
    <script language="javascript" src="Script/CalendarDate.js"></script>  
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="0" cellspacing="0" border="0" class="TabFix">
   <tr>
        <td height="18" style="color:#cc3300; font-weight:bold; background:#f1f1f1">
            <asp:Literal ID="txtTitle" runat="server"></asp:Literal></td>
   </tr>
   <tr>
        <td height="30">
         添加时间：<asp:TextBox ID="txtStarTm" runat="server" Width="100"></asp:TextBox>-<asp:TextBox ID="txtEndTm" runat="server" Width="100"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="筛选" CssClass="button60" OnClick="Button2_Click" />
        </td>
   </tr>
   <tr>
    <td valign="top">
   <div class="Sdiv">   
   <asp:GridView SkinID="NewSkin" ID="GridView1"  CssClass="Gv1" runat="server" AutoGenerateColumns="False" PageSize="19" OnRowDataBound="GridView1_RowDataBound">
       <Columns>
           <asp:TemplateField HeaderText="查看">
               <ItemTemplate>
                   <asp:HyperLink ID="hlShow" runat="server"><img src="images/View.gif" border="0" align="absmiddle" /></asp:HyperLink>
               </ItemTemplate>
              <ItemStyle HorizontalAlign="center" /> 
           </asp:TemplateField>
           <asp:TemplateField HeaderText="往来单位">
               <ItemTemplate>
                   <asp:HyperLink ID="hlCropName" runat="server" Text="<%# DataBinder.Eval(Container.DataItem,ShBillData.CORPNAME_FIELD ) %>" NavigateUrl='<%# DataBinder.Eval(Container.DataItem,ShBillData.INCORP_FIELD ,"CorpEdit.aspx?Id={0}") %>'></asp:HyperLink>  
               </ItemTemplate>
              <ItemStyle HorizontalAlign="center" /> 
           </asp:TemplateField>
           <asp:TemplateField HeaderText="单数">
               <ItemTemplate>
                   <%# DataBinder.Eval( Container.DataItem,ShBillData.BILLCOUNT_FIELD) %>
               </ItemTemplate>
              <ItemStyle HorizontalAlign="center" /> 
           </asp:TemplateField>
       </Columns>
   </asp:GridView>
   </div> 
    </td>
    </tr>
   <tr>
   </table>
    </form>
</body>
</html>
