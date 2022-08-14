<%@ Page Language="C#" Inherits="CuteEditor.Dialogs.FileBrowserPage" %>
<HTML>
	<HEAD>
		<title>[[InsertImage]] 
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
		var OxO2ea0=["disabled","target","[[Disabled]]","[[SpecifyNewFolderName]]","","value","hiddenActionData","[[CopyMoveto]]","/","[[AreyouSureDelete]]","parentNode","isdir","text","hiddenAction","rename","path","True","False",":","cancelBubble","backgroundColor","style","#eeeeee","tagName","INPUT","changedir","hiddenFile","url","TargetUrl"]; function CreateDir_click(){if(event[OxO2ea0[0x1]][OxO2ea0[0x0]]){ alert(OxO2ea0[0x2]) ;return false;} ;var Ox2f4=window.prompt(OxO2ea0[0x3],OxO2ea0[0x4]);if(Ox2f4){ document.getElementById(OxO2ea0[0x6])[OxO2ea0[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Move_click(){if(event[OxO2ea0[0x1]][OxO2ea0[0x0]]){ alert(OxO2ea0[0x2]) ;return false;} ;var Ox2f4=window.prompt(OxO2ea0[0x7],OxO2ea0[0x8]);if(Ox2f4){ document.getElementById(OxO2ea0[0x6])[OxO2ea0[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Copy_click(){if(event[OxO2ea0[0x1]][OxO2ea0[0x0]]){ alert(OxO2ea0[0x2]) ;return false;} ;var Ox2f4=window.prompt(OxO2ea0[0x7],OxO2ea0[0x8]);if(Ox2f4){ document.getElementById(OxO2ea0[0x6])[OxO2ea0[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Delete_click(){if(event[OxO2ea0[0x1]][OxO2ea0[0x0]]){ alert(OxO2ea0[0x2]) ;return false;} ;return confirm(OxO2ea0[0x9]);}  ; function EditImg_click(Oxba){if(Oxba[OxO2ea0[0x0]]){ alert(OxO2ea0[0x2]) ;return false;} ; row=Oxba[OxO2ea0[0xa]][OxO2ea0[0xa]] ;var name;if(row[OxO2ea0[0xb]]){ name=window.prompt(OxO2ea0[0x3],row.text) ;} else { name=window.prompt(OxO2ea0[0x3],row.text) ;} ;if(name&&name!=row[OxO2ea0[0xc]]){ document.getElementById(OxO2ea0[0xd])[OxO2ea0[0x5]]=OxO2ea0[0xe] ; document.getElementById(OxO2ea0[0x6])[OxO2ea0[0x5]]=(row[OxO2ea0[0xb]]?OxO2ea0[0x10]:OxO2ea0[0x11])+OxO2ea0[0x12]+row[OxO2ea0[0xf]]+OxO2ea0[0x12]+name ; postback() ;} ; event[OxO2ea0[0x13]]=true ;}  ; function row_over(Oxc4){ Oxc4[OxO2ea0[0x15]][OxO2ea0[0x14]]=OxO2ea0[0x16] ;}  ; function row_out(Oxc4){ Oxc4[OxO2ea0[0x15]][OxO2ea0[0x14]]=OxO2ea0[0x4] ;}  ; function row_click(Oxc4){if(Oxc4[OxO2ea0[0xb]]){if(event[OxO2ea0[0x1]][OxO2ea0[0x17]]==OxO2ea0[0x18]){return ;} ; document.getElementById(OxO2ea0[0xd])[OxO2ea0[0x5]]=OxO2ea0[0x19] ; document.getElementById(OxO2ea0[0x6])[OxO2ea0[0x5]]=Oxc4.getAttribute(OxO2ea0[0xf]) ; postback() ;} else { document.getElementById(OxO2ea0[0x1a])[OxO2ea0[0x5]]=Oxc4.getAttribute(OxO2ea0[0xf]) ; document.getElementById(OxO2ea0[0x1c])[OxO2ea0[0x5]]=Oxc4.getAttribute(OxO2ea0[0x1b]) ; Actualsize() ;} ;}  ; function postback(){ <%=Page.GetPostBackEventReference(hiddenAction,"")%> ;}  ;
		
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
        var OxO9324=["onload","value","hiddenAlert","","hiddenAction","hiddenActionData"]; window[OxO9324[0x0]]=reset_hiddens ; function reset_hiddens(){if(document.getElementById(OxO9324[0x2])[OxO9324[0x1]]){ alert(document.getElementById(OxO9324[0x2]).value) ;} ; document.getElementById(OxO9324[0x2])[OxO9324[0x1]]=OxO9324[0x3] ; document.getElementById(OxO9324[0x4])[OxO9324[0x1]]=OxO9324[0x3] ; document.getElementById(OxO9324[0x5])[OxO9324[0x1]]=OxO9324[0x3] ;}  ;
			</script>
			<input type="hidden" runat="server" id="hiddenDirectory" NAME="hiddenDirectory"> <input type="hidden" runat="server" id="hiddenFile" NAME="hiddenFile">
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAlert" NAME="hiddenAlert"> <input type="hidden" runat="server" enableviewstate="false" id="hiddenAction" onserverchange="hiddenAction_ServerChange" NAME="hiddenAction">
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenActionData" NAME="hiddenActionData">
			<!-- end hidden -->
				<table border="0" cellspacing="2" cellpadding="0" width="100%" align="center">
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
							OnClick="Move_Click" /><IMG src="../images/Actualsize.gif" onclick="Actualsize();" Alt="[[ActualSize]]" class="dialogButton"
							onMouseOver="Check(this,1)" onMouseOut="Check(this,0)">
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
				<tr>
					<td valign="top" nowrap width="270">
						<div style="BORDER: 1.5pt inset;  VERTICAL-ALIGN: middle; OVERFLOW: auto; WIDTH: 270px; HEIGHT: 250px; Padding: 0 0 0 0; BACKGROUND-COLOR: white">
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
					<td width="10">&nbsp;
					</td>
					<td width="10" nowrap>&nbsp;
					</td>
					<td valign="top">
						<div style="Height:240px; WIDTH: 320px; BORDER: 1.0pt inset; PADDING: 5px;VERTICAL-ALIGN: top; OVERFLOW: auto;BACKGROUND-COLOR: white; TEXT-ALIGN: center">
							<div id="divpreview" style="BACKGROUND-COLOR: white" style="width:100%">
								<img id="img_demo" src="../images/1x1.gif">
							</div>
						</div>
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="2" cellpadding="0" width="630" align="center">
				<tr>
					<td valign="top" width="225px">
						<fieldset>
							<legend>
								[[Layout]]</legend>
							<table border="0" cellpadding="5" cellspacing="0" width="220px">
								<tr>
									<td>
										<table border="0" cellpadding="2" cellspacing="0" class="normal" width="220">
											<tr>
												<td width="100">[[Alignment]]:</td>
												<td>
													<select name="ImgAlign" style="WIDTH : 80px" ID="Align" onchange="do_preview()" onpropertychange="do_preview()"
														runat="server">
														<OPTION id="optNotSet" value="">[[Notset]]</OPTION>
														<OPTION id="optLeft" value="left">[[Left]]</OPTION>
														<OPTION id="optRight" value="right">[[Right]]</OPTION>
														<OPTION id="optTexttop" value="textTop">[[Texttop]]</OPTION>
														<OPTION id="optAbsMiddle" value="absMiddle">[[Absmiddle]]</OPTION>
														<OPTION id="optBaseline" value="baseline" selected>[[Baseline]]</OPTION>
														<OPTION id="optAbsBottom" value="absBottom">[[Absbottom]]</OPTION>
														<OPTION id="optBottom" value="bottom">[[Bottom]]</OPTION>
														<OPTION id="optMiddle" value="middle">[[Middle]]</OPTION>
														<OPTION id="optTop" value="top">[[Top]]</OPTION>
													</select>
												</td>
											</tr>
											<tr>
												<td nowrap>[[Bordersize]]:</td>
												<td>
													<INPUT type="text" SIZE="2" name="Border" onchange="do_preview()" style="WIDTH : 80px" ID="Border">
												</td>
											</tr>
											<tr>
												<td nowrap>[[Bordercolor]]:</td>
												<td>
													<input type="text" id="bordercolor" name="bordercolor" size="7" style="WIDTH:57px">	
													<img id="s_bordercolor" src="../images/colorpicker.gif" onclick="SelectColor('bordercolor','s_bordercolor');" align="absMiddle">
												</td>
											</tr>
											<tr>
												<td colspan="2">
													<table border="0" cellpadding="0" cellspacing="0" class="normal">
														<tr>
															<td width="100" nowrap>[[Width]]:</td>
															<td>
																<INPUT type="text" SIZE="2" onkeyup="checkConstrains('width');" style="WIDTH : 80px" id="inp_width">
															</td>
															<td rowspan="2" align="right" valign="middle"><img src="../images/locked.gif" id="imgLock" width="25" height="32" alt="Constrained Proportions" /></td>
														</tr>
														<tr>
															<td nowrap>[[Height]]:</td>
															<td>
																<INPUT type="text" SIZE="2" onkeyup="checkConstrains('height');" style="WIDTH : 80px" id="inp_height">
															</td>
														</tr>
														<tr>
															<td colspan="2">
																<input type="checkbox" id="constrain_prop" checked onclick="javascript:toggleConstrains();" />
																Constrain Proportions</td>
														</tr>
													</table>
												</td>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
						<fieldset><legend>[[Spacing]]</legend>
							<table border="0" cellpadding="5" cellspacing="0">
								<tr>
									<td>
										<table border="0" cellpadding="2" cellspacing="0" class="normal">
											<tr>
												<td valign="middle" width="100">[[Horizontal]]:</td>
												<td><INPUT type="text" SIZE="2" name="HSpace" value="" onchange="do_preview()" style="WIDTH:80px" id="HSpace">
												</td>
											</tr>
											<tr>
												<td valign="middle">[[Vertical]]:</td>
												<td><INPUT type="text" SIZE="2" name="VSpace" value="" onchange="do_preview()" style="WIDTH:80px" id="VSpace"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
					</td>
					<td width="10">
					</td>
					<td valign="top"  width="330px">
						<fieldset style="width:315px">
							<legend>
								[[Insert]]</legend>
							<table border="0" cellpadding="4" cellspacing="0" width="280px">
								<tr>
									<td>
										<table border="0" cellpadding="2" cellspacing="0" class="normal">
											<tr>
												<td valign="middle">
													URL:</td>
												<td>
													<input type="text" id="TargetUrl" onpropertychange="do_preview()" size="40" name="TargetUrl"
														runat="server"></td>
											</tr>
											<tr>
												<td valign="middle">[[Alternate]]:</td>
												<td valign="middle"><input type="text" id="AlternateText" size="40" name="AlternateText"></td>
											</tr>
											<tr>
												<td valign="middle" nowrap>[[longDesc]]:</td>
												<td valign="middle"><nobr><input type="text" id="longDesc" size="40" name="longDesc"><img src="../images/Accessibility.gif" align="absMiddle" hspace="5"></nobr></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
						<fieldset style="width:315px" align="center" id="fieldsetUpload">
							<legend>
								[[Upload]] (Max file size allowed
								<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageSize * 1024)%>
								)</legend>
							<table border="0" cellspacing="2" cellpadding="0"  width="280px" class="normal" align="center">
								<tr>
									<td valign="top" style="FONT-SIZE: 8pt; VERTICAL-ALIGN: middle; FONT-FAMILY: MS Sans Serif">
										<asp:Label ID="Label_PictureUpload" Runat="server"></asp:Label>
										<input id="InputFile" size="45" type="file" runat="server" style="HEIGHT:20px" name="InputFile">&nbsp; <br>
										<asp:Button ID="uploadButton" Text="[[Upload]]" Runat="server" OnClick="uploadButton_Click" />&nbsp;
									</td>
								</tr>
								<tr>
									<td height="5">
									</td>
								</tr>
								<tr>
									<td>
										<% if(secset.RestrictUploadedImageDimension) {%>
										<li>
											Max image dimension is
											<%= secset.MaxImageWidth%>
											x
											<%= secset.MaxImageHeight%>
											pixels.
										</li>
										<li>
											Auto resize uploaded images function is
											<%= secset.AutoResizeUploadedImages? "on":"off" %>
											.</li>
										<%}%>
										<li>
											<table cellpadding="0" cellspacing="0" border="0" style="display:inline">
												<tr>
													<td>
														<nobr>
															Max Upload folder size is : <%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageFolderSize * 1024)%>.
															Used: <%= CuteEditor.Impl.FileStorage.FormatSize(fs.GetDirectorySize(fs.VirtualRoot)) %>&nbsp;&nbsp;
														</nobr>
													</td>
													<td>
														<div style="background-color:green;height:3px;width:40;font-size:3px">
															<div style="background-color:red;height:3px;width:<%= GetUsedSpaceBarWidth() %>px;font-size:3px"></div>
														</div>
													</td>
												</tr>
											</table>
											
										</li>
									</td>
								</tr>
							</table>
						</fieldset>
						<p align="center">
							<input class="inputbuttoninsert" type="button" value="[[Insert]]" onclick="do_insert()"
								id="Button1">&nbsp;&nbsp;&nbsp; <input class="inputbuttoncancel" type="button" value="[[Cancel]]" onclick="do_cancel()"
								id="Button2">
						</p>
					</td>
				</tr>
			</table>
		</form>
		<script runat="server">
			protected override void InitOfType()
			{
				fs.VirtualRoot=CuteEditor.EditorUtility.ProcessWebPath(Context,null,secset.ImageGalleryPath).TrimEnd('/')+"/";
			}
			protected override void GetFiles(ArrayList files)
			{
				foreach (string ext in secset.ImageFilters)
				{
					if (ext == null || ext.Length == 0) continue;

					files.AddRange(fs.GetFileItems(CurrentDirectory, "*" + ext));
				}
			}
			protected override bool AllowFileName(string filename)
			{
				filename = filename.ToLower();
				foreach (string ext in secset.ImageFilters)
				{
					if (ext == null || ext.Length == 0) continue;
					if(filename.EndsWith(ext.ToLower()))
						return true;
				}
				return false;
			}
		    
			protected int GetUsedSpaceBarWidth()
			{
			int w = Convert.ToInt32(40*fs.GetDirectorySize(fs.VirtualRoot)/(secset.MaxImageFolderSize * 1024));
			if(w<1)
				w=1;
				
			if(w>40)
				w=40;
				
			return w;      
			}
		    
			protected override string CheckUploadData(ref byte[] data)
			{     
			if (fs.GetDirectorySize(fs.VirtualRoot) >= secset.MaxImageFolderSize * 1024)
				return "Image folder size exceeds the limit: "+ CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageFolderSize * 1024);
		       
				System.Drawing.Image img;
				try
				{
					img = System.Drawing.Image.FromStream(new System.IO.MemoryStream(data));
				}
				catch
				{
					return "Image is in the wrong format.";
				}

				//let base class to implement
				/*
		        
				if (data.Length >= secset.MaxImageSize * 1024)
				return "Image size exceeds "+CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageSize * 1024)+" limit: "+ CuteEditor.Impl.FileStorage.FormatSize(data.Length);


				if(secset.RestrictUploadedImageDimension)
				{
					if(secset.AutoResizeUploadedImages)
					{
						return null;//let base class implement the secset.AutoResizeUploadedImages
					}
					else
					{
						if ((img.Width > secset.MaxImageWidth) || ((img.Height > secset.MaxImageHeight)))
							return String.Format("Image dimension ({0} x {1} pixels) exceeding limits.", img.Width, img.Height);
					}	
				}
				*/
				
				return null;
			}
		</script>
		<script src="addvars.js"></script>
		<script>		
			
			var OxOaa73=["availWidth","availHeight","dialogArguments","opener","editor","editdoc","img","inp_width","inp_height","VSpace","HSpace","Border","bordercolor","bordercolor_Preview","AlternateText","longDesc","Align","TargetUrl","frameloaded","src","value","width","height","vspace","hspace","border","borderColor","style","backgroundColor","align","alt","file","","../images/1x1.gif","\x3Cimg id=preview_image onmousewheel=\x22return Picture(this);\x22","border-color=","/\x3E","innerHTML","IMG","Please choose an image to insert","DIV","Delete"," ","=\x22","\x22","length","imgLock","constrain_prop","checked","../images/locked.gif","preview_image","specified","nodeName"]; window.resizeTo(0x280,0x249) ; window.moveTo((screen[OxOaa73[0x0]]-0x258)/0x2,(screen[OxOaa73[0x1]]-0x190)/0x2) ;var dialogArguments=window[OxOaa73[0x3]][OxOaa73[0x2]];var obj=window[OxOaa73[0x3]][OxOaa73[0x2]];var editor=obj[OxOaa73[0x4]];var editdoc=obj[OxOaa73[0x5]];var oControl=obj[OxOaa73[0x6]]; window.focus() ;var inp_width=document.getElementById(OxOaa73[0x7]);var inp_height=document.getElementById(OxOaa73[0x8]);var VSpace=document.getElementById(OxOaa73[0x9]);var HSpace=document.getElementById(OxOaa73[0xa]);var Border=document.getElementById(OxOaa73[0xb]);var bordercolor=document.getElementById(OxOaa73[0xc]);var bordercolor_Preview=document.getElementById(OxOaa73[0xd]);var AlternateText=document.getElementById(OxOaa73[0xe]);var longDesc=document.getElementById(OxOaa73[0xf]);var Align=document.getElementById(OxOaa73[0x10]);var Border=document.getElementById(OxOaa73[0xb]);var TargetUrl=document.getElementById(OxOaa73[0x11]);if(!top[OxOaa73[0x12]]){ top[OxOaa73[0x12]]=true ;if(oControl){if(oControl[OxOaa73[0x13]]){ TargetUrl[OxOaa73[0x14]]=oControl.getAttribute(OxOaa73[0x13]) ;} ;if(oControl[OxOaa73[0x15]]>0x0){ inp_width[OxOaa73[0x14]]=oControl[OxOaa73[0x15]] ;} ;if(oControl[OxOaa73[0x16]]>0x0){ inp_height[OxOaa73[0x14]]=oControl[OxOaa73[0x16]] ;} ;if(oControl[OxOaa73[0x17]]&&oControl[OxOaa73[0x17]]>=0x0){ VSpace[OxOaa73[0x14]]=oControl[OxOaa73[0x17]] ;} ;if(oControl[OxOaa73[0x18]]&&oControl[OxOaa73[0x18]]>=0x0){ HSpace[OxOaa73[0x14]]=oControl[OxOaa73[0x18]] ;} ;if(oControl[OxOaa73[0x19]]){ Border[OxOaa73[0x14]]=oControl[OxOaa73[0x19]] ;} ;if(oControl[OxOaa73[0x1b]][OxOaa73[0x1a]]||GetAttribute(oControl,OxOaa73[0xc])){ bordercolor[OxOaa73[0x14]]=oControl[OxOaa73[0x1b]][OxOaa73[0x1a]]||GetAttribute(oControl,OxOaa73[0xc]) ;} ;if(bordercolor[OxOaa73[0x14]]){ bordercolor[OxOaa73[0x1b]][OxOaa73[0x1c]]=bordercolor[OxOaa73[0x14]] ;} ;if(oControl[OxOaa73[0x1d]]){ Align[OxOaa73[0x14]]=oControl[OxOaa73[0x1d]] ;} ;if(oControl[OxOaa73[0x1e]]){ AlternateText[OxOaa73[0x14]]=oControl[OxOaa73[0x1e]] ;} ;if(oControl[OxOaa73[0xf]]){ longDesc[OxOaa73[0x14]]=oControl[OxOaa73[0xf]] ;} ;} ;} ; function Actualsize(){try{var Oxba= new Image(); Oxba[OxOaa73[0x13]]=TargetUrl[OxOaa73[0x14]] ;if(Oxba[OxOaa73[0x15]]){ inp_width[OxOaa73[0x14]]=Oxba[OxOaa73[0x15]] ;} ;if(Oxba[OxOaa73[0x16]]){ inp_height[OxOaa73[0x14]]=Oxba[OxOaa73[0x16]] ;} ;} catch(er){} ; do_preview() ;}  ;var sCheckFlag=OxOaa73[0x1f]; do_preview() ; function do_preview(){var Ox501=TargetUrl[OxOaa73[0x14]];if(Ox501==OxOaa73[0x20]){ Ox501=OxOaa73[0x21] ;} ;var Ox180=OxOaa73[0x22]+attr(OxOaa73[0x13],Ox501)+attr(OxOaa73[0x1e],AlternateText.value)+attr(OxOaa73[0x1d],Align.value)+((inp_width[OxOaa73[0x14]])?attr(OxOaa73[0x15],inp_width.value):OxOaa73[0x20])+((inp_height[OxOaa73[0x14]])?attr(OxOaa73[0x16],inp_height.value):OxOaa73[0x20])+((VSpace[OxOaa73[0x14]])?attr(OxOaa73[0x17],VSpace.value):OxOaa73[0x20])+((HSpace[OxOaa73[0x14]])?attr(OxOaa73[0x18],HSpace.value):OxOaa73[0x20])+((Border[OxOaa73[0x14]])?attr(OxOaa73[0x19],Border.value):attr(OxOaa73[0x19],0x0))+(((bordercolor[OxOaa73[0x14]])&&(Border[OxOaa73[0x14]]>0x0))?attr(OxOaa73[0x1b],OxOaa73[0x23]+bordercolor.value):OxOaa73[0x20])+OxOaa73[0x24]; divpreview[OxOaa73[0x25]]=Ox180 ;}  ; function do_insert(){if(oControl){var Oxba=oControl;} else {var Oxba=document.createElement(OxOaa73[0x26]);} ; Oxba[OxOaa73[0x13]]=TargetUrl[OxOaa73[0x14]] ;if(inp_width[OxOaa73[0x14]]!=OxOaa73[0x20]){ Oxba[OxOaa73[0x15]]=inp_width[OxOaa73[0x14]] ;} ;if(inp_height[OxOaa73[0x14]]!=OxOaa73[0x20]){ Oxba[OxOaa73[0x16]]=inp_height[OxOaa73[0x14]] ;} ; Oxba[OxOaa73[0x17]]=VSpace[OxOaa73[0x14]] ; Oxba[OxOaa73[0x18]]=HSpace[OxOaa73[0x14]] ; Oxba[OxOaa73[0x19]]=Border[OxOaa73[0x14]] ;try{ Oxba[OxOaa73[0x1b]][OxOaa73[0x1a]]=bordercolor[OxOaa73[0x14]] ;} catch(er){} ; Oxba[OxOaa73[0x1d]]=Align[OxOaa73[0x14]] ; Oxba[OxOaa73[0x1e]]=AlternateText[OxOaa73[0x14]] ; Oxba[OxOaa73[0xf]]=longDesc[OxOaa73[0x14]] ;if(TargetUrl[OxOaa73[0x14]]==OxOaa73[0x20]){ alert(OxOaa73[0x27]) ;return false;} ;if(!oControl){var div=document.createElement(OxOaa73[0x28]); div.appendChild(Oxba) ; editdoc.execCommand(OxOaa73[0x29],false,OxOaa73[0x20]) ; editor.PasteHTML(div.innerHTML) ;} ; top.close() ;}  ; function attr(name,Ox224){if(!Ox224||Ox224==OxOaa73[0x20]){return OxOaa73[0x20];} ;return OxOaa73[0x2a]+name+OxOaa73[0x2b]+Ox224+OxOaa73[0x2c];}  ; function do_cancel(){ top.close() ;}  ; function GetPreviewedImage(){var Ox308=divpreview.getElementsByTagName(OxOaa73[0x26]);if(Ox308&&Ox308[OxOaa73[0x2d]]>0x0){return Ox308.item(0x0);} else {return null;} ;}  ; function toggleConstrains(){var Ox504=document.getElementById(OxOaa73[0x2e]);var Ox505=document.getElementById(OxOaa73[0x2f]);if(Ox505[OxOaa73[0x30]]){ Ox504[OxOaa73[0x13]]=OxOaa73[0x31] ; checkConstrains(OxOaa73[0x15]) ;} else { Ox504[OxOaa73[0x13]]=OxOaa73[0x21] ;} ;}  ;var checkingConstrains=false; function checkConstrains(Ox198){if(checkingConstrains){return ;} ; checkingConstrains=true ;try{var Ox505=document.getElementById(OxOaa73[0x2f]);if(Ox505[OxOaa73[0x30]]){var Ox508=document.getElementById(OxOaa73[0x32]);var Ox509= new Image(); Ox509[OxOaa73[0x13]]=TargetUrl[OxOaa73[0x14]] ; original_width=Ox509[OxOaa73[0x15]] ; original_height=Ox509[OxOaa73[0x16]] ;if(original_width>0x0&&original_height>0x0){ width=inp_width[OxOaa73[0x14]] ; height=inp_height[OxOaa73[0x14]] ;if(Ox198==OxOaa73[0x15]){if(width[OxOaa73[0x2d]]==0x0||isNaN(width)){ inp_width[OxOaa73[0x14]]=OxOaa73[0x20] ; inp_height[OxOaa73[0x14]]=OxOaa73[0x20] ;return ;} else { height=parseInt(width*original_height/original_width) ; inp_height[OxOaa73[0x14]]=height ;} ;} ;if(Ox198==OxOaa73[0x16]){if(height[OxOaa73[0x2d]]==0x0||isNaN(height)){ inp_width[OxOaa73[0x14]]=OxOaa73[0x20] ; inp_height[OxOaa73[0x14]]=OxOaa73[0x20] ;return ;} else { width=parseInt(height*original_width/original_height) ; inp_width[OxOaa73[0x14]]=width ;} ;} ;} ;} ; do_preview() ;} finally{ checkingConstrains=false ;} ;}  ; function GetAttribute(Ox2f5,Ox492){if(Ox2f5){var attr=Ox2f5.getAttributeNode(Ox492);if(attr&&attr[OxOaa73[0x33]]){return Ox2f5[attr[OxOaa73[0x34]]];} ;return OxOaa73[0x20];} else {return OxOaa73[0x20];} ;}  ; function SelectColor(Ox5cc,Ox19b){var Ox354= new ColorPicker(Ox19b,Ox5cc); Ox354.showPopup() ;}  ;

	</script>
	</body>
</HTML>
