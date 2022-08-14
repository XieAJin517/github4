<%@ Page Language="C#" Theme="common" AutoEventWireup="true" CodeFile="SelCorp.aspx.cs" Inherits="SelCorp" %>
<%@ Import Namespace="AcomLb.Model" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
<link href="Style/dateshow.css" rel="stylesheet" type="text/css" />
    <link href="Style/Main.css" rel="stylesheet" type="text/css" />
    <script language="javascript" src="Script/Common.js"></script>   
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="0" cellspacing="0" border="0" class="TabFix">
   <tr>
    <td height="30">
   <asp:DropDownList ID="ddlCorpKind" runat="server"></asp:DropDownList>
   <asp:DropDownList ID="ddlCreditLevel" runat="server"></asp:DropDownList>
   <asp:DropDownList ID="ddlCorpArea" runat="server"></asp:DropDownList>
   关键字:<asp:TextBox ID="txtKeyWord" runat="server"></asp:TextBox>
   <asp:Button ID="BtnFind" CssClass="button60" runat="server" Text="筛选" OnClick="BtnFind_Click" />
    </td>
   </tr>
    <tr>
    <td valign="top">
   <div class="Sdiv">   
   <asp:GridView SkinID="NewSkin" ID="GridView1"  CssClass="Gv1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True"  PageSize="18" OnPageIndexChanging="GridView1_PageIndexChanging" OnSorting="GridView1_Sorting"  OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
            <Columns>
                <asp:TemplateField HeaderText="操作">
                    <ItemTemplate>
                        <asp:LinkButton ID="BtnDel" runat="server" CausesValidation="False" CommandName="Select"
                            Text="选择">
                            <img src="Images/Select.gif" border="0" align="absmiddle" />
                            </asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle Width="60px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="拼音码" SortExpression="PyCode Desc">
                    <ItemTemplate>
                        <asp:HiddenField ID="HidId" runat="server" Value="<%# DataBinder.Eval( Container.DataItem,ShCorpData.ID_FIELD) %>" />
                        <%# DataBinder.Eval( Container.DataItem,ShCorpData.PYCODE_FIELD) %>
                    </ItemTemplate>
                    <HeaderStyle Width="70px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="公司名" SortExpression="CorpName Desc">
                    <ItemTemplate>
                        <asp:HyperLink ID="HlCorpName" runat="server" Text="<%# DataBinder.Eval( Container.DataItem,ShCorpData.CORPNAME_FIELD) %>" NavigateUrl='<%#DataBinder.Eval( Container.DataItem,ShCorpData.ID_FIELD,"CorpEdit.Aspx?Id={0}") %>'></asp:HyperLink>                         
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" />
                    <HeaderStyle Width="250px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="类别" SortExpression="CorpKind Desc">
                    <ItemTemplate>
                          <%# DataBinder.Eval( Container.DataItem,ShCorpData.KINDNM_FIELD) %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                    <HeaderStyle Width="60px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="信誉程度" SortExpression="CreditLevel Desc">
                    <ItemTemplate>
                         <%# DataBinder.Eval( Container.DataItem,ShCorpData.LEVELNM_FIELD) %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                    <HeaderStyle Width="60px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="区域" SortExpression="CorpArea Desc">
                    <ItemTemplate>
                         <%# DataBinder.Eval( Container.DataItem,ShCorpData.AREANM_FIELD) %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                    <HeaderStyle Width="60px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="联系人" SortExpression="Linkman Desc">
                    <ItemTemplate>
                        <asp:Label ID="lbLinkMan" runat="server" Text="<%# DataBinder.Eval( Container.DataItem,ShCorpData.LINKMAN_FIELD) %>"></asp:Label>                         
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                    <HeaderStyle Width="80px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="电话" SortExpression="Telephone Desc">
                    <ItemTemplate>
                         <%# DataBinder.Eval( Container.DataItem,ShCorpData.TELEPHONE_FIELD) %>
                    </ItemTemplate>
                    <HeaderStyle Width="80px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="传真" SortExpression="Fax Desc">
                    <ItemTemplate>
                         <%# DataBinder.Eval( Container.DataItem,ShCorpData.FAX_FIELD) %>
                    </ItemTemplate>
                    <HeaderStyle Width="80px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="联系人手机" SortExpression="Handset Desc">
                    <ItemTemplate>
                         <%# DataBinder.Eval( Container.DataItem,ShCorpData.HANDSET_FIELD) %>
                    </ItemTemplate>
                    <HeaderStyle Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="联系人Mail" SortExpression="Email Desc">
                    <ItemTemplate>
                         <%# DataBinder.Eval( Container.DataItem,ShCorpData.EMAIL_FIELD) %>
                    </ItemTemplate>
                    <HeaderStyle Width="120px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="联系人职务" SortExpression="Business Desc">
                    <ItemTemplate>
                         <%# DataBinder.Eval( Container.DataItem,ShCorpData.BUSINESS_FIELD) %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                    <HeaderStyle Width="120px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="公司网站" SortExpression="Web Desc">
                    <ItemTemplate>
                         <%# DataBinder.Eval( Container.DataItem,ShCorpData.WEB_FIELD) %>
                    </ItemTemplate>
                    <HeaderStyle Width="160px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="邮编" SortExpression="PostCode Desc">
                    <ItemTemplate>
                         <%# DataBinder.Eval( Container.DataItem,ShCorpData.POSTCODE_FIELD) %>
                    </ItemTemplate>
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="地址" SortExpression="CorpAdd Desc">
                    <ItemTemplate>
                        <asp:Label ID="lbCorpAdd" runat="server" Text="<%# DataBinder.Eval( Container.DataItem,ShCorpData.CORPADD_FIELD) %>"></asp:Label>                         
                    </ItemTemplate>
                    <HeaderStyle Width="250px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="备注" SortExpression="Dspt Desc">
                    <ItemTemplate>
                        <%# DataBinder.Eval( Container.DataItem,ShCorpData.DSPT_FIELD) %>
                    </ItemTemplate>
                     <HeaderStyle Width="300px" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView> 
    </div> 
    </td>
    </tr>
   </table>
    </form>
</body>
</html>
