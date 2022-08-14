<%@ Page Language="C#" Inherits="CuteEditor.Dialogs.FileBrowserPage" %>
<html>
	<head>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)">
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)">
		<link rel="stylesheet" href='style.css'>
		<script src=dialog.js></script><script src=../_shared.js></script>
		<script src="filebrowserpage.js"></script>
		<script src="sorttable.js"></script>
		<script language="JavaScript">
		var OxOc72a=["disabled","srcElement","[[Disabled]]","[[SpecifyNewFolderName]]","","value","hiddenActionData","[[CopyMoveto]]","/","[[AreyouSureDelete]]","parentNode","isdir","text","hiddenAction","rename","path","True","False",":","cancelBubble","backgroundColor","style","#eeeeee","tagName","INPUT","changedir","hiddenFile","url","TargetUrl"]; function CreateDir_click(){if(event[OxOc72a[0x1]][OxOc72a[0x0]]){ alert(OxOc72a[0x2]) ;return false;} ;var Ox2f4=prompt(OxOc72a[0x3],OxOc72a[0x4]);if(Ox2f4){ document.getElementById(OxOc72a[0x6])[OxOc72a[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Move_click(){if(event[OxOc72a[0x1]][OxOc72a[0x0]]){ alert(OxOc72a[0x2]) ;return false;} ;var Ox2f4=prompt(OxOc72a[0x7],OxOc72a[0x8]);if(Ox2f4){ document.getElementById(OxOc72a[0x6])[OxOc72a[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Copy_click(){if(event[OxOc72a[0x1]][OxOc72a[0x0]]){ alert(OxOc72a[0x2]) ;return false;} ;var Ox2f4=prompt(OxOc72a[0x7],OxOc72a[0x8]);if(Ox2f4){ document.getElementById(OxOc72a[0x6])[OxOc72a[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Delete_click(){if(event[OxOc72a[0x1]][OxOc72a[0x0]]){ alert(OxOc72a[0x2]) ;return false;} ;return confirm(OxOc72a[0x9]);}  ; function EditImg_click(Oxba){if(Oxba[OxOc72a[0x0]]){ alert(OxOc72a[0x2]) ;return false;} ; row=Oxba[OxOc72a[0xa]][OxOc72a[0xa]] ;var name;if(row[OxOc72a[0xb]]){ name=prompt(OxOc72a[0x3],row.text) ;} else { name=prompt(OxOc72a[0x3],row.text) ;} ;if(name&&name!=row[OxOc72a[0xc]]){ document.getElementById(OxOc72a[0xd])[OxOc72a[0x5]]=OxOc72a[0xe] ; document.getElementById(OxOc72a[0x6])[OxOc72a[0x5]]=(row[OxOc72a[0xb]]?OxOc72a[0x10]:OxOc72a[0x11])+OxOc72a[0x12]+row[OxOc72a[0xf]]+OxOc72a[0x12]+name ; postback() ;} ; event[OxOc72a[0x13]]=true ;}  ; function row_over(Oxc4){ Oxc4[OxOc72a[0x15]][OxOc72a[0x14]]=OxOc72a[0x16] ;}  ; function row_out(Oxc4){ Oxc4[OxOc72a[0x15]][OxOc72a[0x14]]=OxOc72a[0x4] ;}  ; function row_click(Oxc4){if(Oxc4[OxOc72a[0xb]]){if(event[OxOc72a[0x1]][OxOc72a[0x17]]==OxOc72a[0x18]){return ;} ; document.getElementById(OxOc72a[0xd])[OxOc72a[0x5]]=OxOc72a[0x19] ; document.getElementById(OxOc72a[0x6])[OxOc72a[0x5]]=Oxc4.getAttribute(OxOc72a[0xf]) ; postback() ;} else { document.getElementById(OxOc72a[0x1a])[OxOc72a[0x5]]=Oxc4.getAttribute(OxOc72a[0xf]) ; document.getElementById(OxOc72a[0x1c])[OxOc72a[0x5]]=Oxc4.getAttribute(OxOc72a[0x1b]) ; do_preview() ;} ;}  ; function postback(){ <%=Page.GetPostBackEventReference(hiddenAction,"")%> ;}  ;
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
        var OxO97e9=["onload","value","hiddenAlert","","hiddenAction","hiddenActionData"]; window[OxO97e9[0x0]]=reset_hiddens ; function reset_hiddens(){if(document.getElementById(OxO97e9[0x2])[OxO97e9[0x1]]){ alert(document.getElementById(OxO97e9[0x2]).value) ;} ; document.getElementById(OxO97e9[0x2])[OxO97e9[0x1]]=OxO97e9[0x3] ; document.getElementById(OxO97e9[0x4])[OxO97e9[0x1]]=OxO97e9[0x3] ; document.getElementById(OxO97e9[0x5])[OxO97e9[0x1]]=OxO97e9[0x3] ;}  ;
			</script>
			<input type="hidden" runat="server" id="hiddenDirectory" /> <input type="hidden" runat="server" id="hiddenFile" />
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAlert" /> <input type="hidden" runat="server" enableviewstate="false" id="hiddenAction" onserverchange="hiddenAction_ServerChange" />
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenActionData" />
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
						<asp:ImageButton ID="CreateDir" Runat="server" AlternateText="[[Createdirectory]]" onMouseOver="CuteEditor_ColorPicker_ButtonOver(this);" ImageUrl="../images/newfolder.gif" Visible="true"
							OnClick="CreateDir_Click" />
						<asp:ImageButton ID="Copy" Runat="server" AlternateText="[[Copyfiles]]" onMouseOver="CuteEditor_ColorPicker_ButtonOver(this);"
							ImageUrl="../images/Copy.gif" Visible="true" OnClick="Copy_Click" />
						<asp:ImageButton ID="Move" Runat="server" AlternateText="[[Movefiles]]" onMouseOver="CuteEditor_ColorPicker_ButtonOver(this);"
							ImageUrl="../images/move.gif" Visible="true" OnClick="Move_Click" />						
						<IMG src="../images/zoom_in.gif" onclick="Zoom_In();" Alt="[[ZoomIn]]" class="dialogButton"
							onmouseover="CuteEditor_ColorPicker_ButtonOver(this);"> <IMG src="../images/zoom_out.gif" onclick="Zoom_Out();" Alt="[[ZoomOut]]" class="dialogButton"
							onmouseover="CuteEditor_ColorPicker_ButtonOver(this);">
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
				<tr>
					<td valign="top" nowrap width="250">
						<div style="border: 1.5pt inset; vertical-align: middle; overflow: auto; width: 250;background-color: white; height: 240px">
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
						<div style="text-align: left; overflow: auto; background-color: white; border: 1.5pt inset;
                        width: 280px; height: 240px; overflow: auto; text-align: center; vertical-align: top;
                        padding: 10px;">
							<div id="divpreview" style="background-color: white" height="100%" width="100%">
								&nbsp;</div>
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
						<fieldset style="margin-bottom:5px">
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
						<fieldset align="center" runat="server" id="fieldsetUpload">
							<legend>
								[[Upload]] (Max file size allowed
								<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxMediaSize * 1024)%>
								)</legend>
							<table border="0" cellspacing="2" cellpadding="0" width="98%" align="center" class="normal">
								<tr>
									<td valign="top" width="54%" style="font-size: 8pt; vertical-align: middle; font-family: MS Sans Serif">
										<asp:Label ID="Label_PictureUpload" Runat="server">&nbsp;</asp:Label>
										<input id="InputFile" size="40" type="file" runat="server" style="height:20px">&nbsp;
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
											Max Upload folder size is : <%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxMediaFolderSize * 1024)%>.
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
								id="Button1" runat="server">&nbsp;&nbsp;&nbsp; <input class="inputbuttoncancel" type="button" value="[[Cancel]]" onclick="do_cancel()"
								id="Button2" runat="server">
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
      int w = Convert.ToInt32(40*fs.GetDirectorySize(fs.VirtualRoot)/(secset.MaxMediaFolderSize * 1024));
      if(w<1)
		w=1;
		
	  if(w>40)
		w=40;
		
      return w;      
    }
	</script>
	<script src="addvars.js"></script>
	<script>
	
		var OxO98bf=["dialogArguments","TargetUrl","value","","Width","Height","ShowControls","AutoStart","ShowStatusBar","checked","\x3Cembed name=\x22MediaPlayer1\x22 src=\x22","\x22 autostart=\x22","\x22 showcontrols=\x22","\x22  width=\x22","\x22 height=\x22","\x22 type=\x22application/x-mplayer2\x22 pluginspage=\x22http://www.microsoft.com/Windows/MediaPlayer\x22 \x3E\x3C/embed\x3E\x0A","innerHTML","Please choose a Media movie to insert","w","px","h","medianame","zoom","style"];var editor=top[OxO98bf[0x0]]; do_preview() ; function do_preview(){var Ox4e7;var Ox82;var Ox2d8;var TargetUrl=document.getElementById(OxO98bf[0x1]);if(TargetUrl[OxO98bf[0x2]]==OxO98bf[0x3]){return ;} ;var Ox4ec=document.getElementById(OxO98bf[0x4]);var Ox4ed=document.getElementById(OxO98bf[0x5]);var Ox50e=document.getElementById(OxO98bf[0x6]);var Ox50f=document.getElementById(OxO98bf[0x7]);var Ox510=document.getElementById(OxO98bf[0x8]);var Ox511Ox512Ox513;if(Ox50f[OxO98bf[0x9]]){ Ox511=0x1 ;} else { Ox511=0x0 ;} ;if(Ox510[OxO98bf[0x9]]){ Ox512=0x1 ;} else { Ox512=0x0 ;} ;if(Ox50e[OxO98bf[0x9]]){ Ox513=0x1 ;} else { Ox513=0x0 ;} ; Ox82=Ox4ec[OxO98bf[0x2]] ; Ox2d8=Ox4ed[OxO98bf[0x2]] ; preview_width=0xf0 ; preview_height=0xc8 ; w=parseInt(Ox82) ; h=parseInt(Ox2d8) ;if(w>h){ Ox82=preview_width ; Ox2d8=preview_height*h/w ;} else { Ox82=preview_width*w/h ; Ox2d8=preview_height ;} ; Ox82=parseInt(Ox82) ; Ox2d8=parseInt(Ox2d8) ;var Oxbe=OxO98bf[0xa]+TargetUrl[OxO98bf[0x2]]+OxO98bf[0xb]+Ox511+OxO98bf[0xc]+Ox513+OxO98bf[0xd]+Ox82+OxO98bf[0xe]+Ox2d8+OxO98bf[0xf]; divpreview[OxO98bf[0x10]]=Oxbe ;}  ;var parameters= new Array(); function do_insert(){var TargetUrl=document.getElementById(OxO98bf[0x1]);var Ox4ec=document.getElementById(OxO98bf[0x4]);var Ox4ed=document.getElementById(OxO98bf[0x5]);var Ox50e=document.getElementById(OxO98bf[0x6]);var Ox50f=document.getElementById(OxO98bf[0x7]);var Ox510=document.getElementById(OxO98bf[0x8]);if(TargetUrl[OxO98bf[0x2]]==OxO98bf[0x3]){ alert(OxO98bf[0x11]) ;return false;} ; parameters[OxO98bf[0x12]]=Ox4ec[OxO98bf[0x2]]+OxO98bf[0x13] ; parameters[OxO98bf[0x14]]=Ox4ed[OxO98bf[0x2]]+OxO98bf[0x13] ; parameters[OxO98bf[0x15]]=document.getElementById(OxO98bf[0x1])[OxO98bf[0x2]] ;if(Ox50f[OxO98bf[0x9]]){ parameters[OxO98bf[0x7]]=0x1 ;} else { parameters[OxO98bf[0x7]]=0x0 ;} ;if(Ox510[OxO98bf[0x9]]){ parameters[OxO98bf[0x8]]=0x1 ;} else { parameters[OxO98bf[0x8]]=0x0 ;} ;if(Ox50e[OxO98bf[0x9]]){ parameters[OxO98bf[0x6]]=0x1 ;} else { parameters[OxO98bf[0x6]]=0x0 ;} ;if(TargetUrl[OxO98bf[0x2]]==OxO98bf[0x3]){ alert(OxO98bf[0x11]) ;return false;} ;var Oxbe=OxO98bf[0xa]+parameters[OxO98bf[0x15]]+OxO98bf[0xb]+parameters[OxO98bf[0x7]]+OxO98bf[0xc]+parameters[OxO98bf[0x6]]+OxO98bf[0xd]+parameters[OxO98bf[0x12]]+OxO98bf[0xe]+parameters[OxO98bf[0x14]]+OxO98bf[0xf]; editor.PasteHTML(Oxbe) ; top.close() ;}  ; function do_cancel(){ top.close() ;}  ; function Zoom_In(){if(divpreview[OxO98bf[0x17]][OxO98bf[0x16]]!=0x0){ divpreview[OxO98bf[0x17]][OxO98bf[0x16]]*=1.2 ;} else { divpreview[OxO98bf[0x17]][OxO98bf[0x16]]=1.2 ;} ;}  ; function Zoom_Out(){if(divpreview[OxO98bf[0x17]][OxO98bf[0x16]]!=0x0){ divpreview[OxO98bf[0x17]][OxO98bf[0x16]]*=0.8 ;} else { divpreview[OxO98bf[0x17]][OxO98bf[0x16]]=0.8 ;} ;}  ;
	</script>
</html>
