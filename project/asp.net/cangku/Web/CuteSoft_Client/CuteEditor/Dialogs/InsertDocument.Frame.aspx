<%@ Page Language="C#" Inherits="CuteEditor.Dialogs.FileBrowserPage" %>
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
		var OxO5fd0=["disabled","srcElement","[[Disabled]]","[[SpecifyNewFolderName]]","","value","hiddenActionData","[[CopyMoveto]]","/","[[AreyouSureDelete]]","parentNode","isdir","text","hiddenAction","rename","path","True","False",":","cancelBubble","backgroundColor","style","#eeeeee","tagName","INPUT","changedir","hiddenFile","url","TargetUrl"]; function CreateDir_click(){if(event[OxO5fd0[0x1]][OxO5fd0[0x0]]){ alert(OxO5fd0[0x2]) ;return false;} ;var Ox2f4=prompt(OxO5fd0[0x3],OxO5fd0[0x4]);if(Ox2f4){ document.getElementById(OxO5fd0[0x6])[OxO5fd0[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Move_click(){if(event[OxO5fd0[0x1]][OxO5fd0[0x0]]){ alert(OxO5fd0[0x2]) ;return false;} ;var Ox2f4=prompt(OxO5fd0[0x7],OxO5fd0[0x8]);if(Ox2f4){ document.getElementById(OxO5fd0[0x6])[OxO5fd0[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Copy_click(){if(event[OxO5fd0[0x1]][OxO5fd0[0x0]]){ alert(OxO5fd0[0x2]) ;return false;} ;var Ox2f4=prompt(OxO5fd0[0x7],OxO5fd0[0x8]);if(Ox2f4){ document.getElementById(OxO5fd0[0x6])[OxO5fd0[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Delete_click(){if(event[OxO5fd0[0x1]][OxO5fd0[0x0]]){ alert(OxO5fd0[0x2]) ;return false;} ;return confirm(OxO5fd0[0x9]);}  ; function EditImg_click(Oxba){if(Oxba[OxO5fd0[0x0]]){ alert(OxO5fd0[0x2]) ;return false;} ; row=Oxba[OxO5fd0[0xa]][OxO5fd0[0xa]] ;var name;if(row[OxO5fd0[0xb]]){ name=prompt(OxO5fd0[0x3],row.text) ;} else { name=prompt(OxO5fd0[0x3],row.text) ;} ;if(name&&name!=row[OxO5fd0[0xc]]){ document.getElementById(OxO5fd0[0xd])[OxO5fd0[0x5]]=OxO5fd0[0xe] ; document.getElementById(OxO5fd0[0x6])[OxO5fd0[0x5]]=(row[OxO5fd0[0xb]]?OxO5fd0[0x10]:OxO5fd0[0x11])+OxO5fd0[0x12]+row[OxO5fd0[0xf]]+OxO5fd0[0x12]+name ; postback() ;} ; event[OxO5fd0[0x13]]=true ;}  ; function row_over(Oxc4){ Oxc4[OxO5fd0[0x15]][OxO5fd0[0x14]]=OxO5fd0[0x16] ;}  ; function row_out(Oxc4){ Oxc4[OxO5fd0[0x15]][OxO5fd0[0x14]]=OxO5fd0[0x4] ;}  ; function row_click(Oxc4){if(Oxc4[OxO5fd0[0xb]]){if(event[OxO5fd0[0x1]][OxO5fd0[0x17]]==OxO5fd0[0x18]){return ;} ; document.getElementById(OxO5fd0[0xd])[OxO5fd0[0x5]]=OxO5fd0[0x19] ; document.getElementById(OxO5fd0[0x6])[OxO5fd0[0x5]]=Oxc4.getAttribute(OxO5fd0[0xf]) ; postback() ;} else { document.getElementById(OxO5fd0[0x1a])[OxO5fd0[0x5]]=Oxc4.getAttribute(OxO5fd0[0xf]) ; document.getElementById(OxO5fd0[0x1c])[OxO5fd0[0x5]]=Oxc4.getAttribute(OxO5fd0[0x1b]) ; do_preview() ;} ;}  ; function postback(){ <%=Page.GetPostBackEventReference(hiddenAction,"")%> ;}  ;
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
		</style>
	</HEAD>
	<body>
		<form runat="server" enctype="multipart/form-data" id="Form1">
			<!-- start hidden -->
			<script>
        var OxOcfd3=["onload","value","hiddenAlert","","hiddenAction","hiddenActionData"]; window[OxOcfd3[0x0]]=reset_hiddens ; function reset_hiddens(){if(document.getElementById(OxOcfd3[0x2])[OxOcfd3[0x1]]){ alert(document.getElementById(OxOcfd3[0x2]).value) ;} ; document.getElementById(OxOcfd3[0x2])[OxOcfd3[0x1]]=OxOcfd3[0x3] ; document.getElementById(OxOcfd3[0x4])[OxOcfd3[0x1]]=OxOcfd3[0x3] ; document.getElementById(OxOcfd3[0x5])[OxOcfd3[0x1]]=OxOcfd3[0x3] ;}  ;
			</script>
			<input type="hidden" runat="server" id="hiddenDirectory" NAME="hiddenDirectory">
			<input type="hidden" runat="server" id="hiddenFile" NAME="hiddenFile"> <input type="hidden" runat="server" enableviewstate="false" id="hiddenAlert" NAME="hiddenAlert">
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAction" onserverchange="hiddenAction_ServerChange"
				NAME="hiddenAction"> <input type="hidden" runat="server" enableviewstate="false" id="hiddenActionData" NAME="hiddenActionData">
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
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
				<tr>
					<td valign="top" nowrap width="270">
						<div style="BORDER: 1.5pt inset; VERTICAL-ALIGN: middle; OVERFLOW: auto; WIDTH: 270; HEIGHT: 240px; BACKGROUND-COLOR: white">
							<asp:Table ID="FoldersAndFiles" Runat="server" CellSpacing="1" CellPadding="1" Width="100%" CssClass="sortable">
								<asp:TableRow BackColor="#f0f0f0">
									<asp:TableHeaderCell Width="16px" >
						<asp:ImageButton ID="Delete" Runat="server" AlternateText="[[Deletefiles]]"
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
								</asp:TableRow>
							</asp:Table>
						</div>
					</td>
					<td width="10">
					</td>
					<td valign="top">
						<div style="paddng: 0 0 0 0; BORDER: 1.5pt inset; VERTICAL-ALIGN: top; OVERFLOW: auto; WIDTH: 300px; BORDER-BOTTOM: 1.5pt inset; HEIGHT: 240px; BACKGROUND-COLOR: white; TEXT-ALIGN: center">
							<div id="divpreview" style="BACKGROUND-COLOR: white" height="100%" width="100%">
								&nbsp;</div>
						</div>
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="2" cellpadding="0" width="98%" align="center">
				<tr>
					<td valign="top">
						<fieldset align="center">
							<legend>
								[[Properties]]</legend>
							<table border="0" cellpadding="5" cellspacing="0" ID="Table3">
								<tr>
									<td>
										<table border="0" cellpadding="2" cellspacing="0" ID="Table4" class="normal">
											<TR>
												<TD>[[Target]]</TD>
												<TD><SELECT id="sel_target">
														<OPTION value="">[[NotSet]]</OPTION>
														<OPTION value="_blank">[[Newwindow]]</OPTION>
														<OPTION value="_self">[[Samewindow]]</OPTION>
														<OPTION value="_top">[[Topmostwindow]]</OPTION>
														<OPTION value="_parent">[[Parentwindow]]</OPTION>
													</SELECT></TD>
											</TR>
											<tr>
												<td>[[Color]]:</td>
												<td><input type="text" id="inp_color" name="inp_color" size="7" style="WIDTH:57px" runat="server">
													<img src="../images/colorpicker.gif" id="inp_color_preview" align="absMiddle" style='BEHAVIOR:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'
														oncolorchange="inp_color.value=this.selectedColor; inp_color.style.backgroundColor=this.selectedColor;inp_color_preview.style.backgroundColor=this.selectedColor">
												</td>
											</tr>
											<tr>
												<td>[[CssClass]]:</td>
												<td><INPUT id="inc_class" type="text" size="14" style="WIDTH:80px" name="inc_class"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
					</td>
					<td width="10">
					</td>
					<td valign="top">
						<fieldset align="center">
							<legend>
								[[Insert]]</legend>
							<table border="0" cellpadding="5" cellspacing="0" id="Table5">
								<tr>
									<td>
										<TABLE id="Table8" cellSpacing="0" cellPadding="2" border="0" class="normal">
											<TR>
												<TD vAlign="middle">URL:</TD>
												<TD><INPUT id="TargetUrl" onpropertychange="do_preview()" type="text" size="40" name="TargetUrl"
														runat="server"></TD>
											</TR>
											<TR>
												<TD vAlign="middle">[[Title]]:</TD>
												<TD vAlign="middle"><INPUT id="inp_title" type="text" size="40" name="inp_title"></TD>
											</TR>
										</TABLE>
									</td>
								</tr>
							</table>
						</fieldset>
						<fieldset align="center" id="fieldsetUpload">
							<legend>
								[[Upload]] (Max file size allowed
								<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxDocumentSize * 1024)%>
								)</legend>
							<table border="0" cellspacing="2" cellpadding="0" width="98%" align="center" class="normal">
								<tr>
									<td valign="top" width="54%" style="FONT-SIZE: 8pt; VERTICAL-ALIGN: middle; FONT-FAMILY: MS Sans Serif">
										<asp:Label ID="Label_PictureUpload" Runat="server">&nbsp;</asp:Label>
										<input id="InputFile" size="40" type="file" runat="server" style="HEIGHT:20px">&nbsp;
									</td>
								</tr>
								<tr>
									<td height="8">
									</td>
								</tr>
								<tr>
									<td>
										<asp:Button ID="uploadButton" Text="[[Upload]]" Runat="server" OnClick="uploadButton_Click" />&nbsp;
										<asp:Label ID="uploadResult" Runat="server"></asp:Label>
									</td>
								</tr>
								<tr>
									<td height="5">
									</td>
								</tr>
								<tr>
									<td>
											<nobr>
											Max Upload folder size is : <%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxDocumentFolderSize * 1024)%>.
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
							<input class="inputbuttoninsert" type="button" value="[[Insert]]" onclick="do_insert()"
								id="Button1" NAME="Button1">&nbsp;&nbsp;&nbsp; <input class="inputbuttoncancel" type="button" value="[[Cancel]]" onclick="do_cancel()"
								id="Button2" NAME="Button2">
						</p>
					</td>
				</tr>
			</table>
		</form>
		<script runat="server">
	protected override void InitOfType()
	{
		fs.VirtualRoot=CuteEditor.EditorUtility.ProcessWebPath(Context,null,secset.FilesGalleryPath).TrimEnd('/')+"/";
	}
    protected override void GetFiles(ArrayList files)
    {
        foreach (string ext in secset.DocumentFilters)
        {
            if (ext == null || ext.Length == 0) continue;
            files.AddRange(fs.GetFileItems(CurrentDirectory, "*" + ext));
        }        
        
    }
    protected override bool AllowFileName(string filename)
    {
        filename = filename.ToLower();
        foreach (string ext in secset.DocumentFilters)
        {
            if (ext == null || ext.Length == 0) continue;
            if(filename.EndsWith(ext.ToLower()))
                return true;
        }
        return false;
    }
    protected override string CheckUploadData(ref byte[] data)
    {
		if (fs.GetDirectorySize(fs.VirtualRoot) >= secset.MaxDocumentFolderSize * 1024)
           return "File folder size exceeds the limit: "+ CuteEditor.Impl.FileStorage.FormatSize(secset.MaxDocumentFolderSize * 1024);

		if (data.Length >= secset.MaxDocumentSize * 1024)
            return "File size exceeds "+CuteEditor.Impl.FileStorage.FormatSize(secset.MaxDocumentSize * 1024)+" limit: "+ CuteEditor.Impl.FileStorage.FormatSize(data.Length);
        return null;
    }
    
    protected int GetUsedSpaceBarWidth()
    {
      int w = Convert.ToInt32(40*fs.GetDirectorySize(fs.VirtualRoot)/(secset.MaxDocumentFolderSize * 1024));
      if(w<1)
		w=1;
		
	  if(w>40)
		w=40;
		
      return w;      
    }
		</script>
		<script src="addvars.js"></script>
		<script>

			var OxOcd4d=["dialogArguments","TargetUrl","sel_target","inp_color","inc_class","inp_title","inp_color_preview","frameloaded","color","style","value","backgroundColor","className","title","target","href","innerHTML","",".","\x3CIMG src=\x27","\x27\x3E","\x3Cembed src=\x22","\x22 quality=\x22high\x22 width=\x2290%\x22 height=\x2290%\x22 type=\x22application/x-shockwave-flash\x22 pluginspage=\x22http://www.macromedia.com/go/getflashplayer\x22\x3E\x3C/embed\x3E\x0A","\x3Cembed name=\x22MediaPlayer1\x22 src=\x22","\x22 autostart=-1 showcontrols=-1  type=\x22application/x-mplayer2\x22 width=\x22240\x22 height=\x22200\x22 pluginspage=\x22http://www.microsoft.com/Windows/MediaPlayer\x22 \x3E\x3C/embed\x3E\x0A",".mpeg",".mp3",".mpg",".avi",".swf",".bmp",".png",".gif",".jpg",".jpeg","\x3Cp\x3E\x26nbsp;\x3C/p\x3E","\x3Cp\x3E\x26#160;\x3C/p\x3E","\x3Cp\x3E\x3C/p\x3E","\x3Cdiv\x3E\x26#160;\x3C/div\x3E","\x3Cdiv\x3E\x26nbsp;\x3C/div\x3E","\x3Cdiv\x3E\x3C/div\x3E","returnValue","zoom"];var element=top[OxOcd4d[0x0]];var TargetUrl=document.getElementById(OxOcd4d[0x1]);var sel_target=document.getElementById(OxOcd4d[0x2]);var inp_color=document.getElementById(OxOcd4d[0x3]);var inc_class=document.getElementById(OxOcd4d[0x4]);var inp_title=document.getElementById(OxOcd4d[0x5]);var inp_color_preview=document.getElementById(OxOcd4d[0x6]);if(!top[OxOcd4d[0x7]]){ top[OxOcd4d[0x7]]=true ;if(element[OxOcd4d[0x9]][OxOcd4d[0x8]]){ inp_color[OxOcd4d[0xa]]=element[OxOcd4d[0x9]][OxOcd4d[0x8]] ; inp_color[OxOcd4d[0x9]][OxOcd4d[0xb]]=inp_color[OxOcd4d[0xa]] ; inp_color_preview[OxOcd4d[0x9]][OxOcd4d[0xb]]=inp_color[OxOcd4d[0xa]] ;} ;if(element[OxOcd4d[0xc]]){ inc_class[OxOcd4d[0xa]]=element[OxOcd4d[0xc]] ;} ;if(element[OxOcd4d[0xd]]){ inp_title[OxOcd4d[0xa]]=element[OxOcd4d[0xd]] ;} ;if(element[OxOcd4d[0xe]]){ sel_target[OxOcd4d[0xa]]=element[OxOcd4d[0xe]] ;} ; TargetUrl[OxOcd4d[0xa]]=element[OxOcd4d[0xf]] ;} ; do_preview() ; function do_preview(){ divpreview[OxOcd4d[0x10]]=OxOcd4d[0x11] ;var Oxbb=TargetUrl[OxOcd4d[0xa]];if(Oxbb==OxOcd4d[0x11]){return ;} ;var Ox4db=Oxbb.substring(Oxbb.lastIndexOf(OxOcd4d[0x12])).toLowerCase();switch(Ox4db){case OxOcd4d[0x22]:case OxOcd4d[0x21]:case OxOcd4d[0x20]:case OxOcd4d[0x1f]:case OxOcd4d[0x1e]: divpreview[OxOcd4d[0x10]]=OxOcd4d[0x13]+Oxbb+OxOcd4d[0x14] ;break ;case OxOcd4d[0x1d]:var Ox4dc=OxOcd4d[0x15]+Oxbb+OxOcd4d[0x16]; divpreview[OxOcd4d[0x10]]=Ox4dc ;break ;case OxOcd4d[0x1c]:case OxOcd4d[0x1b]:case OxOcd4d[0x1a]:case OxOcd4d[0x19]:var Oxbe=OxOcd4d[0x17]+Oxbb+OxOcd4d[0x18]; divpreview[OxOcd4d[0x10]]=Oxbe ;break ;;;;;;;;;;;} ;}  ; function do_insert(){ element[OxOcd4d[0xc]]=inc_class[OxOcd4d[0xa]] ; element[OxOcd4d[0xe]]=sel_target[OxOcd4d[0xa]] ; element[OxOcd4d[0xd]]=inp_title[OxOcd4d[0xa]] ; element[OxOcd4d[0xf]]=TargetUrl[OxOcd4d[0xa]] ;if(element[OxOcd4d[0xd]]==OxOcd4d[0x11]){ element.removeAttribute(OxOcd4d[0xd]) ;} ;if(element[OxOcd4d[0xe]]==OxOcd4d[0x11]){ element.removeAttribute(OxOcd4d[0xe]) ;} ;if(element[OxOcd4d[0xc]]==OxOcd4d[0x11]){ element.removeAttribute(OxOcd4d[0xc]) ;} ;try{ element[OxOcd4d[0x9]][OxOcd4d[0x8]]=inp_color[OxOcd4d[0xa]] ;} catch(er){ element[OxOcd4d[0x9]][OxOcd4d[0x8]]=OxOcd4d[0x11] ;} ;var Oxb0=element[OxOcd4d[0x10]];switch(Oxb0.toLowerCase()){case OxOcd4d[0x28]:case OxOcd4d[0x27]:case OxOcd4d[0x26]:case OxOcd4d[0x25]:case OxOcd4d[0x24]:case OxOcd4d[0x23]: element[OxOcd4d[0x10]]=OxOcd4d[0x11] ;break ;default:break ;;;;;;;;} ; top[OxOcd4d[0x29]]=element ; top.close() ;}  ; function do_cancel(){ top[OxOcd4d[0x29]]=null ; top.close() ;}  ; function Zoom_In(){if(divpreview[OxOcd4d[0x9]][OxOcd4d[0x2a]]!=0x0){ divpreview[OxOcd4d[0x9]][OxOcd4d[0x2a]]*=1.2 ;} else { divpreview[OxOcd4d[0x9]][OxOcd4d[0x2a]]=1.2 ;} ;}  ; function Zoom_Out(){if(divpreview[OxOcd4d[0x9]][OxOcd4d[0x2a]]!=0x0){ divpreview[OxOcd4d[0x9]][OxOcd4d[0x2a]]*=0.8 ;} else { divpreview[OxOcd4d[0x9]][OxOcd4d[0x2a]]=0.8 ;} ;}  ;
		</script>
	</body>
</HTML>
