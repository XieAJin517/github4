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
		var OxOe35f=["disabled","target","[[Disabled]]","[[SpecifyNewFolderName]]","","value","hiddenActionData","[[CopyMoveto]]","/","[[AreyouSureDelete]]","parentNode","isdir","text","hiddenAction","rename","path","True","False",":","cancelBubble","backgroundColor","style","#eeeeee","tagName","INPUT","changedir","hiddenFile","url","TargetUrl"]; function CreateDir_click(){if(event[OxOe35f[0x1]][OxOe35f[0x0]]){ alert(OxOe35f[0x2]) ;return false;} ;var Ox2f4=prompt(OxOe35f[0x3],OxOe35f[0x4]);if(Ox2f4){ document.getElementById(OxOe35f[0x6])[OxOe35f[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Move_click(){if(event[OxOe35f[0x1]][OxOe35f[0x0]]){ alert(OxOe35f[0x2]) ;return false;} ;var Ox2f4=prompt(OxOe35f[0x7],OxOe35f[0x8]);if(Ox2f4){ document.getElementById(OxOe35f[0x6])[OxOe35f[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Copy_click(){if(event[OxOe35f[0x1]][OxOe35f[0x0]]){ alert(OxOe35f[0x2]) ;return false;} ;var Ox2f4=prompt(OxOe35f[0x7],OxOe35f[0x8]);if(Ox2f4){ document.getElementById(OxOe35f[0x6])[OxOe35f[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Delete_click(){if(event[OxOe35f[0x1]][OxOe35f[0x0]]){ alert(OxOe35f[0x2]) ;return false;} ;return confirm(OxOe35f[0x9]);}  ; function EditImg_click(Oxba){if(Oxba[OxOe35f[0x0]]){ alert(OxOe35f[0x2]) ;return false;} ; row=Oxba[OxOe35f[0xa]][OxOe35f[0xa]] ;var name;if(row[OxOe35f[0xb]]){ name=prompt(OxOe35f[0x3],row.text) ;} else { name=prompt(OxOe35f[0x3],row.text) ;} ;if(name&&name!=row[OxOe35f[0xc]]){ document.getElementById(OxOe35f[0xd])[OxOe35f[0x5]]=OxOe35f[0xe] ; document.getElementById(OxOe35f[0x6])[OxOe35f[0x5]]=(row[OxOe35f[0xb]]?OxOe35f[0x10]:OxOe35f[0x11])+OxOe35f[0x12]+row[OxOe35f[0xf]]+OxOe35f[0x12]+name ; postback() ;} ; event[OxOe35f[0x13]]=true ;}  ; function row_over(Oxc4){ Oxc4[OxOe35f[0x15]][OxOe35f[0x14]]=OxOe35f[0x16] ;}  ; function row_out(Oxc4){ Oxc4[OxOe35f[0x15]][OxOe35f[0x14]]=OxOe35f[0x4] ;}  ; function row_click(Oxc4){if(Oxc4[OxOe35f[0xb]]){if(event[OxOe35f[0x1]][OxOe35f[0x17]]==OxOe35f[0x18]){return ;} ; document.getElementById(OxOe35f[0xd])[OxOe35f[0x5]]=OxOe35f[0x19] ; document.getElementById(OxOe35f[0x6])[OxOe35f[0x5]]=Oxc4.getAttribute(OxOe35f[0xf]) ; postback() ;} else { document.getElementById(OxOe35f[0x1a])[OxOe35f[0x5]]=Oxc4.getAttribute(OxOe35f[0xf]) ; document.getElementById(OxOe35f[0x1c])[OxOe35f[0x5]]=Oxc4.getAttribute(OxOe35f[0x1b]) ; do_preview() ;} ;}  ; function postback(){ <%=Page.GetPostBackEventReference(hiddenAction,"")%> ;}  ;
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
        var OxO1236=["onload","value","hiddenAlert","","hiddenAction","hiddenActionData"]; window[OxO1236[0x0]]=reset_hiddens ; function reset_hiddens(){if(document.getElementById(OxO1236[0x2])[OxO1236[0x1]]){ alert(document.getElementById(OxO1236[0x2]).value) ;} ; document.getElementById(OxO1236[0x2])[OxO1236[0x1]]=OxO1236[0x3] ; document.getElementById(OxO1236[0x4])[OxO1236[0x1]]=OxO1236[0x3] ; document.getElementById(OxO1236[0x5])[OxO1236[0x1]]=OxO1236[0x3] ;}  ;
			</script>
			<input type="hidden" runat="server" id="hiddenDirectory"> <input type="hidden" runat="server" id="hiddenFile">
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAlert"> <input type="hidden" runat="server" enableviewstate="false" id="hiddenAction" onserverchange="hiddenAction_ServerChange">
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenActionData">
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
					<td valign="top" nowrap width="250">
						<div style="BORDER: 1.5pt inset;  VERTICAL-ALIGN: middle; OVERFLOW: auto; WIDTH: 250; HEIGHT: 240px; Padding: 0 0 0 0; BACKGROUND-COLOR: white">
							<asp:Table ID="FoldersAndFiles" Runat="server" CellSpacing="1" CellPadding="1" Width="100%" CssClass="sortable">
								<asp:TableRow BackColor="#f0f0f0">
									<asp:TableHeaderCell Width="16px" >
						<asp:ImageButton ID="Delete" Runat="server" AlternateText="Deletefiles"
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
								</asp:TableRow>
							</asp:Table>
						</div>
					</td>
					<td width="10">
					</td>
					<td valign="top">
						<div style="BORDER: 1.5pt inset; VERTICAL-ALIGN: top; OVERFLOW: auto; WIDTH: 300px; HEIGHT: 240px; BACKGROUND-COLOR: white; TEXT-ALIGN: center">
							<div id="divpreview" style="BACKGROUND-COLOR: white" height="100%" width="100%">
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
							<table border="0" cellpadding="5" cellspacing="0" ID="Table3">
								<tr>
									<td>
										<table border="0" cellpadding="2" cellspacing="0" class="normal">
											<tr>
												<td width="120">[[Width]]:</td>
												<td width="100"><input type="text" name="Width" id="Width" style="WIDTH : 80px" onchange="do_preview()"
														onpropertychange="do_preview()" value="200" runat="server"></td>
											</tr>
											<tr>
												<td>[[Height]]:</td>
												<td><input type="text" name="Height" id="Height" style="WIDTH : 80px" onchange="do_preview()"
														onpropertychange="do_preview()" value="200" runat="server"></td>
											</tr>
											<tr>
												<td>[[Backgroundcolor]]:</td>
												<td>
													<input type="text" id="bgColortext" name="bgColortext" size="7" style="WIDTH:57px">	
													<img id="s_bgColortext" src="../images/colorpicker.gif" onclick="SelectColor();" align="absMiddle">												
												</td>
											</tr>
											<tr>
												<td>[[Transparency]]:</td>
												<td><input type="checkbox" name="Transparency" onchange="do_preview()" onpropertychange="do_preview()"
														id="Transparency" value="Transparency" runat="server"></td>
											</tr>
											<tr>
												<td>[[Quality]]:
												</td>
												<td><select name="Quality" id="Quality" style="WIDTH : 80px" onchange="do_preview()" onpropertychange="do_preview()"
														runat="server">
														<option selected value="high">High</option>
														<option value="medium">Medium</option>
														<option value="low">Low</option>
													</select>
												</td>
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
							<table border="0" cellpadding="5" cellspacing="0">
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
						<fieldset runat="server" id="fieldsetUpload">
							<legend>
								[[Upload]] (Max file size allowed
								<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxFlashSize * 1024)%>
								)</legend>
							<table border="0" cellspacing="2" cellpadding="0" width="98%" align="center" class="normal">
								<tr>
									<td valign="top" width="54%" style="FONT-SIZE: 8pt; VERTICAL-ALIGN: middle;">
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
													Max Upload folder size is : <%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxFlashFolderSize * 1024)%>.
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
								id="Button1" runat="server">&nbsp;&nbsp;&nbsp; <input class="inputbuttoncancel" type="button" value="[[Cancel]]" onclick="do_cancel()"
								id="Button2" runat="server">
						</p>
					</td>
				</tr>
			</table>
		</form>
		<script runat="server">
	protected override void InitOfType()
	{
		fs.VirtualRoot=CuteEditor.EditorUtility.ProcessWebPath(Context,null,secset.FlashGalleryPath).TrimEnd('/')+"/";
	}
    protected override void GetFiles(ArrayList files)
    {
        files.AddRange(fs.GetFileItems(CurrentDirectory, "*.swf"));
    }
    protected override bool AllowFileName(string filename)
    {
        filename = filename.ToLower();
        return filename.EndsWith(".swf");
    }
    protected override string CheckUploadData(ref byte[] data)
    {
		if (fs.GetDirectorySize(fs.VirtualRoot) >= secset.MaxFlashFolderSize * 1024)
           return "Flash folder size exceeds the limit: "+ CuteEditor.Impl.FileStorage.FormatSize(secset.MaxFlashFolderSize * 1024);
		
		if (data.Length >= secset.MaxFlashSize * 1024)
            return "Flash size exceeds "+CuteEditor.Impl.FileStorage.FormatSize(secset.MaxFlashSize * 1024)+" limit: "+ CuteEditor.Impl.FileStorage.FormatSize(data.Length);
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
			var OxO7338=["dialogArguments","availWidth","availHeight","TargetUrl","bgColortext","Width","Height","Quality","Transparency","value","","\x3Cembed src=\x22","\x22 quality=\x22","\x22 bgcolor=\x22","\x22  width=\x22","\x22 height=\x22","\x22 type=\x22application/x-shockwave-flash\x22 pluginspage=\x22http://www.macromedia.com/go/getflashplayer\x22\x3E\x3C/embed\x3E\x0A","innerHTML","Please choose a Flash movie to insert","w","px","h","wm","bg","qu","swf","../colorpicker.aspx","returnValue","backgroundColor","style","s_bgColortext"];var editor=top[OxO7338[0x0]]; window.resizeTo(0x24a,0x236) ; window.moveTo((screen[OxO7338[0x1]]-0x258)/0x2,(screen[OxO7338[0x2]]-0x190)/0x2) ; do_preview() ; function do_preview(){var Oxbb;var Ox4e7;var Ox4dc;var Ox82;var Ox2d8;var Ox4e8;var Ox4e9;var Ox4ea=document.getElementById(OxO7338[0x3]);var Ox4eb=document.getElementById(OxO7338[0x4]);var Ox4ec=document.getElementById(OxO7338[0x5]);var Ox4ed=document.getElementById(OxO7338[0x6]);var Ox4ee=document.getElementById(OxO7338[0x7]);var Ox4ef=document.getElementById(OxO7338[0x8]); Ox4e9=Ox4eb[OxO7338[0x9]] ; Oxbb=Ox4ea[OxO7338[0x9]] ; Ox82=Ox4ec[OxO7338[0x9]] ; Ox2d8=Ox4ed[OxO7338[0x9]] ; Ox4e8=Ox4ee[OxO7338[0x9]] ; preview_width=0xf0 ; preview_height=0xc8 ; w=parseInt(Ox82) ; h=parseInt(Ox2d8) ;if(w>h){ Ox82=preview_width ; Ox2d8=preview_height*h/w ;} else { Ox82=preview_width*w/h ; Ox2d8=preview_height ;} ; Ox82=parseInt(Ox82) ; Ox2d8=parseInt(Ox2d8) ;if(Oxbb==OxO7338[0xa]){return ;} ;var Ox4dc=OxO7338[0xb]+Oxbb+OxO7338[0xc]+Ox4e8+OxO7338[0xd]+Ox4e9+OxO7338[0xe]+Ox82+OxO7338[0xf]+Ox2d8+OxO7338[0x10]; divpreview[OxO7338[0x11]]=Ox4dc ;}  ;var parameters= new Array(); function do_insert(){var Ox4eb=document.getElementById(OxO7338[0x4]);var Ox4ec=document.getElementById(OxO7338[0x5]);var Ox4ed=document.getElementById(OxO7338[0x6]);var Ox4ee=document.getElementById(OxO7338[0x7]);var Ox4ea=document.getElementById(OxO7338[0x3]);var Ox4ef=document.getElementById(OxO7338[0x8]);if(Ox4ea[OxO7338[0x9]]==OxO7338[0xa]){ alert(OxO7338[0x12]) ;return false;} ; parameters[OxO7338[0x13]]=Ox4ec[OxO7338[0x9]]+OxO7338[0x14] ; parameters[OxO7338[0x15]]=Ox4ed[OxO7338[0x9]]+OxO7338[0x14] ; parameters[OxO7338[0x16]]=Ox4ef[OxO7338[0x9]] ; parameters[OxO7338[0x17]]=Ox4eb[OxO7338[0x9]] ; parameters[OxO7338[0x18]]=Ox4ee[OxO7338[0x9]] ; parameters[OxO7338[0x19]]=Ox4ea[OxO7338[0x9]] ;var Oxbf=OxO7338[0xb]+parameters[OxO7338[0x19]]+OxO7338[0xc]+parameters[OxO7338[0x18]]+OxO7338[0xd]+parameters[OxO7338[0x17]]+OxO7338[0xe]+parameters[OxO7338[0x13]]+OxO7338[0xf]+parameters[OxO7338[0x15]]+OxO7338[0x10]; editor.PasteHTML(Oxbf) ; top.close() ;}  ; function do_cancel(){ top.close() ;}  ; function SelectColor(){var Ox4e0=OxO7338[0x1a]; openModalWindow(Ox4e0,null,_colorpickerDialogFeature,function (Ox2d9,Ox18e){if(Ox18e[OxO7338[0x1b]]){ document.getElementById(OxO7338[0x4])[OxO7338[0x9]]=Ox18e[OxO7338[0x1b]].toUpperCase() ; document.getElementById(OxO7338[0x1e])[OxO7338[0x1d]][OxO7338[0x1c]]=Ox18e[OxO7338[0x1b]] ;} ;} ) ;}  ;
		</script>
	</body>
</HTML>
