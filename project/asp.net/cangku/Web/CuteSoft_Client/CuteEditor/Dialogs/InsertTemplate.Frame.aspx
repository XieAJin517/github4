<%@ Page Language="C#" Inherits="CuteEditor.Dialogs.TemplateBrowserPage" %>
<%
	string QUERY_STRING=Request.ServerVariables["QUERY_STRING"];
%>
<HTML>
	<HEAD>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)">
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)">
		<link rel="stylesheet" href='style.css'>
		<script src=dialog.js></script><script src=../_shared.js></script>
		<script src="filebrowserpage.js"></script>
		<script src="sorttable.js"></script>
		<script language="JavaScript">
		var OxO3d6f=["disabled","srcElement","[[Disabled]]","[[SpecifyNewFolderName]]","","value","hiddenActionData","[[SpecifyNewFileName]]","dialogWidth:760px;dialogHeight:385px;help:no;scroll:no;status:no;resizable:0;","href","location","[[CopyMoveto]]","/","[[AreyouSureDelete]]","parentNode","isdir","text","hiddenAction","rename","path","True","False",":","cancelBubble","dialogWidth:760px;dialogHeight:370px;help:no;scroll:no;status:no;resizable:0;","backgroundColor","style","#eeeeee","tagName","INPUT","changedir","htmlcode","hiddenFile","url","TargetUrl"]; function CreateDir_click(){if(event[OxO3d6f[0x1]][OxO3d6f[0x0]]){ alert(OxO3d6f[0x2]) ;return false;} ;var Ox2f4=prompt(OxO3d6f[0x3],OxO3d6f[0x4]);if(Ox2f4){ document.getElementById(OxO3d6f[0x6])[OxO3d6f[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function NewTemplate_Click(){var Ox2f4=prompt(OxO3d6f[0x7],OxO3d6f[0x4]);if(Ox2f4){var arr=showModalDialog('OuterEditorFull.aspx?<%= QUERY_STRING %>&f='+Ox2f4+OxO3d6f[0x4],window,OxO3d6f[0x8]);if(arr){ window[OxO3d6f[0xa]][OxO3d6f[0x9]]=window[OxO3d6f[0xa]][OxO3d6f[0x9]] ;} ;return true;} else {return false;} ;}  ; function Move_click(){if(event[OxO3d6f[0x1]][OxO3d6f[0x0]]){ alert(OxO3d6f[0x2]) ;return false;} ;var Ox2f4=prompt(OxO3d6f[0xb],OxO3d6f[0xc]);if(Ox2f4){ document.getElementById(OxO3d6f[0x6])[OxO3d6f[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Copy_click(){if(event[OxO3d6f[0x1]][OxO3d6f[0x0]]){ alert(OxO3d6f[0x2]) ;return false;} ;var Ox2f4=prompt(OxO3d6f[0xb],OxO3d6f[0xc]);if(Ox2f4){ document.getElementById(OxO3d6f[0x6])[OxO3d6f[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Delete_click(){if(event[OxO3d6f[0x1]][OxO3d6f[0x0]]){ alert(OxO3d6f[0x2]) ;return false;} ;return confirm(OxO3d6f[0xd]);}  ; function RenImg_click(Oxba){if(Oxba[OxO3d6f[0x0]]){ alert(OxO3d6f[0x2]) ;return false;} ; row=Oxba[OxO3d6f[0xe]][OxO3d6f[0xe]] ;var name;if(row[OxO3d6f[0xf]]){ name=prompt(OxO3d6f[0x3],row.text) ;} else { name=prompt(OxO3d6f[0x3],row.text) ;} ;if(name&&name!=row[OxO3d6f[0x10]]){ document.getElementById(OxO3d6f[0x11])[OxO3d6f[0x5]]=OxO3d6f[0x12] ; document.getElementById(OxO3d6f[0x6])[OxO3d6f[0x5]]=(row[OxO3d6f[0xf]]?OxO3d6f[0x14]:OxO3d6f[0x15])+OxO3d6f[0x16]+row[OxO3d6f[0x13]]+OxO3d6f[0x16]+name ; postback() ;} ; event[OxO3d6f[0x17]]=true ;}  ; function EditImg_click(Oxba){ row=Oxba[OxO3d6f[0xe]][OxO3d6f[0xe]] ;if(row.getAttribute(OxO3d6f[0x13])){var arr=showModalDialog('OuterEditorFull.aspx?<%= QUERY_STRING %>&f='+row.getAttribute(OxO3d6f[0x13])+OxO3d6f[0x4],window,OxO3d6f[0x18]);if(arr){ window[OxO3d6f[0xa]][OxO3d6f[0x9]]=window[OxO3d6f[0xa]][OxO3d6f[0x9]] ;} ;return true;} else {return false;} ;}  ; function row_over(Oxc4){ Oxc4[OxO3d6f[0x1a]][OxO3d6f[0x19]]=OxO3d6f[0x1b] ;}  ; function row_out(Oxc4){ Oxc4[OxO3d6f[0x1a]][OxO3d6f[0x19]]=OxO3d6f[0x4] ;}  ; function row_click(Oxc4){if(Oxc4[OxO3d6f[0xf]]){if(event[OxO3d6f[0x1]][OxO3d6f[0x1c]]==OxO3d6f[0x1d]){return ;} ; document.getElementById(OxO3d6f[0x11])[OxO3d6f[0x5]]=OxO3d6f[0x1e] ; document.getElementById(OxO3d6f[0x6])[OxO3d6f[0x5]]=Oxc4.getAttribute(OxO3d6f[0x13]) ; postback() ;} else {var htmlcode=Oxc4.getAttribute(OxO3d6f[0x1f]); document.getElementById(OxO3d6f[0x20])[OxO3d6f[0x5]]=Oxc4.getAttribute(OxO3d6f[0x13]) ; document.getElementById(OxO3d6f[0x22])[OxO3d6f[0x5]]=Oxc4.getAttribute(OxO3d6f[0x21]) ; do_preview(htmlcode) ;} ;}  ; function postback(){ <%=Page.GetPostBackEventReference(hiddenAction,"")%> ;}  ;
		</script>
		<style>
		.row { HEIGHT: 22px }
		.cb { VERTICAL-ALIGN: middle }
		.itemimg { VERTICAL-ALIGN: middle }
		.editimg { VERTICAL-ALIGN: middle }
		.cell1 { VERTICAL-ALIGN: middle }
		.cell2 { VERTICAL-ALIGN: middle }
		.cell3 { PADDING-RIGHT: 4px; VERTICAL-ALIGN: middle; TEXT-ALIGN: right }
		.cb { }
		#divpreview {
			width: 710px;
			height: 470px;
			overflow:hidden;
			text-align: left;
			vertical-align: top;
			padding: 0px;
			margin: 0px;
			zoom: 50%;
			background-color: white;
		}
		</style>
	</HEAD>
	<body>
		<form runat="server" enctype="multipart/form-data" id="Form1">
			<!-- start hidden -->
			<script>
        var OxOa15c=["onload","value","hiddenAlert","","hiddenAction","hiddenActionData"]; window[OxOa15c[0x0]]=reset_hiddens ; function reset_hiddens(){if(document.getElementById(OxOa15c[0x2])[OxOa15c[0x1]]){ alert(document.getElementById(OxOa15c[0x2]).value) ;} ; document.getElementById(OxOa15c[0x2])[OxOa15c[0x1]]=OxOa15c[0x3] ; document.getElementById(OxOa15c[0x4])[OxOa15c[0x1]]=OxOa15c[0x3] ; document.getElementById(OxOa15c[0x5])[OxOa15c[0x1]]=OxOa15c[0x3] ;}  ;
			</script>
			<input type="hidden" runat="server" id="hiddenDirectory" NAME="hiddenDirectory"> <input type="hidden" runat="server" id="hiddenFile" NAME="hiddenFile">
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAlert" NAME="hiddenAlert"> <input type="hidden" runat="server" enableviewstate="false" id="hiddenAction" onserverchange="hiddenAction_ServerChange" NAME="hiddenAction">
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenActionData" NAME="hiddenActionData">
			<!-- end hidden -->
			<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
				<tr>
					<td width="20">
						<asp:Image ID="Image1" Runat="server" ImageUrl="../images/openfolder.gif"></asp:Image>
					</td>
					<td width="240" class="normal">
						<asp:Label Runat="server" ID="FolderDescription"></asp:Label>
					</td>
					<td>
						<asp:ImageButton ID="CreateDir" Runat="server" AlternateText="[[Createdirectory]]" ImageUrl="../images/newfolder.gif"
							onMouseOver="CuteEditor_ColorPicker_ButtonOver(this);" Visible="true"
							OnClick="CreateDir_Click" />
						<asp:ImageButton ID="Copy" Runat="server" AlternateText="[[Copyfiles]]" ImageUrl="../images/Copy.gif"
							onMouseOver="CuteEditor_ColorPicker_ButtonOver(this);" Visible="true"
							OnClick="Copy_Click" />
						<asp:ImageButton ID="Move" Runat="server" AlternateText="[[Movefiles]]" ImageUrl="../images/move.gif"
							onMouseOver="CuteEditor_ColorPicker_ButtonOver(this);" Visible="true"
							OnClick="Move_Click" />
						<IMG src="../images/zoom_in.gif" onclick="Zoom_In();" Alt="[[ZoomIn]]" class="dialogButton"
							onmouseover="CuteEditor_ColorPicker_ButtonOver(this);"> <IMG src="../images/zoom_out.gif" onclick="Zoom_Out();" Alt="[[ZoomOut]]" class="dialogButton"
							onmouseover="CuteEditor_ColorPicker_ButtonOver(this);">
						<asp:ImageButton ID="NewTemplate" Runat="server" AlternateText="[[NewTemplate]]" ImageUrl="../images/newtemplate.gif"
							onMouseOver="CuteEditor_ColorPicker_ButtonOver(this);" Visible="true"
							OnClick="NewTemplate_Click" />
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
				<tr>
					<td valign="top" nowrap width="250">
						<div style="BORDER: 1.5pt inset;  VERTICAL-ALIGN: middle; OVERFLOW: auto; WIDTH: 100%; HEIGHT: 240px; Padding: 0 0 0 0; BACKGROUND-COLOR: white">
							<asp:Table ID="FoldersAndFiles" Runat="server" CellSpacing="1" CellPadding="1" Width="100%" CssClass="sortable">
								<asp:TableRow BackColor="#f0f0f0">
									<asp:TableHeaderCell Width="16px" >
						<asp:ImageButton ID="Delete" Runat="server" AlternateText="Delete the selected files/directories"
							onMouseOver="CuteEditor_ColorPicker_ButtonOver(this);" ImageUrl="../images/s_cut.gif"
							Visible="true" OnClick="Delete_Click" />
									</asp:TableHeaderCell>
									<asp:TableHeaderCell Width="16px" >
						<asp:ImageButton ID="DoRefresh" Runat="server" AlternateText="[[Refresh]]" ImageUrl="../images/s_refresh.gif"
							onMouseOver="CuteEditor_ColorPicker_ButtonOver(this);" Visible="true"
							OnClick="DoRefresh_Click" />
									</asp:TableHeaderCell>
									<asp:TableHeaderCell ID="name_Cell" Width="136px" CssClass="filelistHeadCol">[[Name]]</asp:TableHeaderCell>
									<asp:TableHeaderCell ID="size_Cell" Width="72px" CssClass="filelistHeadCol">[[Count]]/[[Size]]</asp:TableHeaderCell>
									<asp:TableHeaderCell ID="op_Cell"  Width="16px">&nbsp;</asp:TableHeaderCell>
									<asp:TableHeaderCell ID="op_Cell2"  Width="16px">&nbsp;</asp:TableHeaderCell>
								</asp:TableRow>
							</asp:Table>
						</div>
					</td>
					<td width="10">
					</td>
					<td valign="top">						
						<div style="BORDER: 1.5pt inset; VERTICAL-ALIGN: top; OVERFLOW: auto;WIDTH: 360px; HEIGHT: 240px; BACKGROUND-COLOR: white;">
							<div id="divpreview"></div>
						</div>
					</td>
				</tr>
			</table>
			<br>
			<table border="0" cellspacing="2" cellpadding="0" width="98%" align="center">
				<tr>
					<td valign="top">						
					</td>
					<td width="10">
					</td>
					<td valign="top">
						<input type="hidden" id="TargetUrl" size="40" name="TargetUrl" runat="server">
						<fieldset runat="server" id="fieldsetUpload">
							<legend>
								[[Upload]] (Max file size allowed
								<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxTemplateSize * 1024)%>
								)</legend>
							<table border="0" cellspacing="2" cellpadding="0" width="98%" align="center" class="normal">
								<tr>
									<td valign="top" width="54%" style="FONT-SIZE: 8pt; VERTICAL-ALIGN: middle;">
										<asp:Label ID="Label_PictureUpload" Runat="server">&nbsp;</asp:Label>
										<input id="InputFile" size="40" type="file" runat="server" style="HEIGHT:20px" NAME="InputFile">&nbsp;&nbsp;<asp:Button ID="uploadButton" Text="[[Upload]]" Runat="server" OnClick="uploadButton_Click" />&nbsp;
									</td>
								</tr>
								<tr>
									<td height="5">
									</td>
								</tr>
								<tr>
									<td>
										<nobr>
											Max Upload folder size is : <%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxTemplateFolderSize * 1024)%>.
											Used: <%= CuteEditor.Impl.FileStorage.FormatSize(fs.GetDirectorySize(fs.VirtualRoot)) %>
											<span style="background-color:green;height:3px;width:40px;font-size:3px">
												<span style="background-color:red;height:3px;width:<%= GetUsedSpaceBarWidth() %>px;font-size:3px"></span>
											</span>
										</nobr>
									</td>
								</tr>
							</table>
						</fieldset>
						<p align="center">
							<input class="inputbuttoninsert" type="button" value="[[Insert]]" onclick="do_insert()"	id="Button1">&nbsp;&nbsp;&nbsp; 
							<input class="inputbuttoncancel" type="button" value="[[Cancel]]" onclick="do_cancel()"	id="Button2">
						</p>
					</td>
				</tr>
			</table>
		</form>
		<script runat="server">
	protected override void InitOfType()
	{
		fs.VirtualRoot=CuteEditor.EditorUtility.ProcessWebPath(Context,null,secset.TemplateGalleryPath).TrimEnd('/')+"/";
	}
    protected override void GetFiles(ArrayList files)
    {
        files.AddRange(fs.GetFileItems(CurrentDirectory, "*.htm"));
    }
    protected override bool AllowFileName(string filename)
    {
        filename = filename.ToLower();
        return filename.EndsWith(".htm") || filename.EndsWith(".html");
    }
    protected override string CheckUploadData(ref byte[] data)
    {
		if (fs.GetDirectorySize(fs.VirtualRoot) >= secset.MaxTemplateFolderSize * 1024)
           return "Template folder size exceeds the limit: "+ CuteEditor.Impl.FileStorage.FormatSize(secset.MaxTemplateFolderSize * 1024);

		if (data.Length >= secset.MaxTemplateSize * 1024)
            return "Template size exceeds "+CuteEditor.Impl.FileStorage.FormatSize(secset.MaxTemplateSize * 1024)+" limit: "+ CuteEditor.Impl.FileStorage.FormatSize(data.Length);
        return null;
    }
    
    protected int GetUsedSpaceBarWidth()
    {
      int w = Convert.ToInt32(40*fs.GetDirectorySize(fs.VirtualRoot)/(secset.MaxTemplateFolderSize * 1024));
      if(w<1)
		w=1;
		
	  if(w>40)
		w=40;
		
      return w;      
    }
		</script>
		<script src="addvars.js"></script>
	<script>
		var OxOcf51=["dialogArguments","","DIV","innerHTML","SCRIPT","all","length","innerText","zoom","style"];var editor=top[OxOcf51[0x0]];var htmlcode=OxOcf51[0x1]; function do_preview(Oxb0){ htmlcode=Oxb0 ;var div=document.createElement(OxOcf51[0x2]); div[OxOcf51[0x3]]=Oxb0 ;var arr=div[OxOcf51[0x5]].tags(OxOcf51[0x4]);for(var i=0x0;i<arr[OxOcf51[0x6]];i++){ arr.item(i).removeNode(true) ;} ; htmlcode=div[OxOcf51[0x3]] ;try{ divpreview[OxOcf51[0x3]]=htmlcode ;} catch(er){ htmlcode=div[OxOcf51[0x7]] ;} ;}  ; function do_insert(){ editor.PasteHTML(htmlcode) ; top.close() ;}  ; function do_cancel(){ top.close() ;}  ; function Zoom_In(){if(divpreview[OxOcf51[0x9]][OxOcf51[0x8]]!=0x0){ divpreview[OxOcf51[0x9]][OxOcf51[0x8]]*=1.1 ;} else { divpreview[OxOcf51[0x9]][OxOcf51[0x8]]=1.1 ;} ;}  ; function Zoom_Out(){if(divpreview[OxOcf51[0x9]][OxOcf51[0x8]]!=0x0){ divpreview[OxOcf51[0x9]][OxOcf51[0x8]]*=0.8 ;} else { divpreview[OxOcf51[0x9]][OxOcf51[0x8]]=0.8 ;} ;}  ;
	</script>
	</body>
</HTML>
