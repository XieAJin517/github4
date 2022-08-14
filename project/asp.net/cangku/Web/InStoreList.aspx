<%@ Page Language="C#" Theme="Common" EnableEventValidation="False" AutoEventWireup="true" CodeFile="InStoreList.aspx.cs" Inherits="InStoreList" %>
<%@ Import Namespace="AcomLb.Model" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>单据管理</title>
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
        <td height="26">
       往来单位：<asp:TextBox ID="txtCorp" runat="server" Width="70"></asp:TextBox>
       单据号：<asp:TextBox ID="txtBillNo" runat="server" Width="70"></asp:TextBox>
       产品名称：<asp:TextBox ID="txtProName" runat="server" Width="70"></asp:TextBox>
       条形码：<asp:TextBox ID="txtBarCode" runat="server" Width="70"></asp:TextBox>
       添加时间：<asp:TextBox ID="txtStarTm" runat="server" Width="70"></asp:TextBox>-<asp:TextBox ID="txtEndTm" runat="server" Width="70"></asp:TextBox>
       <asp:Button ID="Button2" runat="server" Text="筛选" CssClass="button60" OnClick="Button2_Click" />
        </td>
   </tr>
   <tr>
    <td valign="top">
   <div class="Sdiv">   
   <asp:GridView SkinID="NewSkin" ID="GridView1"  CssClass="Gv1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True"  PageSize="19" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" OnSorting="GridView1_Sorting" OnRowEditing="GridView1_RowEditing" OnPageIndexChanging="GridView1_PageIndexChanging">
       <Columns>
           <asp:TemplateField HeaderText="操作">
               <ItemTemplate>
                   <asp:ImageButton ID="btnEdit" runat="server" CausesValidation="False" CommandName="Edit" BorderWidth="0" />
                   &nbsp;&nbsp;
                   <asp:ImageButton ID="btnCheck" runat="server" CausesValidation="False" CommandName="Select" BorderWidth="0" OnClientClick="return confirm('你确定要审核吗？')" />
               </ItemTemplate>
              <HeaderStyle Width="80" />  
              <ItemStyle HorizontalAlign="center" />  
           </asp:TemplateField>
           <asp:TemplateField HeaderText="单据号" SortExpression="BillNo Desc">
               <ItemTemplate>
                   <asp:HiddenField ID="HidId" runat="server" Value="<%# DataBinder.Eval(Container.DataItem,ShBillData.ID_FIELD ) %>" />
                   <asp:HyperLink ID="hlBillNo" runat="server"></asp:HyperLink> 
               </ItemTemplate>
              <HeaderStyle Width="120" /> 
           </asp:TemplateField>           
           <asp:TemplateField HeaderText="对方公司" SortExpression=" CorpName Desc">
               <ItemTemplate>
                   <asp:HyperLink ID="hlCropName" runat="server" Text="<%# DataBinder.Eval(Container.DataItem,ShBillData.CORPNAME_FIELD ) %>" NavigateUrl='<%# DataBinder.Eval(Container.DataItem,ShBillData.INCORP_FIELD ,"CorpEdit.aspx?Id={0}") %>'></asp:HyperLink>                   
               </ItemTemplate>
              <HeaderStyle Width="200" /> 
           </asp:TemplateField>
          <asp:TemplateField HeaderText="数量" SortExpression="BillListCount Desc">
               <ItemTemplate>
                   <%# DataBinder.Eval(Container.DataItem,ShBillData.BILLLISTCOUNT_FIELD ) %>
               </ItemTemplate>
               <HeaderStyle Width="50" />  
              <ItemStyle HorizontalAlign="center" /> 
           </asp:TemplateField> 
           <asp:TemplateField HeaderText="联系人" SortExpression="LinkMan Desc">
               <ItemTemplate>
                   <%# DataBinder.Eval(Container.DataItem,ShBillData.LINKMAN_FIELD ) %>
               </ItemTemplate>
              <HeaderStyle Width="70" />  
              <ItemStyle HorizontalAlign="center" />  
           </asp:TemplateField>
           <asp:TemplateField HeaderText="录入人" SortExpression="InstfNm Desc">
               <ItemTemplate>
                   <%# DataBinder.Eval(Container.DataItem,ShBillData.INSTFNM_FIELD ) %>
               </ItemTemplate>
              <HeaderStyle Width="70" />  
              <ItemStyle HorizontalAlign="center" />  
           </asp:TemplateField>
           <asp:TemplateField HeaderText="录入时间" SortExpression="InTm Desc">
               <ItemTemplate>
                   <%# DataBinder.Eval(Container.DataItem,ShBillData.INTM_FIELD ) %>
               </ItemTemplate>
              <HeaderStyle Width="120" />  
              <ItemStyle HorizontalAlign="center" />  
           </asp:TemplateField>
           <asp:TemplateField HeaderText="确认人" SortExpression="SureStfNm Desc">
               <ItemTemplate>
                   <%# DataBinder.Eval(Container.DataItem,ShBillData.SURESTFNM_FIELD ) %>
               </ItemTemplate>
              <HeaderStyle Width="70" />  
              <ItemStyle HorizontalAlign="center" />   
           </asp:TemplateField>
           <asp:TemplateField HeaderText="确认时间" SortExpression="SureTm Desc">
               <ItemTemplate>
                  <%# DataBinder.Eval(Container.DataItem,ShBillData.SURETM_FIELD ) %>
               </ItemTemplate>
              <HeaderStyle Width="120" />  
              <ItemStyle HorizontalAlign="center" />   
           </asp:TemplateField>
           <asp:TemplateField HeaderText="审核人" SortExpression="CheckStfNm Desc">
               <ItemTemplate>
                   <%# DataBinder.Eval(Container.DataItem,ShBillData.CHECKSTFNM_FIELD ) %>
               </ItemTemplate>
              <HeaderStyle Width="70" />  
              <ItemStyle HorizontalAlign="center" />   
           </asp:TemplateField>
           <asp:TemplateField HeaderText="审核时间" SortExpression="CheckTm Desc">
               <ItemTemplate>
                  <%# DataBinder.Eval(Container.DataItem,ShBillData.CHECKTM_FIELD ) %>
               </ItemTemplate>
              <HeaderStyle Width="120" />  
              <ItemStyle HorizontalAlign="center" />   
           </asp:TemplateField>
       </Columns>
   </asp:GridView>
   </div> 
    </td>
    </tr>
   <tr>
    <td class="CmdRow">
        <asp:Button ID="BtnAdd" runat="server" Text="添加" CssClass="button60" OnClick="BtnAdd_Click" />
        <input id="Button1" type="button" value="还回" class="button60" onclick="history.go(-1);" /> 
    </td>
   </tr> 
   </table>
    </form>
</body>
</html>
