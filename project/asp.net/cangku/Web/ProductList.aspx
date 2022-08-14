<%@ Page Language="C#" Theme="common" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="ProductList" %>
<%@ Import Namespace="AcomLb.Model" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>产品列表</title>
   <link href="Style/dateshow.css" rel="stylesheet" type="text/css" />
    <link href="Style/Main.css" rel="stylesheet" type="text/css" />
    <script language="javascript" src="Script/Common.js"></script>   
</head>
<body>
    <form id="form1" runat="server">
   <table cellpadding="0" cellspacing="0" border="0" class="TabFix">
   <tr>
    <td height="30">
   <asp:DropDownList ID="ddlProClass" runat="server"></asp:DropDownList>
   关键字：<asp:TextBox ID="txtKeyWord" runat="server" Width="200"></asp:TextBox>
   <asp:Button ID="BtnSearch" Text="筛选" runat="server" CssClass="button60" OnClick="BtnSearch_Click" />   
    </td>
   </tr>
   <tr>
     <td valign="top">
   <div class="Sdiv">   
   <asp:GridView SkinID="NewSkin" ID="GridView1"  CssClass="Gv1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" OnRowDeleting="GridView1_RowDeleting" OnSorting="GridView1_Sorting" OnPageIndexChanging="GridView1_PageIndexChanging">
       <Columns>
             <asp:TemplateField HeaderText="操作">
                    <ItemTemplate>
                        <asp:LinkButton ID="BtnDel" runat="server" CausesValidation="False" CommandName="Delete"
                            Text="删除" OnClientClick="return confirm('你确定要删除吗')">
                            <img src="Images/Delete.gif" border="0" align="absmiddle" />
                            </asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle Width="60px" />
                </asp:TemplateField>         
           <asp:TemplateField HeaderText="产品名" SortExpression="ProName Desc">
               <ItemTemplate>
                   <asp:HiddenField ID="HidId" Value="<%# DataBinder.Eval( Container.DataItem,ShProductData.ID_FIELD) %>" runat="server" />
                   <asp:HyperLink ID="HlProduct" runat="server" Text="<%# DataBinder.Eval( Container.DataItem,ShProductData.PRONAME_FIELD) %>" NavigateUrl='<%# DataBinder.Eval( Container.DataItem,ShProductData.ID_FIELD,"ProductEdit.aspx?Id={0}") %>'></asp:HyperLink> 
               </ItemTemplate>
               <HeaderStyle Width="250px" /> 
           </asp:TemplateField>
            <asp:TemplateField HeaderText="拼音码" SortExpression="PyCode Desc">
               <ItemTemplate>
                   <%# DataBinder.Eval( Container.DataItem,ShProductData.PYCODE_FIELD) %>
               </ItemTemplate>
              <ItemStyle HorizontalAlign="center" /> 
               <HeaderStyle Width="100px" /> 
           </asp:TemplateField> 
           <asp:TemplateField HeaderText="产品类别" SortExpression="ClassName Desc">
               <ItemTemplate>
                   <%# DataBinder.Eval( Container.DataItem,ShProductData.CLASSNAME_FIELD) %>
               </ItemTemplate>
              <ItemStyle HorizontalAlign="center" /> 
              <HeaderStyle Width="100px" />  
           </asp:TemplateField>
           <asp:TemplateField HeaderText="价格" SortExpression="ProPrice Desc">
               <ItemTemplate>
                   <%# DataBinder.Eval( Container.DataItem,ShProductData.PROPRICE_FIELD,"{0:C2}") %>
               </ItemTemplate>
              <HeaderStyle Width="100px" /> 
           </asp:TemplateField>
           <asp:TemplateField HeaderText="规格" SortExpression="Spes Desc">
               <ItemTemplate>
                   <%# DataBinder.Eval( Container.DataItem,ShProductData.SPES_FIELD) %>
               </ItemTemplate>
              <HeaderStyle Width="120px" />  
           </asp:TemplateField>
           <asp:TemplateField HeaderText="单位" SortExpression="Unit Desc">
               <ItemTemplate>
                  <%# DataBinder.Eval( Container.DataItem,ShProductData.UNIT_FIELD) %>
               </ItemTemplate>
              <HeaderStyle Width="60px" />
              <ItemStyle HorizontalAlign="center" />  
           </asp:TemplateField>
           <asp:TemplateField HeaderText="录入人" SortExpression="StfName Desc">
               <ItemTemplate>
                   <%# DataBinder.Eval( Container.DataItem,ShProductData.STFNAME_FIELD) %>
               </ItemTemplate>
              <ItemStyle HorizontalAlign="center" /> 
              <HeaderStyle Width="60px" />  
           </asp:TemplateField>
           <asp:TemplateField HeaderText="数字码" SortExpression="NumCode Desc">
               <ItemTemplate>
                   <%# DataBinder.Eval( Container.DataItem,ShProductData.NUMCODE_FIELD) %>
               </ItemTemplate>
              <ItemStyle HorizontalAlign="center" /> 
              <HeaderStyle Width="60px" />  
           </asp:TemplateField>
           <asp:TemplateField HeaderText="添加时间" SortExpression="AddTime Desc">
               <ItemTemplate>
                   <%# DataBinder.Eval( Container.DataItem,ShProductData.ADDTIME_FIELD) %>
               </ItemTemplate>
              <HeaderStyle Width="120px" />  
           </asp:TemplateField>
       </Columns>
   </asp:GridView>
    </div> 
    </td>
    </tr>
   <tr>
    <td class="CmdRow">
        <input id="BtnAdd" type="button" value="添加" class="button60"  onclick="location.href='ProductEdit.aspx'" />
        <input id="Button1" type="button" value="还回" class="button60" onclick="history.go(-1);" /> 
    </td>
   </tr> 
   </table>
    </form>
</body>
</html>
