<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataBack.aspx.cs" Inherits="DataBack" %>
<%@ Import Namespace="AcomLb.Model" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>数据备份</title>
       <link href="Style/dateshow.css" rel="stylesheet" type="text/css" />
    <link href="Style/Main.css" rel="stylesheet" type="text/css" />
    <script language="javascript" src="Script/Common.js"></script>   
 
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding=2 cellspacing=0 border=1 bordercolordark=#ffffff bordercolorlight=#999999 class="TabFix">
        <tr>
            <td class="Ndatatitle NTableTitle" height="25">数据库备份与恢复</td>
        </tr>
        <tr>
            <td height=30>
              数据库名称：<asp:TextBox ID="txtDataName" runat="server"></asp:TextBox>
              <asp:Button runat="server" Text="备份" id="BtnSave" CssClass="button60" OnClick="BtnSave_Click" ></asp:Button>
              *如果不输入则以日期为文件名
            </td>
        </tr>
        <tr>
        	<td valign="top">
        		<div class="sdiv">
        		<asp:GridView Width="100%" ID="GvDept" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" OnRowDeleting="GvDept_RowDeleting"  OnRowDataBound="GvDept_RowDataBound">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <Columns>
							<asp:templatefield HeaderText="数据库名">
								<ItemStyle Width="200px" HorizontalAlign="Left" />
								<ItemTemplate>
                                    <asp:HyperLink ID="LnkDownLoad" runat="server"></asp:HyperLink>
								</ItemTemplate>
							</asp:templatefield>
							<asp:templatefield HeaderText="备份时间">
								<ItemStyle Width="200px" HorizontalAlign="Left" />
								<ItemTemplate>
									<%#DataBinder.Eval(Container.DataItem, "BackTime")%>
								</ItemTemplate>
							</asp:templatefield>
							<asp:templatefield HeaderText="操作">
								<ItemTemplate>
									<asp:LinkButton runat="server" Text="删除" CommandName="Delete" CausesValidation="False" id="LinkButton2">
									</asp:LinkButton>
								</ItemTemplate>
							</asp:templatefield>
						</Columns>
                        <RowStyle BackColor="#F6F8F9" ForeColor="#333333" />
                        <EditRowStyle BackColor="#E6ECEF" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle HorizontalAlign="Right" CssClass="GvPage" />
                        <HeaderStyle Font-Bold="True" CssClass="GvHeader" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                  </div>
        	</td>
        </tr>
        <tr>
        	<td class="cmdrow" >
                <input id="Btnre" type="button" value="返回" onclick="hitory.go(-1)" class="button60" /></td>
        </tr>
     </table>  
    </form>
</body>
</html>
