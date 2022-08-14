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
		var OxO67db=["disabled","srcElement","[[Disabled]]","[[SpecifyNewFolderName]]","","value","hiddenActionData","[[CopyMoveto]]","/","[[AreyouSureDelete]]","parentNode","isdir","text","hiddenAction","rename","path","True","False",":","cancelBubble","backgroundColor","style","#eeeeee","tagName","INPUT","changedir","hiddenFile","url","TargetUrl"]; function CreateDir_click(){if(event[OxO67db[0x1]][OxO67db[0x0]]){ alert(OxO67db[0x2]) ;return false;} ;var Ox2f4=prompt(OxO67db[0x3],OxO67db[0x4]);if(Ox2f4){ document.getElementById(OxO67db[0x6])[OxO67db[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Move_click(){if(event[OxO67db[0x1]][OxO67db[0x0]]){ alert(OxO67db[0x2]) ;return false;} ;var Ox2f4=prompt(OxO67db[0x7],OxO67db[0x8]);if(Ox2f4){ document.getElementById(OxO67db[0x6])[OxO67db[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Copy_click(){if(event[OxO67db[0x1]][OxO67db[0x0]]){ alert(OxO67db[0x2]) ;return false;} ;var Ox2f4=prompt(OxO67db[0x7],OxO67db[0x8]);if(Ox2f4){ document.getElementById(OxO67db[0x6])[OxO67db[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Delete_click(){if(event[OxO67db[0x1]][OxO67db[0x0]]){ alert(OxO67db[0x2]) ;return false;} ;return confirm(OxO67db[0x9]);}  ; function EditImg_click(Oxba){if(Oxba[OxO67db[0x0]]){ alert(OxO67db[0x2]) ;return false;} ; row=Oxba[OxO67db[0xa]][OxO67db[0xa]] ;var name;if(row[OxO67db[0xb]]){ name=prompt(OxO67db[0x3],row.text) ;} else { name=prompt(OxO67db[0x3],row.text) ;} ;if(name&&name!=row[OxO67db[0xc]]){ document.getElementById(OxO67db[0xd])[OxO67db[0x5]]=OxO67db[0xe] ; document.getElementById(OxO67db[0x6])[OxO67db[0x5]]=(row[OxO67db[0xb]]?OxO67db[0x10]:OxO67db[0x11])+OxO67db[0x12]+row[OxO67db[0xf]]+OxO67db[0x12]+name ; postback() ;} ; event[OxO67db[0x13]]=true ;}  ; function row_over(Oxc4){ Oxc4[OxO67db[0x15]][OxO67db[0x14]]=OxO67db[0x16] ;}  ; function row_out(Oxc4){ Oxc4[OxO67db[0x15]][OxO67db[0x14]]=OxO67db[0x4] ;}  ; function row_click(Oxc4){if(Oxc4[OxO67db[0xb]]){if(event[OxO67db[0x1]][OxO67db[0x17]]==OxO67db[0x18]){return ;} ; document.getElementById(OxO67db[0xd])[OxO67db[0x5]]=OxO67db[0x19] ; document.getElementById(OxO67db[0x6])[OxO67db[0x5]]=Oxc4.getAttribute(OxO67db[0xf]) ; postback() ;} else { document.getElementById(OxO67db[0x1a])[OxO67db[0x5]]=Oxc4.getAttribute(OxO67db[0xf]) ; document.getElementById(OxO67db[0x1c])[OxO67db[0x5]]=Oxc4.getAttribute(OxO67db[0x1b]) ; do_preview() ;} ;}  ; function postback(){ <%=Page.GetPostBackEventReference(hiddenAction,"")%> ;}  ;
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
        var OxO7be0=["onload","value","hiddenAlert","","hiddenAction","hiddenActionData"]; window[OxO7be0[0x0]]=reset_hiddens ; function reset_hiddens(){if(document.getElementById(OxO7be0[0x2])[OxO7be0[0x1]]){ alert(document.getElementById(OxO7be0[0x2]).value) ;} ; document.getElementById(OxO7be0[0x2])[OxO7be0[0x1]]=OxO7be0[0x3] ; document.getElementById(OxO7be0[0x4])[OxO7be0[0x1]]=OxO7be0[0x3] ; document.getElementById(OxO7be0[0x5])[OxO7be0[0x1]]=OxO7be0[0x3] ;}  ;
			</script>
			<input type="hidden" runat="server" id="hiddenDirectory" NAME="hiddenDirectory" />
			<input type="hidden" runat="server" id="hiddenFile" NAME="hiddenFile" /> <input type="hidden" runat="server" enableviewstate="false" id="hiddenAlert" NAME="hiddenAlert" />
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAction" onserverchange="hiddenAction_ServerChange"
				NAME="hiddenAction" /> <input type="hidden" runat="server" enableviewstate="false" id="hiddenActionData" NAME="hiddenActionData" />
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
					<td valign="top" nowrap width="250">
						<div style="BORDER: 1.5pt inset; VERTICAL-ALIGN: middle; OVERFLOW: auto; WIDTH: 100%; HEIGHT: 240px; BACKGROUND-COLOR: white">
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
			</table>
			<table border="0" cellspacing="2" cellpadding="0" width="98%" align="center">
				<tr>
					<td valign="top">
						<fieldset align="center" style="width:480">
							<legend>
								[[Insert]]</legend>
							<table border="0" cellpadding="5" cellspacing="0" id="Table5">
								<tr>
									<td>
										<TABLE id="Table8" cellSpacing="0" cellPadding="2" border="0" class="normal">
											<TR>
												<TD vAlign="middle">URL:</TD>
												<td><input type="text" id="TargetUrl" style="width:400" name="TargetUrl" runat="server"></td>
											</TR>
										</TABLE>
									</td>
								</tr>
							</table>
						</fieldset>
						<fieldset align="center" style="width:480">
							<legend>
								[[Upload]] (Max file size allowed
								<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxDocumentSize * 1024)%>
								)</legend>
							<table border="0" cellpadding="5" cellspacing="0" id="Table5">
								<tr>
									<td>
										<table border="0" cellpadding="2" cellspacing="0" class="normal">
											<tr>
												<td>[[Upload]]:</td>
												<td>
													<input id="InputFile" size="40" type="file" runat="server" style="height:20px">
													<asp:Label ID="Label_PictureUpload" Runat="server">&nbsp;</asp:Label>
													<asp:Button ID="uploadButton" Text="[[Upload]]" Runat="server" OnClick="uploadButton_Click" />&nbsp;
													<asp:Label ID="uploadResult" Runat="server"></asp:Label></td>
											</tr>
											<tr>
												<td height="5" colspan="2">
												</td>
											</tr>
											<tr>
												<td colspan="2">
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
									</td>
								</tr>
							</table>
						</fieldset>
						<p align="center">
							<input class="inputbuttoninsert" type="button" value="[[OK]]" onclick="do_insert()" id="Button1"
								runat="server" NAME="Button1">&nbsp;&nbsp;&nbsp; <input class="inputbuttoncancel" type="button" value="[[Cancel]]" onclick="do_cancel()"
								id="Button2" runat="server" NAME="Button2">
						</p>
					</td>
				</tr>
			</table>
		</form>
	</body>
	<script runat="server">
	protected override void InitOfType()
	{
		fs.VirtualRoot=CuteEditor.EditorUtility.ProcessWebPath(Context,null,secset.FilesGalleryPath).TrimEnd('/')+"/";
	}
    protected override void GetFiles(ArrayList files)
    {
		files.AddRange(fs.GetFileItems(CurrentDirectory,"*.*"));
    }
    protected override bool AllowFileName(string filename)
    {
        filename = filename.ToLower();
        if(filename.EndsWith(".swf"))return true;
        foreach (string ext in secset.DocumentFilters)
        {
            if (ext == null || ext.Length == 0) continue;
            if(filename.EndsWith(ext.ToLower()))
                return true;
        }
        foreach (string ext in secset.ImageFilters)
        {
            if (ext == null || ext.Length == 0) continue;
            if(filename.EndsWith(ext.ToLower()))
                return true;
        }
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
var OxOf3ce=["innerHTML","","value","TargetUrl",".","\x3CIMG src=\x27","\x27\x3E","\x3COBJECT width=\x2290%\x22 height=\x2290%\x22 align=\x22\x22 src=\x22","\x22 xcodebase=","\x22http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab\x22"," classid=","\x22clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\x22\x3E"," \x3CPARAM name=\x22_cx\x22 value=\x224180\x22\x3E"," \x3CPARAM name=\x22_cy\x22 value=\x221455\x22\x3E"," \x3CPARAM name=\x22FlashVars\x22 value=\x224180\x22\x3E"," \x3CPARAM name=\x22Movie\x22 value=\x22","\x22\x3E"," \x3CPARAM name=\x22Src\x22 value=\x22"," \x3CPARAM name=\x22WMode\x22 value=\x22Window\x22\x3E"," \x3CPARAM name=\x22Play\x22 value=\x22-1\x22\x3E"," \x3CPARAM name=\x22Loop\x22 value=\x22-1\x22\x3E"," \x3CPARAM name=\x22Quality\x22 value=\x22height\x22\x3E"," \x3CPARAM name=\x22SAlign\x22 value=\x22\x22\x3E"," \x3CPARAM name=\x22Menu\x22 value=\x22-1\x22\x3E"," \x3CPARAM name=\x22Base\x22 value=\x22\x22\x3E"," \x3CPARAM name=\x22AllowScriptAccess\x22 value=\x22always\x22\x3E"," \x3CPARAM name=\x22Scale\x22 value=\x22ShowAll\x22\x3E"," \x3CPARAM name=\x22DeviceFont\x22 value=\x220\x22\x3E"," \x3CPARAM name=\x22EmbedMovie\x22 value=\x220\x22\x3E"," \x3CPARAM name=\x22SWRemote\x22 value=\x22\x22\x3E","\x3C/OBJECT\x3E","\x3Cembed name=\x22MediaPlayer1\x22 src=\x22","\x22 autostart=-1 showcontrols=-1  type=\x22application/x-mplayer2\x22 pluginspage=\x22http://www.microsoft.com/Windows/MediaPlayer\x22 \x3E\x3C/embed\x3E\x0A",".mp3",".mpg",".avi",".swf",".bmp",".png",".gif",".jpg",".jpeg","returnValue","zoom","style"]; do_preview() ; function do_preview(){ divpreview[OxOf3ce[0x0]]=OxOf3ce[0x1] ;var Oxbb=document.getElementById(OxOf3ce[0x3])[OxOf3ce[0x2]];if(Oxbb==OxOf3ce[0x1]){return ;} ;var Ox4db=Oxbb.substring(Oxbb.lastIndexOf(OxOf3ce[0x4])).toLowerCase();switch(Ox4db){case OxOf3ce[0x29]:case OxOf3ce[0x28]:case OxOf3ce[0x27]:case OxOf3ce[0x26]:case OxOf3ce[0x25]: divpreview[OxOf3ce[0x0]]=OxOf3ce[0x5]+Oxbb+OxOf3ce[0x6] ;break ;case OxOf3ce[0x24]:var Ox4dc=OxOf3ce[0x7]+Oxbb+OxOf3ce[0x8]+OxOf3ce[0x9]+OxOf3ce[0xa]+OxOf3ce[0xb]+OxOf3ce[0xc]+OxOf3ce[0xd]+OxOf3ce[0xe]+OxOf3ce[0xf]+Oxbb+OxOf3ce[0x10]+OxOf3ce[0x11]+Oxbb+OxOf3ce[0x10]+OxOf3ce[0x12]+OxOf3ce[0x13]+OxOf3ce[0x14]+OxOf3ce[0x15]+OxOf3ce[0x16]+OxOf3ce[0x17]+OxOf3ce[0x18]+OxOf3ce[0x19]+OxOf3ce[0x1a]+OxOf3ce[0x1b]+OxOf3ce[0x1c]+OxOf3ce[0x1d]+OxOf3ce[0x1e]; divpreview[OxOf3ce[0x0]]=Ox4dc ;break ;case OxOf3ce[0x23]:case OxOf3ce[0x22]:case OxOf3ce[0x21]:var Oxbe=OxOf3ce[0x1f]+Oxbb+OxOf3ce[0x20]; divpreview[OxOf3ce[0x0]]=Oxbe ;break ;;;;;;;;;;} ;}  ; function do_insert(){ top[OxOf3ce[0x2a]]=document.getElementById(OxOf3ce[0x3])[OxOf3ce[0x2]] ; top.close() ;}  ; function do_cancel(){ top[OxOf3ce[0x2a]]=null ; top.close() ;}  ; function Zoom_In(){if(divpreview[OxOf3ce[0x2c]][OxOf3ce[0x2b]]!=0x0){ divpreview[OxOf3ce[0x2c]][OxOf3ce[0x2b]]*=1.2 ;} else { divpreview[OxOf3ce[0x2c]][OxOf3ce[0x2b]]=1.2 ;} ;}  ; function Zoom_Out(){if(divpreview[OxOf3ce[0x2c]][OxOf3ce[0x2b]]!=0x0){ divpreview[OxOf3ce[0x2c]][OxOf3ce[0x2b]]*=0.8 ;} else { divpreview[OxOf3ce[0x2c]][OxOf3ce[0x2b]]=0.8 ;} ;}  ;
	</script>
</html>
