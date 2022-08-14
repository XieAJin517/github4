<%@ Control Language="c#" Inherits="CuteEditor.Dialogs.ThumbList" %>

<script language="JavaScript">

var OxO500a=["dialogArguments","editor","img","editdoc","^[a-z]*:[/][/][^/]*","","src","IMG","opener","\x3CIMG border=\x270\x27 align=\x27absmiddle\x27 src=\x27","\x27\x3E"]; function insert(src){if(src){if(top[OxO500a[0x0]]){var obj=top[OxO500a[0x0]];var editor=obj[OxO500a[0x1]];var Oxba=obj[OxO500a[0x2]];var editdoc=obj[OxO500a[0x3]];var Oxbb=src.replace( new RegExp(OxO500a[0x4],OxO500a[0x5]),OxO500a[0x5]);if(Oxba){ Oxba[OxO500a[0x6]]=Oxbb ;} else { Oxba=editdoc.createElement(OxO500a[0x7]) ; Oxba[OxO500a[0x6]]=Oxbb ;} ; editor.InsertElement(Oxba) ;} else {var editor=window[OxO500a[0x8]][OxO500a[0x0]]; src=src.replace( new RegExp(OxO500a[0x4],OxO500a[0x5]),OxO500a[0x5]) ;var h=OxO500a[0x9]+src+OxO500a[0xa];try{ editor.PasteHTML(h) ;} catch(e){} ; window[OxO500a[0x8]].focus() ;} ; top.close() ;} ;}  ;
</script>

<ASP:DataList id="MyList" RepeatDirection="Horizontal" width="100%" height="300" RepeatColumns="4" CellSpacing="0" runat="server" EnableViewState="true" OnItemDataBound="Item_DataBound">
	
	<ItemStyle horizontalalign="Center"></ItemStyle>
    <FooterStyle font-size="8pt" horizontalalign="Center"></FooterStyle>
   
    <ItemTemplate>
		<img border="0" src="<%# ThumbUrl((String)(DataBinder.Eval(Container.DataItem,"Path"))) %>" alt="<%# String_Name%>: <%# DataBinder.Eval(Container.DataItem, "Name")%>&#10;&#13;<%# String_Size%>: <%# ( Convert.ToInt32(DataBinder.Eval(Container.DataItem, "Length")) /1024).ToString("n0")%> KB&#10;&#13;<%# String_Createddate%>: <%# DataBinder.Eval(Container.DataItem, "CreationTime") %>&#10;&#13;<%# String_Modifieddate%>: <%# DataBinder.Eval(Container.DataItem, "LastWriteTime")%>" onmouseover="Check(this,1)" onmouseout="Check(this,0)" onclick="insert('<%# DataBinder.Eval(Container.DataItem,"Url") %>')" style="BORDER: white 1px solid" align="center">
	</ItemTemplate>
   
    <FooterTemplate>
		<%# NumImagesDisplayed()%> <asp:PlaceHolder id="plLinks" runat="server"></asp:PlaceHolder>
	</FooterTemplate>
</ASP:DataList>

<input id="hdnCurPage" type="hidden" runat="server" />
<input id="hdnPrevPath" type="hidden" runat="server" />