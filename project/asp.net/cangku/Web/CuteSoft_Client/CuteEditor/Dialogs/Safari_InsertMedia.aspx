<%@ Page Language="C#" Inherits="CuteEditor.Dialogs.FileBrowserPage" %>
<html>
	<head>
		<title>[[InsertMedia]] 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</title>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)">
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)">
		<link rel="stylesheet" href='Safari_style.css'>
		<script src=Safari_dialog.js></script>	
		<script src="sorttable.js"></script>
		<script language="JavaScript">
		var OxOa98e=["disabled","target","[[Disabled]]","[[SpecifyNewFolderName]]","","value","hiddenActionData","[[CopyMoveto]]","/","[[AreyouSureDelete]]","parentNode","isdir","text","hiddenAction","rename","path","True","False",":","cancelBubble","backgroundColor","style","#eeeeee","tagName","INPUT","changedir","hiddenFile","url","TargetUrl"]; function CreateDir_click(){if(event[OxOa98e[0x1]][OxOa98e[0x0]]){ alert(OxOa98e[0x2]) ;return false;} ;var Ox2f4=prompt(OxOa98e[0x3],OxOa98e[0x4]);if(Ox2f4){ document.getElementById(OxOa98e[0x6])[OxOa98e[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Move_click(){if(event[OxOa98e[0x1]][OxOa98e[0x0]]){ alert(OxOa98e[0x2]) ;return false;} ;var Ox2f4=prompt(OxOa98e[0x7],OxOa98e[0x8]);if(Ox2f4){ document.getElementById(OxOa98e[0x6])[OxOa98e[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Copy_click(){if(event[OxOa98e[0x1]][OxOa98e[0x0]]){ alert(OxOa98e[0x2]) ;return false;} ;var Ox2f4=prompt(OxOa98e[0x7],OxOa98e[0x8]);if(Ox2f4){ document.getElementById(OxOa98e[0x6])[OxOa98e[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Delete_click(){if(event[OxOa98e[0x1]][OxOa98e[0x0]]){ alert(OxOa98e[0x2]) ;return false;} ;return confirm(OxOa98e[0x9]);}  ; function EditImg_click(Oxba){if(Oxba[OxOa98e[0x0]]){ alert(OxOa98e[0x2]) ;return false;} ; row=Oxba[OxOa98e[0xa]][OxOa98e[0xa]] ;var name;if(row[OxOa98e[0xb]]){ name=prompt(OxOa98e[0x3],row.text) ;} else { name=prompt(OxOa98e[0x3],row.text) ;} ;if(name&&name!=row[OxOa98e[0xc]]){ document.getElementById(OxOa98e[0xd])[OxOa98e[0x5]]=OxOa98e[0xe] ; document.getElementById(OxOa98e[0x6])[OxOa98e[0x5]]=(row[OxOa98e[0xb]]?OxOa98e[0x10]:OxOa98e[0x11])+OxOa98e[0x12]+row[OxOa98e[0xf]]+OxOa98e[0x12]+name ; postback() ;} ; event[OxOa98e[0x13]]=true ;}  ; function row_over(Oxc4){ Oxc4[OxOa98e[0x15]][OxOa98e[0x14]]=OxOa98e[0x16] ;}  ; function row_out(Oxc4){ Oxc4[OxOa98e[0x15]][OxOa98e[0x14]]=OxOa98e[0x4] ;}  ; function row_click(Oxc4){if(Oxc4[OxOa98e[0xb]]){if(event[OxOa98e[0x1]][OxOa98e[0x17]]==OxOa98e[0x18]){return ;} ; document.getElementById(OxOa98e[0xd])[OxOa98e[0x5]]=OxOa98e[0x19] ; document.getElementById(OxOa98e[0x6])[OxOa98e[0x5]]=Oxc4.getAttribute(OxOa98e[0xf]) ; postback() ;} else { document.getElementById(OxOa98e[0x1a])[OxOa98e[0x5]]=Oxc4.getAttribute(OxOa98e[0xf]) ; document.getElementById(OxOa98e[0x1c])[OxOa98e[0x5]]=Oxc4.getAttribute(OxOa98e[0x1b]) ; do_preview() ;} ;}  ; function postback(){ <%=Page.GetPostBackEventReference(hiddenAction,"")%> ;}  ;
		</script>
		<style>
		.row
		{
			height:22px;
		}
		.cb
		{
			vertical-align:middle;
		}
		.itemimg
		{
			vertical-align:middle;
		}
		.editimg
		{
			vertical-align:middle;
		}
		.cell1
		{
			vertical-align:middle;
		}
		.cell2
		{
			vertical-align:middle;
		}
		.cell3
		{
			vertical-align:middle;
		    
			text-align:right;
			padding-right:4px;
		}
		.cb
		{
		}
		</style>
	</head>
	<body>
		<form runat="server" enctype="multipart/form-data" id="Form1">
			<!-- start hidden -->
			<script>
        var OxOb2b6=["onload","value","hiddenAlert","","hiddenAction","hiddenActionData"]; window[OxOb2b6[0x0]]=reset_hiddens ; function reset_hiddens(){if(document.getElementById(OxOb2b6[0x2])[OxOb2b6[0x1]]){ alert(document.getElementById(OxOb2b6[0x2]).value) ;} ; document.getElementById(OxOb2b6[0x2])[OxOb2b6[0x1]]=OxOb2b6[0x3] ; document.getElementById(OxOb2b6[0x4])[OxOb2b6[0x1]]=OxOb2b6[0x3] ; document.getElementById(OxOb2b6[0x5])[OxOb2b6[0x1]]=OxOb2b6[0x3] ;}  ;
			</script>
			<input type="hidden" runat="server" id="hiddenDirectory" NAME="hiddenDirectory"/> <input type="hidden" runat="server" id="hiddenFile" NAME="hiddenFile"/>
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAlert" NAME="hiddenAlert"/> <input type="hidden" runat="server" enableviewstate="false" id="hiddenAction" onserverchange="hiddenAction_ServerChange" NAME="hiddenAction"/>
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenActionData" NAME="hiddenActionData"/>
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
						<asp:ImageButton ID="CreateDir" Runat="server" AlternateText="[[Createdirectory]]" 
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)" ImageUrl="../images/newfolder.gif" Visible="true"
							OnClick="CreateDir_Click" />
						<asp:ImageButton ID="Copy" Runat="server" AlternateText="[[Copyfiles]]"  onMouseOver="Check(this,1)" onMouseOut="Check(this,0)"
							ImageUrl="../images/Copy.gif" Visible="true" OnClick="Copy_Click" />
						<asp:ImageButton ID="Move" Runat="server" AlternateText="[[Movefiles]]"  onMouseOver="Check(this,1)" onMouseOut="Check(this,0)"
							ImageUrl="../images/move.gif" Visible="true" OnClick="Move_Click" />
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
				<tr>
					<td valign="top" nowrap width="250px">
                       <div style="BORDER: 1.5pt inset;  VERTICAL-ALIGN: middle; OVERFLOW: auto; WIDTH: 100%; HEIGHT: 250px; Padding: 0 0 0 0; BACKGROUND-COLOR: white">
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
									<asp:TableHeaderCell ID="op_Cell2"  Width="16px">&nbsp;</asp:TableHeaderCell>
								</asp:TableRow>
							</asp:Table>
						</div>
					</td>
					<td width="10">
					</td>
					<td valign="top">
						<div style="Height:240px; BORDER: 1.0pt inset; PADDING: 5px;VERTICAL-ALIGN: top; OVERFLOW: auto;BACKGROUND-COLOR: white; TEXT-ALIGN: center">
							<div id="divpreview" style="BACKGROUND-COLOR: white" style="width:100%">
							</div>
						</div>
					</td>
				</tr>
			</table>
			<br>
			<table border="0" cellspacing="2" cellpadding="0" width="98%" align="center">
				<tr>
					<td valign="top">
						<fieldset align="center">
							<legend>
								[[Properties]]</legend>
							<table border="0" cellpadding="5" cellspacing="0" class="normal">
								<tr>
									<td>
										<table border="0" cellpadding="2" cellspacing="0" class="normal">
											<tr>
												<td width="100">
													[[Width]]:</td>
												<td>
													<input type="text" name="Width" id="Width" style="width: 80px;" onchange="do_preview()"
														onpropertychange="do_preview()" value="200" runat="server"></td>
											</tr>
											<tr>
												<td>
													[[Height]]:</td>
												<td>
													<input type="text" name="Height" id="Height" style="width: 80px;" onchange="do_preview()"
														onpropertychange="do_preview()" value="200" runat="server"></td>
											</tr>
											<tr>
												<td>
													[[AutoStart]]:</td>
												<td>
													<input type="checkbox" name="Transparency" onchange="do_preview()" onpropertychange="do_preview()"
														id="AutoStart" checked value="AutoStart" runat="server"></td>
											</tr>
											<tr>
												<td style="height: 24px">
													[[ShowControls]]:</td>
												<td style="height: 24px">
													<input type="checkbox" name="Transparency" onchange="do_preview()" onpropertychange="do_preview()"
														id="ShowControls" checked value="ShowControls" runat="server"></td>
											</tr>
											<tr>
												<td>
													[[ShowStatusBar]]:</td>
												<td>
													<input type="checkbox" name="Transparency" onchange="do_preview()" onpropertychange="do_preview()"
														id="ShowStatusBar" checked value="ShowStatusBar" runat="server"></td>
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
						<fieldset style="width:300px" style="margin-bottom:5px">
							<legend>
								[[Insert]]</legend>
							<table border="0" cellpadding="5" cellspacing="0" id="Table5">
								<tr>
									<td>
										<table border="0" cellpadding="2" cellspacing="0" class="normal">
											<tr>
												<td valign="middle">
													URL:</td>
												<td>
													<input type="text" id="TargetUrl" size="40" name="TargetUrl" runat="server"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
						<fieldset align="center" style="width:300px" id="fieldsetUpload">
							<legend>
								[[Upload]] (Max file size allowed
								<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxMediaSize * 1024)%>
								)</legend>
							<table border="0" cellspacing="2" cellpadding="0" width="98%" align="center" class="normal">
								<tr>
									<td valign="top" width="54%" style="font-size: 8pt; vertical-align: middle; font-family: MS Sans Serif">
										<asp:Label ID="Label_PictureUpload" Runat="server">&nbsp;</asp:Label>
										<input id="InputFile" size="40" type="file" runat="server" style="height:20px" NAME="InputFile">&nbsp;
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
													Max Upload folder size is : <%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxMediaFolderSize * 1024)%>.
													Used: <%= CuteEditor.Impl.FileStorage.FormatSize(fs.GetDirectorySize(fs.VirtualRoot)) %>&nbsp;&nbsp;
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
							<input class="inputbuttoninsert" type="button" value="[[Insert]]" onclick="do_insert()"	id="Button1">
							&nbsp;&nbsp;&nbsp; 
							<input class="inputbuttoncancel" type="button" value="[[Cancel]]" onclick="do_cancel()"	id="Button2">
						</p>
					</td>
				</tr>
			</table>
		</form>
	</body>
	<script runat="server">
		protected override void InitOfType()
		{
			fs.VirtualRoot=CuteEditor.EditorUtility.ProcessWebPath(Context,null,secset.MediaGalleryPath).TrimEnd('/')+"/";
		}
		protected override void GetFiles(ArrayList files)
		{
			foreach (string ext in secset.MediaFilters)
			{
				if (ext == null || ext.Length == 0) continue;

				files.AddRange(fs.GetFileItems(CurrentDirectory, "*" + ext));
			}
		}
		protected override bool AllowFileName(string filename)
		{
			filename = filename.ToLower();
			foreach (string ext in secset.MediaFilters)
			{
				if (ext == null || ext.Length == 0) continue;
				if(filename.EndsWith(ext.ToLower()))
					return true;
			}
			return false;
		}
		protected override string CheckUploadData(ref byte[] data)
		{
			if (fs.GetDirectorySize(fs.VirtualRoot) >= secset.MaxMediaFolderSize * 1024)
				return "Media folder size exceeds the limit: "+ CuteEditor.Impl.FileStorage.FormatSize(secset.MaxMediaFolderSize * 1024);
		
			if (data.Length >= secset.MaxMediaSize * 1024)
				return "Media size exceeds "+CuteEditor.Impl.FileStorage.FormatSize(secset.MaxMediaSize * 1024)+" limit: "+ CuteEditor.Impl.FileStorage.FormatSize(data.Length);
			return null;
		}
	    
	    
		protected int GetUsedSpaceBarWidth()
		{
		int w = Convert.ToInt32(40*fs.GetDirectorySize(fs.VirtualRoot)/(secset.MaxFlashFolderSize * 1024));
		if(w<1)
			w=1;
			
		if(w>40)
			w=40;
			
		return w;      
		}
	</script>
	<script src="addvars.js"></script>
	<script>
		
		var OxOc912=["dialogArguments","opener","availWidth","availHeight","TargetUrl","value","","Width","Height","ShowControls","AutoStart","ShowStatusBar","checked","\x3Cembed name=\x22MediaPlayer1\x22 src=\x22","\x22 autostart=\x22","\x22 showcontrols=\x22","\x22  width=\x22","\x22 height=\x22","\x22 type=\x22application/x-mplayer2\x22 pluginspage=\x22http://www.microsoft.com/Windows/MediaPlayer\x22 \x3E\x3C/embed\x3E\x0A","innerHTML","Please choose a Media movie to insert","w","px","h","medianame","editor","editdoc","Delete"];var dialogArguments=window[OxOc912[0x1]][OxOc912[0x0]]; window.resizeTo(0x23c,0x21c) ; window.moveTo((screen[OxOc912[0x2]]-0x258)/0x2,(screen[OxOc912[0x3]]-0x190)/0x2) ; window.focus() ; do_preview() ; function do_preview(){var Ox4e7;var Ox82;var Ox2d8;var TargetUrl=document.getElementById(OxOc912[0x4]);if(TargetUrl[OxOc912[0x5]]==OxOc912[0x6]){return ;} ;var Ox4ec=document.getElementById(OxOc912[0x7]);var Ox4ed=document.getElementById(OxOc912[0x8]);var Ox50e=document.getElementById(OxOc912[0x9]);var Ox50f=document.getElementById(OxOc912[0xa]);var Ox510=document.getElementById(OxOc912[0xb]);var Ox511Ox512Ox513;if(Ox50f[OxOc912[0xc]]){ Ox511=0x1 ;} else { Ox511=0x0 ;} ;if(Ox510[OxOc912[0xc]]){ Ox512=0x1 ;} else { Ox512=0x0 ;} ;if(Ox50e[OxOc912[0xc]]){ Ox513=0x1 ;} else { Ox513=0x0 ;} ; Ox82=Ox4ec[OxOc912[0x5]] ; Ox2d8=Ox4ed[OxOc912[0x5]] ; preview_width=0xf0 ; preview_height=0xc8 ; w=parseInt(Ox82) ; h=parseInt(Ox2d8) ;if(w>h){ Ox82=preview_width ; Ox2d8=preview_height*h/w ;} else { Ox82=preview_width*w/h ; Ox2d8=preview_height ;} ; Ox82=parseInt(Ox82) ; Ox2d8=parseInt(Ox2d8) ;var Oxbe=OxOc912[0xd]+TargetUrl[OxOc912[0x5]]+OxOc912[0xe]+Ox511+OxOc912[0xf]+Ox513+OxOc912[0x10]+Ox82+OxOc912[0x11]+Ox2d8+OxOc912[0x12]; divpreview[OxOc912[0x13]]=Oxbe ;}  ;var parameters= new Array(); function do_insert(){var TargetUrl=document.getElementById(OxOc912[0x4]);var Ox4ec=document.getElementById(OxOc912[0x7]);var Ox4ed=document.getElementById(OxOc912[0x8]);var Ox50e=document.getElementById(OxOc912[0x9]);var Ox50f=document.getElementById(OxOc912[0xa]);var Ox510=document.getElementById(OxOc912[0xb]);if(TargetUrl[OxOc912[0x5]]==OxOc912[0x6]){ alert(OxOc912[0x14]) ;return false;} ; parameters[OxOc912[0x15]]=Ox4ec[OxOc912[0x5]]+OxOc912[0x16] ; parameters[OxOc912[0x17]]=Ox4ed[OxOc912[0x5]]+OxOc912[0x16] ; parameters[OxOc912[0x18]]=document.getElementById(OxOc912[0x4])[OxOc912[0x5]] ;if(Ox50f[OxOc912[0xc]]){ parameters[OxOc912[0xa]]=0x1 ;} else { parameters[OxOc912[0xa]]=0x0 ;} ;if(Ox510[OxOc912[0xc]]){ parameters[OxOc912[0xb]]=0x1 ;} else { parameters[OxOc912[0xb]]=0x0 ;} ;if(Ox50e[OxOc912[0xc]]){ parameters[OxOc912[0x9]]=0x1 ;} else { parameters[OxOc912[0x9]]=0x0 ;} ;if(TargetUrl[OxOc912[0x5]]==OxOc912[0x6]){ alert(OxOc912[0x14]) ;return false;} ;var Oxbe=OxOc912[0xd]+parameters[OxOc912[0x18]]+OxOc912[0xe]+parameters[OxOc912[0xa]]+OxOc912[0xf]+parameters[OxOc912[0x9]]+OxOc912[0x10]+parameters[OxOc912[0x15]]+OxOc912[0x11]+parameters[OxOc912[0x17]]+OxOc912[0x12];var obj=window[OxOc912[0x1]][OxOc912[0x0]];var editor=obj[OxOc912[0x19]];var editdoc=obj[OxOc912[0x1a]]; editdoc.execCommand(OxOc912[0x1b],false,OxOc912[0x6]) ; editor.PasteHTML(Oxbe) ; top.close() ;}  ; function do_cancel(){ top.close() ;}  ;
	
	</script>
</html>
