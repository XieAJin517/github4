<%@ Page Language="C#" Inherits="CuteEditor.Dialogs.FileBrowserPage" %>
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
		var OxOa63a=["disabled","target","[[Disabled]]","[[SpecifyNewFolderName]]","","value","hiddenActionData","[[CopyMoveto]]","/","[[AreyouSureDelete]]","parentNode","isdir","text","hiddenAction","rename","path","True","False",":","cancelBubble","backgroundColor","style","#eeeeee","tagName","INPUT","changedir","hiddenFile","url","TargetUrl"]; function CreateDir_click(){if(event[OxOa63a[0x1]][OxOa63a[0x0]]){ alert(OxOa63a[0x2]) ;return false;} ;var Ox2f4=prompt(OxOa63a[0x3],OxOa63a[0x4]);if(Ox2f4){ document.getElementById(OxOa63a[0x6])[OxOa63a[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Move_click(){if(event[OxOa63a[0x1]][OxOa63a[0x0]]){ alert(OxOa63a[0x2]) ;return false;} ;var Ox2f4=prompt(OxOa63a[0x7],OxOa63a[0x8]);if(Ox2f4){ document.getElementById(OxOa63a[0x6])[OxOa63a[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Copy_click(){if(event[OxOa63a[0x1]][OxOa63a[0x0]]){ alert(OxOa63a[0x2]) ;return false;} ;var Ox2f4=prompt(OxOa63a[0x7],OxOa63a[0x8]);if(Ox2f4){ document.getElementById(OxOa63a[0x6])[OxOa63a[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Delete_click(){if(event[OxOa63a[0x1]][OxOa63a[0x0]]){ alert(OxOa63a[0x2]) ;return false;} ;return confirm(OxOa63a[0x9]);}  ; function EditImg_click(Oxba){if(Oxba[OxOa63a[0x0]]){ alert(OxOa63a[0x2]) ;return false;} ; row=Oxba[OxOa63a[0xa]][OxOa63a[0xa]] ;var name;if(row[OxOa63a[0xb]]){ name=prompt(OxOa63a[0x3],row.text) ;} else { name=prompt(OxOa63a[0x3],row.text) ;} ;if(name&&name!=row[OxOa63a[0xc]]){ document.getElementById(OxOa63a[0xd])[OxOa63a[0x5]]=OxOa63a[0xe] ; document.getElementById(OxOa63a[0x6])[OxOa63a[0x5]]=(row[OxOa63a[0xb]]?OxOa63a[0x10]:OxOa63a[0x11])+OxOa63a[0x12]+row[OxOa63a[0xf]]+OxOa63a[0x12]+name ; postback() ;} ; event[OxOa63a[0x13]]=true ;}  ; function row_over(Oxc4){ Oxc4[OxOa63a[0x15]][OxOa63a[0x14]]=OxOa63a[0x16] ;}  ; function row_out(Oxc4){ Oxc4[OxOa63a[0x15]][OxOa63a[0x14]]=OxOa63a[0x4] ;}  ; function row_click(Oxc4){if(Oxc4[OxOa63a[0xb]]){if(event[OxOa63a[0x1]][OxOa63a[0x17]]==OxOa63a[0x18]){return ;} ; document.getElementById(OxOa63a[0xd])[OxOa63a[0x5]]=OxOa63a[0x19] ; document.getElementById(OxOa63a[0x6])[OxOa63a[0x5]]=Oxc4.getAttribute(OxOa63a[0xf]) ; postback() ;} else { document.getElementById(OxOa63a[0x1a])[OxOa63a[0x5]]=Oxc4.getAttribute(OxOa63a[0xf]) ; document.getElementById(OxOa63a[0x1c])[OxOa63a[0x5]]=Oxc4.getAttribute(OxOa63a[0x1b]) ; do_preview() ;} ;}  ; function postback(){ <%=Page.GetPostBackEventReference(hiddenAction,"")%> ;}  ;
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
        var OxO1be7=["onload","value","hiddenAlert","","hiddenAction","hiddenActionData"]; window[OxO1be7[0x0]]=reset_hiddens ; function reset_hiddens(){if(document.getElementById(OxO1be7[0x2])[OxO1be7[0x1]]){ alert(document.getElementById(OxO1be7[0x2]).value) ;} ; document.getElementById(OxO1be7[0x2])[OxO1be7[0x1]]=OxO1be7[0x3] ; document.getElementById(OxO1be7[0x4])[OxO1be7[0x1]]=OxO1be7[0x3] ; document.getElementById(OxO1be7[0x5])[OxO1be7[0x1]]=OxO1be7[0x3] ;}  ;
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
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)" Visible="true"
							OnClick="CreateDir_Click" />
						<asp:ImageButton ID="Copy" Runat="server" AlternateText="[[Copyfiles]]" ImageUrl="../images/Copy.gif"
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)" Visible="true"
							OnClick="Copy_Click" />
						<asp:ImageButton ID="Move" Runat="server" AlternateText="[[Movefiles]]" ImageUrl="../images/move.gif"
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)" Visible="true"
							OnClick="Move_Click" />
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
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)" ImageUrl="../images/s_cut.gif"
							Visible="true" OnClick="Delete_Click" />
									</asp:TableHeaderCell>
									<asp:TableHeaderCell Width="16px" >
						<asp:ImageButton ID="DoRefresh" Runat="server" AlternateText="[[Refresh]]" ImageUrl="../images/s_refresh.gif"
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)" Visible="true"
							OnClick="DoRefresh_Click" />
									</asp:TableHeaderCell>
									<asp:TableHeaderCell ID="name_Cell" Width="146px" CssClass="filelistHeadCol">[[Name]]</asp:TableHeaderCell>
									<asp:TableHeaderCell ID="size_Cell" Width="62px" CssClass="filelistHeadCol">[[Count]]/[[Size]]</asp:TableHeaderCell>
									<asp:TableHeaderCell ID="op_Cell"  Width="16px">&nbsp;</asp:TableHeaderCell>
								</asp:TableRow>
							</asp:Table>
						</div>
					</td>
					<td width="10">
					</td>
					<td valign="top">
						<div style="paddng: 0 0 0 0; BORDER: 1.5pt inset; VERTICAL-ALIGN: top; OVERFLOW: auto; WIDTH: 280px; BORDER-BOTTOM: 1.5pt inset; HEIGHT: 240px; BACKGROUND-COLOR: white; TEXT-ALIGN: center">
							<div id="divpreview" style="BACKGROUND-COLOR: white" height="100%" width="100%">
								&nbsp;</div>
						</div>
					</td>
				</tr>
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
												<td><input type="text" id="inp_color" name="inp_color" size="7" style="WIDTH:57px">	
													<img id="inp_color_preview" src="../images/colorpicker.gif" onclick="SelectColor('inp_color',this);" align="absMiddle">
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
										<table cellpadding="0" cellspacing="0" border="0">
											<tr>
												<td>
											<nobr>
											Max Upload folder size is : <%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxDocumentFolderSize * 1024)%>.
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

			var OxO21dd=["dialogArguments","TargetUrl","sel_target","inp_color","inc_class","inp_title","inp_color_preview","frameloaded","color","style","value","backgroundColor","className","title","target","href","innerHTML","",".","\x3CIMG src=\x27","\x27\x3E","\x3Cembed src=\x22","\x22 quality=\x22high\x22 width=\x2290%\x22 height=\x2290%\x22 type=\x22application/x-shockwave-flash\x22 pluginspage=\x22http://www.macromedia.com/go/getflashplayer\x22\x3E\x3C/embed\x3E\x0A","\x3Cembed name=\x22MediaPlayer1\x22 src=\x22","\x22 autostart=-1 showcontrols=-1  type=\x22application/x-mplayer2\x22 width=\x22240\x22 height=\x22200\x22 pluginspage=\x22http://www.microsoft.com/Windows/MediaPlayer\x22 \x3E\x3C/embed\x3E\x0A",".mpeg",".mp3",".mpg",".avi",".swf",".bmp",".png",".gif",".jpg",".jpeg","name","link","returnValue","../colorpicker.aspx"];var element=top[OxO21dd[0x0]];var TargetUrl=document.getElementById(OxO21dd[0x1]);var sel_target=document.getElementById(OxO21dd[0x2]);var inp_color=document.getElementById(OxO21dd[0x3]);var inc_class=document.getElementById(OxO21dd[0x4]);var inp_title=document.getElementById(OxO21dd[0x5]);var inp_color_preview=document.getElementById(OxO21dd[0x6]);if(!top[OxO21dd[0x7]]){ top[OxO21dd[0x7]]=true ;if(element[OxO21dd[0x9]][OxO21dd[0x8]]){ inp_color[OxO21dd[0xa]]=element[OxO21dd[0x9]][OxO21dd[0x8]] ; inp_color[OxO21dd[0x9]][OxO21dd[0xb]]=inp_color[OxO21dd[0xa]] ; inp_color_preview[OxO21dd[0x9]][OxO21dd[0xb]]=inp_color[OxO21dd[0xa]] ;} ;if(element[OxO21dd[0xc]]){ inc_class[OxO21dd[0xa]]=element[OxO21dd[0xc]] ;} ;if(element[OxO21dd[0xd]]){ inp_title[OxO21dd[0xa]]=element[OxO21dd[0xd]] ;} ;if(element[OxO21dd[0xe]]){ sel_target[OxO21dd[0xa]]=element[OxO21dd[0xe]] ;} ; TargetUrl[OxO21dd[0xa]]=element[OxO21dd[0xf]] ;} ; do_preview() ; function do_preview(){ divpreview[OxO21dd[0x10]]=OxO21dd[0x11] ;var Oxbb=TargetUrl[OxO21dd[0xa]];if(Oxbb==OxO21dd[0x11]){return ;} ;var Ox4db=Oxbb.substring(Oxbb.lastIndexOf(OxO21dd[0x12])).toLowerCase();switch(Ox4db){case OxO21dd[0x22]:case OxO21dd[0x21]:case OxO21dd[0x20]:case OxO21dd[0x1f]:case OxO21dd[0x1e]: divpreview[OxO21dd[0x10]]=OxO21dd[0x13]+Oxbb+OxO21dd[0x14] ;break ;case OxO21dd[0x1d]:var Ox4dc=OxO21dd[0x15]+Oxbb+OxO21dd[0x16]; divpreview[OxO21dd[0x10]]=Ox4dc ;break ;case OxO21dd[0x1c]:case OxO21dd[0x1b]:case OxO21dd[0x1a]:case OxO21dd[0x19]:var Oxbe=OxO21dd[0x17]+Oxbb+OxO21dd[0x18]; divpreview[OxO21dd[0x10]]=Oxbe ;break ;;;;;;;;;;;} ;}  ; function do_insert(){ element[OxO21dd[0xc]]=inc_class[OxO21dd[0xa]] ; element[OxO21dd[0xe]]=sel_target[OxO21dd[0xa]] ; element[OxO21dd[0xd]]=inp_title[OxO21dd[0xa]] ; element[OxO21dd[0xf]]=TargetUrl[OxO21dd[0xa]] ;if(element[OxO21dd[0xd]]==OxO21dd[0x11]){ element.removeAttribute(OxO21dd[0xd]) ;} ;if(element[OxO21dd[0xe]]==OxO21dd[0x11]){ element.removeAttribute(OxO21dd[0xe]) ;} ;if(element[OxO21dd[0xc]]==OxO21dd[0x11]){ element.removeAttribute(OxO21dd[0xc]) ;} ;try{ element[OxO21dd[0x9]][OxO21dd[0x8]]=inp_color[OxO21dd[0xa]] ;} catch(er){ element[OxO21dd[0x9]][OxO21dd[0x8]]=OxO21dd[0x11] ;} ;if(element[OxO21dd[0x10]]==OxO21dd[0x11]){ element[OxO21dd[0x10]]=element[OxO21dd[0xf]]||element[OxO21dd[0x23]]||OxO21dd[0x24] ;} ; top[OxO21dd[0x25]]=element ; top.close() ;}  ; function do_cancel(){ top[OxO21dd[0x25]]=null ; top.close() ;}  ; function SelectColor(Ox19b,Ox4df){var Ox4e0=OxO21dd[0x26]; openModalWindow(Ox4e0,null,_colorpickerDialogFeature,function (Ox2d9,Ox18e){if(Ox18e[OxO21dd[0x25]]){ document.getElementById(Ox19b)[OxO21dd[0xa]]=Ox18e[OxO21dd[0x25]].toUpperCase() ; document.getElementById(Ox19b)[OxO21dd[0x9]][OxO21dd[0xb]]=Ox18e[OxO21dd[0x25]] ; Ox4df[OxO21dd[0x9]][OxO21dd[0xb]]=Ox18e[OxO21dd[0x25]] ;} ;} ) ;}  ;
		</script>
	</body>
</HTML>
