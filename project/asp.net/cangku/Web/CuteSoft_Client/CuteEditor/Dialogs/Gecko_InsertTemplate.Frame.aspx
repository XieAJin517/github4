<%@ Page Language="C#" Inherits="CuteEditor.Dialogs.TemplateBrowserPage" %>
<HTML>
	<HEAD>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)">
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)">
		<link rel="stylesheet" href='style.css'>
		<script src=Gecko_dialog.js></script><script src=../_shared.js></script>
		<script src="filebrowserpage.js"></script>
		<script src="sorttable.js"></script>
		<script language="JavaScript">
		var OxO16ee=["disabled","target","[[Disabled]]","[[SpecifyNewFolderName]]","","value","hiddenActionData","[[SpecifyNewFileName]]","OuterEditorFull.aspx?\x3C%= Request.ServerVariables[","] %\x3E\x26f=","width=740,height=420,resizable=0,toolbars=0,menubar=0,status=0","returnValue","href","location","[[CopyMoveto]]","/","[[AreyouSureDelete]]","parentNode","isdir","text","hiddenAction","rename","path","True","False",":","cancelBubble","width=760,height=420,resizable=0,toolbars=0,menubar=0,status=0","backgroundColor","style","#eeeeee","tagName","INPUT","changedir","htmlcode","hiddenFile","url","TargetUrl"]; window.resizeTo(0x28a,0x1a4) ; function CreateDir_click(){if(event[OxO16ee[0x1]][OxO16ee[0x0]]){ alert(OxO16ee[0x2]) ;return false;} ;var Ox2f4=prompt(OxO16ee[0x3],OxO16ee[0x4]);if(Ox2f4){ document.getElementById(OxO16ee[0x6])[OxO16ee[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function NewTemplate_Click(){var Ox2f4=prompt(OxO16ee[0x7],OxO16ee[0x4]);if(Ox2f4){var Ox4e0=OxO16ee[0x8]; QUERY_STRING ; OxO16ee[0x9]+Ox2f4+OxO16ee[0x4] ; openModalWindow(Ox4e0,null,OxO16ee[0xa],function (Ox2d9,Ox18e){if(Ox18e[OxO16ee[0xb]]){ window[OxO16ee[0xd]][OxO16ee[0xc]]=window[OxO16ee[0xd]][OxO16ee[0xc]] ;} ;} ) ;return true;} else {return false;} ;}  ; function Move_click(){if(event[OxO16ee[0x1]][OxO16ee[0x0]]){ alert(OxO16ee[0x2]) ;return false;} ;var Ox2f4=prompt(OxO16ee[0xe],OxO16ee[0xf]);if(Ox2f4){ document.getElementById(OxO16ee[0x6])[OxO16ee[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Copy_click(){if(event[OxO16ee[0x1]][OxO16ee[0x0]]){ alert(OxO16ee[0x2]) ;return false;} ;var Ox2f4=prompt(OxO16ee[0xe],OxO16ee[0xf]);if(Ox2f4){ document.getElementById(OxO16ee[0x6])[OxO16ee[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Delete_click(){if(event[OxO16ee[0x1]][OxO16ee[0x0]]){ alert(OxO16ee[0x2]) ;return false;} ;return confirm(OxO16ee[0x10]);}  ; function RenImg_click(Oxba){if(Oxba[OxO16ee[0x0]]){ alert(OxO16ee[0x2]) ;return false;} ; row=Oxba[OxO16ee[0x11]][OxO16ee[0x11]] ;var name;if(row[OxO16ee[0x12]]){ name=prompt(OxO16ee[0x3],row.text) ;} else { name=prompt(OxO16ee[0x3],row.text) ;} ;if(name&&name!=row[OxO16ee[0x13]]){ document.getElementById(OxO16ee[0x14])[OxO16ee[0x5]]=OxO16ee[0x15] ; document.getElementById(OxO16ee[0x6])[OxO16ee[0x5]]=(row[OxO16ee[0x12]]?OxO16ee[0x17]:OxO16ee[0x18])+OxO16ee[0x19]+row[OxO16ee[0x16]]+OxO16ee[0x19]+name ; postback() ;} ; event[OxO16ee[0x1a]]=true ;}  ; function EditImg_click(Oxba){ row=Oxba[OxO16ee[0x11]][OxO16ee[0x11]] ;if(row.getAttribute(OxO16ee[0x16])){var Ox4e0=OxO16ee[0x8]; QUERY_STRING ; OxO16ee[0x9]+row.getAttribute(OxO16ee[0x16])+OxO16ee[0x4] ; openModalWindow(Ox4e0,null,OxO16ee[0x1b],function (Ox2d9,Ox18e){if(Ox18e[OxO16ee[0xb]]){ window[OxO16ee[0xd]][OxO16ee[0xc]]=window[OxO16ee[0xd]][OxO16ee[0xc]] ;} ;} ) ;return true;} else {return false;} ;}  ; function row_over(Oxc4){ Oxc4[OxO16ee[0x1d]][OxO16ee[0x1c]]=OxO16ee[0x1e] ;}  ; function row_out(Oxc4){ Oxc4[OxO16ee[0x1d]][OxO16ee[0x1c]]=OxO16ee[0x4] ;}  ; function row_click(Oxc4){if(Oxc4[OxO16ee[0x12]]){if(event[OxO16ee[0x1]][OxO16ee[0x1f]]==OxO16ee[0x20]){return ;} ; document.getElementById(OxO16ee[0x14])[OxO16ee[0x5]]=OxO16ee[0x21] ; document.getElementById(OxO16ee[0x6])[OxO16ee[0x5]]=Oxc4.getAttribute(OxO16ee[0x16]) ; postback() ;} else {var htmlcode=Oxc4.getAttribute(OxO16ee[0x22]); document.getElementById(OxO16ee[0x23])[OxO16ee[0x5]]=Oxc4.getAttribute(OxO16ee[0x16]) ; document.getElementById(OxO16ee[0x25])[OxO16ee[0x5]]=Oxc4.getAttribute(OxO16ee[0x24]) ; do_preview(htmlcode) ;} ;}  ; function postback(){ <%=Page.GetPostBackEventReference(hiddenAction,"")%> ;}  ;
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
			width: 355px;
			height: 235px;
			overflow:hidden;
			text-align: left;
			vertical-align: top;
			padding: 0px;
			margin: 0px;
			background-color: white;
		}
		</style>
	</HEAD>
	<body>
		<form runat="server" enctype="multipart/form-data" id="Form1">
			<!-- start hidden -->
			<script>
        var OxOc6cf=["onload","value","hiddenAlert","","hiddenAction","hiddenActionData"]; window[OxOc6cf[0x0]]=reset_hiddens ; function reset_hiddens(){if(document.getElementById(OxOc6cf[0x2])[OxOc6cf[0x1]]){ alert(document.getElementById(OxOc6cf[0x2]).value) ;} ; document.getElementById(OxOc6cf[0x2])[OxOc6cf[0x1]]=OxOc6cf[0x3] ; document.getElementById(OxOc6cf[0x4])[OxOc6cf[0x1]]=OxOc6cf[0x3] ; document.getElementById(OxOc6cf[0x5])[OxOc6cf[0x1]]=OxOc6cf[0x3] ;}  ;
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
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)" Visible="true"
							OnClick="CreateDir_Click" />
						<asp:ImageButton ID="Copy" Runat="server" AlternateText="[[Copyfiles]]" ImageUrl="../images/Copy.gif"
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)" Visible="true"
							OnClick="Copy_Click" />
						<asp:ImageButton ID="Move" Runat="server" AlternateText="[[Movefiles]]" ImageUrl="../images/move.gif"
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)" Visible="true"
							OnClick="Move_Click" />
						<asp:ImageButton ID="NewTemplate" Runat="server" AlternateText="[[NewTemplate]]" ImageUrl="../images/newtemplate.gif"
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)"  Visible="true"
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
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)" ImageUrl="../images/s_cut.gif"
							Visible="true" OnClick="Delete_Click" />
									</asp:TableHeaderCell>
									<asp:TableHeaderCell Width="16px" >
						<asp:ImageButton ID="DoRefresh" Runat="server" AlternateText="[[Refresh]]" ImageUrl="../images/s_refresh.gif"
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)" Visible="true"
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
										<table cellpadding=0 cellspacing=0 border=0>
											<tr>
												<td>
													<nobr>
														Max Upload folder size is : <%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxTemplateFolderSize * 1024)%>.
														Used: <%= CuteEditor.Impl.FileStorage.FormatSize(fs.GetDirectorySize(fs.VirtualRoot)) %>
													</nobr>
												</td>
												<td>
													<div style="background-color:green;height:3px;width:40px;font-size:3px">
														<div style="background-color:red;height:3px;width:<%= GetUsedSpaceBarWidth() %>px;font-size:3px"></div>
													</div>
												</td>
											</tr>
										</table>
									
									</td>
								</tr>
							</table>
						</fieldset>
						<p align="center">
							<input class="inputbuttoninsert" type="button" value="[[Insert]]" onclick="do_insert()"
								id="Button1" runat="server" NAME="Button1">&nbsp;&nbsp;&nbsp; <input class="inputbuttoncancel" type="button" value="[[Cancel]]" onclick="do_cancel()"
								id="Button2" runat="server" NAME="Button2">
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
        return filename.EndsWith(".htm");
        return filename.EndsWith(".html");
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
		var OxO39d4=["","dialogArguments","DIV","innerHTML","innerText"];var htmlcode=OxO39d4[0x0];var editor=top[OxO39d4[0x1]]; function do_preview(Oxb0){ htmlcode=Oxb0 ;var div=document.createElement(OxO39d4[0x2]); div[OxO39d4[0x3]]=Oxb0 ; htmlcode=div[OxO39d4[0x3]] ;try{ divpreview[OxO39d4[0x3]]=htmlcode ;} catch(er){ htmlcode=div[OxO39d4[0x4]] ;} ;}  ; function do_insert(){ editor.PasteHTML(htmlcode) ; top.close() ;}  ; function do_cancel(){ top.close() ;}  ;
		</script>
	</body>
</HTML>
