<%@ Page Language="C#" Inherits="CuteEditor.Dialogs.FileBrowserPage" %>
<%
	string QUERY_STRING=Request.ServerVariables["QUERY_STRING"];
%>
<HTML>
	<HEAD>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)">
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)">
		<META Http-Equiv="Cache-Control" Content="no-cache">
		<META Http-Equiv="Pragma" Content="no-cache">
		<META HTTP-EQUIV="EXPIRES" CONTENT="0">
		<link rel="stylesheet" href='style.css'>
		<script src=dialog.js></script><script src=../_shared.js></script>
		<script src="filebrowserpage.js"></script>
		<script src="sorttable.js"></script>
		<script language="JavaScript">
		var OxOd3d1=["disabled","srcElement","[[Disabled]]","[[SpecifyNewFolderName]]","","value","hiddenActionData","[[CopyMoveto]]","/","[[AreyouSureDelete]]","parentNode","isdir","text","hiddenAction","rename","path","True","False",":","cancelBubble","backgroundColor","style","#eeeeee","tagName","INPUT","changedir","hiddenFile","url","TargetUrl"]; function CreateDir_click(){if(event[OxOd3d1[0x1]][OxOd3d1[0x0]]){ alert(OxOd3d1[0x2]) ;return false;} ;var Ox2f4=prompt(OxOd3d1[0x3],OxOd3d1[0x4]);if(Ox2f4){ document.getElementById(OxOd3d1[0x6])[OxOd3d1[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Move_click(){if(event[OxOd3d1[0x1]][OxOd3d1[0x0]]){ alert(OxOd3d1[0x2]) ;return false;} ;var Ox2f4=prompt(OxOd3d1[0x7],OxOd3d1[0x8]);if(Ox2f4){ document.getElementById(OxOd3d1[0x6])[OxOd3d1[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Copy_click(){if(event[OxOd3d1[0x1]][OxOd3d1[0x0]]){ alert(OxOd3d1[0x2]) ;return false;} ;var Ox2f4=prompt(OxOd3d1[0x7],OxOd3d1[0x8]);if(Ox2f4){ document.getElementById(OxOd3d1[0x6])[OxOd3d1[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Delete_click(){if(event[OxOd3d1[0x1]][OxOd3d1[0x0]]){ alert(OxOd3d1[0x2]) ;return false;} ;return confirm(OxOd3d1[0x9]);}  ; function EditImg_click(Oxba){if(Oxba[OxOd3d1[0x0]]){ alert(OxOd3d1[0x2]) ;return false;} ; row=Oxba[OxOd3d1[0xa]][OxOd3d1[0xa]] ;var name;if(row[OxOd3d1[0xb]]){ name=prompt(OxOd3d1[0x3],row.text) ;} else { name=prompt(OxOd3d1[0x3],row.text) ;} ;if(name&&(name!=row[OxOd3d1[0xc]])){ document.getElementById(OxOd3d1[0xd])[OxOd3d1[0x5]]=OxOd3d1[0xe] ; document.getElementById(OxOd3d1[0x6])[OxOd3d1[0x5]]=(row[OxOd3d1[0xb]]?OxOd3d1[0x10]:OxOd3d1[0x11])+OxOd3d1[0x12]+row[OxOd3d1[0xf]]+OxOd3d1[0x12]+name ; postback() ;} ; event[OxOd3d1[0x13]]=true ;}  ; function row_over(Oxc4){ Oxc4[OxOd3d1[0x15]][OxOd3d1[0x14]]=OxOd3d1[0x16] ;}  ; function row_out(Oxc4){ Oxc4[OxOd3d1[0x15]][OxOd3d1[0x14]]=OxOd3d1[0x4] ;}  ; function row_click(Oxc4){if(Oxc4[OxOd3d1[0xb]]){if(event[OxOd3d1[0x1]][OxOd3d1[0x17]]==OxOd3d1[0x18]){return ;} ; document.getElementById(OxOd3d1[0xd])[OxOd3d1[0x5]]=OxOd3d1[0x19] ; document.getElementById(OxOd3d1[0x6])[OxOd3d1[0x5]]=Oxc4.getAttribute(OxOd3d1[0xf]) ; postback() ;} else { document.getElementById(OxOd3d1[0x1a])[OxOd3d1[0x5]]=Oxc4.getAttribute(OxOd3d1[0xf]) ; document.getElementById(OxOd3d1[0x1c])[OxOd3d1[0x5]]=Oxc4.getAttribute(OxOd3d1[0x1b]) ; Actualsize() ;} ;}  ; function postback(){ <%=Page.GetPostBackEventReference(hiddenAction,"")%> ;}  ;
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
	<body bottomMargin="0" topMargin="10" marginwidth="0" marginheight="0">
		<form runat="server" enctype="multipart/form-data" id="Form1">
			<!-- start hidden -->
			<script>
        var OxOd8a8=["onload","value","hiddenAlert","","hiddenAction","hiddenActionData"]; window[OxOd8a8[0x0]]=reset_hiddens ; function reset_hiddens(){if(document.getElementById(OxOd8a8[0x2])[OxOd8a8[0x1]]){ alert(document.getElementById(OxOd8a8[0x2]).value) ;} ; document.getElementById(OxOd8a8[0x2])[OxOd8a8[0x1]]=OxOd8a8[0x3] ; document.getElementById(OxOd8a8[0x4])[OxOd8a8[0x1]]=OxOd8a8[0x3] ; document.getElementById(OxOd8a8[0x5])[OxOd8a8[0x1]]=OxOd8a8[0x3] ;}  ;
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
							onmouseover="CuteEditor_ColorPicker_ButtonOver(this);"> <IMG src="../images/bestfit.gif" onclick="BestFit();" Alt="[[BestFit]]" class="dialogButton"
							onmouseover="CuteEditor_ColorPicker_ButtonOver(this);"> <IMG src="../images/Actualsize.gif" onclick="Actualsize();" Alt="[[ActualSize]]" class="dialogButton"
							onmouseover="CuteEditor_ColorPicker_ButtonOver(this);"> 
							<% if(secset.AllowModify) {%>
							<IMG  class="dialogButton" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" src="../images/imageeditor.gif" onclick="ImageEditor();" Alt="[[ImageEditor]]">
							<%
							}
							else
							{
							%>
								<IMG  class="CuteEditorButtonDisabled" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" src="../images/imageeditor.gif" Alt="[[ImageEditor]]">
							<%
							}
							%>
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
				<tr>
					<td valign="top" nowrap width="270">
						<div style="BORDER: 1.5pt inset;  VERTICAL-ALIGN: middle; OVERFLOW: auto; WIDTH: 270; HEIGHT: 250px; Padding: 0 0 0 0; BACKGROUND-COLOR: white">
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
									<asp:TableHeaderCell ID="name_Cell" Wrap=True Width="146px" CssClass="filelistHeadCol">[[Name]]</asp:TableHeaderCell>
									<asp:TableHeaderCell ID="size_Cell" Width="62px" CssClass="filelistHeadCol">[[Count]]/[[Size]]</asp:TableHeaderCell>
									<asp:TableHeaderCell ID="op_Cell"  Width="16px">&nbsp;</asp:TableHeaderCell>
								</asp:TableRow>
							</asp:Table>
						</div>
					</td>
					<td width="10">&nbsp;
					</td>
					<td valign="top">
						<div style="border:1.5pt inset; Padding: 0 0 0 0; vertical-align: top; overflow: auto; WIDTH: 340px; HEIGHT: 250px; BACKGROUND-COLOR: white;">
							<div id="divpreview" style="BACKGROUND-COLOR: white" height="100%" width="340px">
								<img id="img_demo" src="../images/1x1.gif">
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="3" height=5>
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">			
				<tr>
					<td valign="top">
						<fieldset>
							<legend>
								[[Layout]]</legend>
							<table border="0" cellpadding="4" cellspacing="0" width="220">
								<tr>
									<td>
										<table border="0" cellpadding="1" cellspacing="0" class="normal">
											<tr>
												<td width="100">[[Alignment]]:</td>
												<td>
													<select NAME="ImgAlign" style="WIDTH : 80px" ID="Align" onchange="do_preview()" onpropertychange="do_preview()">
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
													<INPUT TYPE="text" SIZE="2" NAME="Border" onchange="do_preview()" onpropertychange="do_preview()"
														onkeyup="event.returnValue=IsDigit();" style="WIDTH : 80px" ID="Border">
												</td>
											</tr>
											<tr>
												<td nowrap>[[Bordercolor]]:</td>
												<td>
													<input type="text" id="bordercolor" name="bordercolor" size="7" style="WIDTH:57px">
													<img src="../images/colorpicker.gif" id="bordercolor_Preview" align="absMiddle" style='BEHAVIOR:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'
														oncolorchange="bordercolor.value=this.selectedColor; bordercolor.style.backgroundColor=this.selectedColor">
												</td>
											</tr>
											<tr>
												<td colspan="2">
													<table border="0" cellpadding="0" cellspacing="0" class="normal">
														<tr>
															<td width="100" nowrap>[[Width]]:</td>
															<td>
																<INPUT TYPE="text" SIZE="2" id="inp_width" onkeyup="checkConstrains('width');" ONKEYPRESS="event.returnValue=IsDigit();" style="WIDTH : 80px">
															</td>
															<td rowspan="2" align="right" valign="middle"><img src="../images/locked.gif" id="imgLock" width="25" height="32" alt="Constrained Proportions" /></td>
														</tr>
														<tr>
															<td nowrap>[[Height]]:</td>
															<td>
																<INPUT TYPE="text" SIZE="2" id="inp_height" onkeyup="checkConstrains('height');" ONKEYPRESS="event.returnValue=IsDigit();" style="WIDTH : 80px">
															</td>
														</tr>
														<tr>
															<td colspan="2">
																<input type="checkbox" id="constrain_prop" checked onclick="javascript:toggleConstrains();" />
																Constrain Proportions</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
						<fieldset>
						<legend>[[Spacing]]</legend>
							<table border="0" cellpadding="4" cellspacing="0">
								<tr>
									<td>
										<table border="0" cellpadding="1" cellspacing="0" class="normal">
											<tr>
												<td valign="middle" width="100">[[Horizontal]]:</td>
												<td><INPUT TYPE="text" SIZE="2" NAME="HSpace" value="5" onchange="do_preview()" onpropertychange="do_preview()"
														ONKEYPRESS="event.returnValue=IsDigit();" style="WIDTH:80px" ID="HSpace">
												</td>
											</tr>
											<tr>
												<td valign="middle">[[Vertical]]:</td>
												<td><INPUT TYPE="text" SIZE="2" NAME="VSpace" onchange="do_preview()" onpropertychange="do_preview()"
														ONKEYPRESS="event.returnValue=IsDigit();" style="WIDTH:80px" ID="VSpace"></td>
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
						<fieldset>
							<legend>
								[[Insert]]</legend>
							<table border="0" cellpadding="4" cellspacing="0">
								<tr>
									<td>
										<table border="0" cellpadding="1" cellspacing="0" class="normal">
											<tr>
												<td valign="middle">
													URL:</td>
												<td>
													<input type="text" id="TargetUrl" onpropertychange="do_preview()" size="40" name="TargetUrl"
														runat="server"></td>
											</tr>
											<tr>
												<td valign="middle">[[Alternate]]:</td>
												<td valign="middle"><input type="text" id="AlternateText" size="40" NAME="AlternateText"></td>
											</tr>
											<tr>
												<td valign="middle" nowrap>[[longDesc]]:</td>
												<td valign="middle"><input type="text" id="longDesc" size="40" NAME="longDesc"><img src="../images/Accessibility.gif" align="absMiddle" hspace="5"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
						<fieldset align="center" id="fieldsetUpload">
							<legend>
								[[Upload]] (Max file size allowed
								<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageSize * 1024)%>
								)</legend>
							<table border="0" cellspacing="2" cellpadding="0" width="100%" class="normal" align="center">
								<tr>
									<td valign="top" style="FONT-SIZE: 8pt; VERTICAL-ALIGN: middle; FONT-FAMILY: MS Sans Serif">
										<asp:Label ID="Label_PictureUpload" Runat="server"></asp:Label>
										<input id="InputFile" size="45" type="file" runat="server" style="HEIGHT:20px" NAME="InputFile">&nbsp; <br>
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
											<nobr>
											Max Upload folder size is : <%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageFolderSize * 1024)%>.
											Used: <%= CuteEditor.Impl.FileStorage.FormatSize(fs.GetDirectorySize(fs.VirtualRoot)) %>
											<span style="background-color:green;height:3px;width:40px;font-size:3px">
												<span style="background-color:red;height:3px;width:<%= GetUsedSpaceBarWidth() %>px;font-size:3px"></span>
											</span>
											</nobr>
										</li>
									</td>
								</tr>
							</table>
						</fieldset>
						<div align="center" style="padding-top:4px;">
							<input class="inputbuttoninsert" type="button" value="[[Insert]]" onclick="do_insert()"
								id="Button1">&nbsp;&nbsp;&nbsp; <input class="inputbuttoncancel" type="button" value="[[Cancel]]" onclick="do_cancel()"
								id="Button2">
						</div>
					</td>
				</tr>
			</table>
		</form>
		<script runat="server">
			protected override void InitOfType()
			{
				this.Context.Response.Cache.SetCacheability(HttpCacheability.NoCache);	
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
		
			var OxOa691=["dialogArguments","img","editor","inp_width","inp_height","VSpace","HSpace","Border","bordercolor","bordercolor_Preview","Align","AlternateText","longDesc","TargetUrl","frameloaded","src","","UseRelativeLinks","value","width","height","vspace","hspace","border","borderColor","style","backgroundColor","align","alt","specified","nodeName","file","../images/1x1.gif","?","\x26","\x3Cimg id=preview_image onmousewheel=\x22return Picture(this);\x22","border-color=","/\x3E","innerHTML","wheelDelta","zoom","0%","BaseHref","$1","[[ValidColor]]","[[SelectImagetoInsert]]"," ","=\x22","\x22","keyCode","IMG","length","imgLock","constrain_prop","checked","../images/locked.gif","preview_image","DIV","cssText","position:absolute","body","offsetWidth","offsetHeight","[[SelectImagetoEdit]]","[[_CuteEditorResource_]]","\x26p=","dialogWidth:676px;dialogHeight:500px;help:no;scroll:no;status:no;resizable:0;"];var obj=top[OxOa691[0x0]];var oControl=obj[OxOa691[0x1]];var editor=obj[OxOa691[0x2]];var inp_width=document.getElementById(OxOa691[0x3]);var inp_height=document.getElementById(OxOa691[0x4]);var VSpace=document.getElementById(OxOa691[0x5]);var HSpace=document.getElementById(OxOa691[0x6]);var Border=document.getElementById(OxOa691[0x7]);var bordercolor=document.getElementById(OxOa691[0x8]);var bordercolor_Preview=document.getElementById(OxOa691[0x9]);var Align=document.getElementById(OxOa691[0xa]);var AlternateText=document.getElementById(OxOa691[0xb]);var longDesc=document.getElementById(OxOa691[0xc]);var TargetUrl=document.getElementById(OxOa691[0xd]);if(!top[OxOa691[0xe]]){ top[OxOa691[0xe]]=true ;try{var src=oControl[OxOa691[0xf]]||OxOa691[0x10];if(obj[OxOa691[0x11]]){ src=RemoveServerNamesFromUrl(src) ;} ; TargetUrl[OxOa691[0x12]]=src ; inp_width[OxOa691[0x12]]=oControl[OxOa691[0x13]]||OxOa691[0x10] ; inp_height[OxOa691[0x12]]=oControl[OxOa691[0x14]]||OxOa691[0x10] ; VSpace[OxOa691[0x12]]=oControl[OxOa691[0x15]]||OxOa691[0x10] ; HSpace[OxOa691[0x12]]=oControl[OxOa691[0x16]]||OxOa691[0x10] ; Border[OxOa691[0x12]]=oControl[OxOa691[0x17]]||OxOa691[0x10] ; bordercolor[OxOa691[0x12]]=oControl[OxOa691[0x19]][OxOa691[0x18]]||GetAttribute(OxOa691[0x8])||OxOa691[0x10] ; bordercolor[OxOa691[0x19]][OxOa691[0x1a]]=bordercolor[OxOa691[0x12]]||OxOa691[0x10] ; Align[OxOa691[0x12]]=oControl[OxOa691[0x1b]]||OxOa691[0x10] ; AlternateText[OxOa691[0x12]]=oControl[OxOa691[0x1c]]||OxOa691[0x10] ; longDesc[OxOa691[0x12]]=oControl[OxOa691[0xc]]||OxOa691[0x10] ;} catch(e){} ;} ; function GetAttribute(Ox492){var attr=oControl.getAttributeNode(Ox492);if(attr&&attr[OxOa691[0x1d]]){return oControl[attr[OxOa691[0x1e]]];} ;return OxOa691[0x10];}  ;var sCheckFlag=OxOa691[0x1f]; do_preview() ; function do_preview(){var Ox501=TargetUrl[OxOa691[0x12]];var Ox572= new Date();var Ox573=Ox572.getTime();if(Ox501==OxOa691[0x10]){ Ox501=OxOa691[0x20] ;} ;if(Ox501.indexOf(OxOa691[0x21])!=-0x1){ Ox501=Ox501+OxOa691[0x22]+Ox573 ;} else { Ox501=Ox501+OxOa691[0x21]+Ox573 ;} ;var Ox180=OxOa691[0x23]+attr(OxOa691[0xf],Ox501)+attr(OxOa691[0x1c],AlternateText.value)+attr(OxOa691[0x1b],Align.value)+((inp_width[OxOa691[0x12]])?attr(OxOa691[0x13],inp_width.value):OxOa691[0x10])+((inp_height[OxOa691[0x12]])?attr(OxOa691[0x14],inp_height.value):OxOa691[0x10])+((VSpace[OxOa691[0x12]])?attr(OxOa691[0x15],VSpace.value):OxOa691[0x10])+((HSpace[OxOa691[0x12]])?attr(OxOa691[0x16],HSpace.value):OxOa691[0x10])+((Border[OxOa691[0x12]])?attr(OxOa691[0x17],Border.value):attr(OxOa691[0x17],0x0))+(((bordercolor[OxOa691[0x12]])&&(Border[OxOa691[0x12]]>0x0))?attr(OxOa691[0x19],OxOa691[0x24]+bordercolor.value):OxOa691[0x10])+OxOa691[0x25]; divpreview[OxOa691[0x26]]=Ox180 ;}  ;var count=0xa; function Picture(Ox55c){if(event[OxOa691[0x27]]>=0x78){ count++ ;} else {if(event[OxOa691[0x27]]<=-0x78){ count-- ;} ;} ; Ox55c[OxOa691[0x19]][OxOa691[0x28]]=count+OxOa691[0x29] ;return false;}  ; function RemoveServerNamesFromUrl(Ox3e6){var Ox3e8=obj[OxOa691[0x2a]]; Ox3e8=Ox3e8.replace(/^(https?:\/\/[^\/]+)(.*)$/,OxOa691[0x2b]) ; serverre= new RegExp(Ox3e8) ;return Ox3e6.replace(serverre,OxOa691[0x10]);}  ; function do_insert(){var Oxba=oControl; Oxba[OxOa691[0xf]]=TargetUrl[OxOa691[0x12]] ; Oxba[OxOa691[0x13]]=inp_width[OxOa691[0x12]] ; Oxba[OxOa691[0x14]]=inp_height[OxOa691[0x12]] ; Oxba[OxOa691[0x15]]=VSpace[OxOa691[0x12]] ; Oxba[OxOa691[0x16]]=HSpace[OxOa691[0x12]] ; Oxba[OxOa691[0x17]]=Border[OxOa691[0x12]] ;try{ Oxba[OxOa691[0x19]][OxOa691[0x18]]=bordercolor[OxOa691[0x12]] ;} catch(er){ alert(OxOa691[0x2c]) ;return false;} ; Oxba[OxOa691[0x1b]]=Align[OxOa691[0x12]] ; Oxba[OxOa691[0x1c]]=AlternateText[OxOa691[0x12]] ; Oxba[OxOa691[0xc]]=longDesc[OxOa691[0x12]] ;if(TargetUrl[OxOa691[0x12]]==OxOa691[0x10]){ alert(OxOa691[0x2d]) ;return false;} ;if(Oxba[OxOa691[0x13]]==0x0){ Oxba.removeAttribute(OxOa691[0x13]) ;} ;if(Oxba[OxOa691[0x14]]==0x0){ Oxba.removeAttribute(OxOa691[0x14]) ;} ;if(Oxba[OxOa691[0xc]]==OxOa691[0x10]){ Oxba.removeAttribute(OxOa691[0xc]) ;} ;if(Oxba[OxOa691[0x16]]==OxOa691[0x10]){ Oxba.removeAttribute(OxOa691[0x16]) ;} ;if(Oxba[OxOa691[0x15]]==OxOa691[0x10]){ Oxba.removeAttribute(OxOa691[0x15]) ;} ; editor.InsertElement(Oxba,obj.img) ; top.close() ;}  ; function attr(name,Ox224){if(!Ox224||Ox224==OxOa691[0x10]){return OxOa691[0x10];} ;return OxOa691[0x2e]+name+OxOa691[0x2f]+Ox224+OxOa691[0x30];}  ; function do_cancel(){ top.close() ;}  ; function IsDigit(){return ((event[OxOa691[0x31]]>=0x30)&&(event[OxOa691[0x31]]<=0x39));}  ; function Zoom_In(){if(divpreview[OxOa691[0x19]][OxOa691[0x28]]!=0x0){ divpreview[OxOa691[0x19]][OxOa691[0x28]]*=1.2 ;} else { divpreview[OxOa691[0x19]][OxOa691[0x28]]=1.2 ;} ;}  ; function Zoom_Out(){if(divpreview[OxOa691[0x19]][OxOa691[0x28]]!=0x0){ divpreview[OxOa691[0x19]][OxOa691[0x28]]*=0.8 ;} else { divpreview[OxOa691[0x19]][OxOa691[0x28]]=0.8 ;} ;}  ; function BestFit(){var Oxba=GetPreviewedImage();if(!Oxba){return ;} ;var Ox2d8=0x118;var Ox82=0x122; divpreview[OxOa691[0x19]][OxOa691[0x28]]=0x1/Math.max(Oxba[OxOa691[0x13]]/Ox82,Oxba[OxOa691[0x14]]/Ox2d8) ;}  ; function Actualsize(){try{var Oxba= new Image(); Oxba[OxOa691[0xf]]=document.getElementById(OxOa691[0xd])[OxOa691[0x12]] ;if(Oxba[OxOa691[0x13]]){ inp_width[OxOa691[0x12]]=Oxba[OxOa691[0x13]] ;} ;if(Oxba[OxOa691[0x14]]){ inp_height[OxOa691[0x12]]=Oxba[OxOa691[0x14]] ;} ;} catch(er){} ; divpreview[OxOa691[0x19]][OxOa691[0x28]]=0x1 ; do_preview() ;}  ; function GetPreviewedImage(){var Ox308=divpreview.getElementsByTagName(OxOa691[0x32]);if(Ox308&&(Ox308[OxOa691[0x33]]>0x0)){return Ox308.item(0x0);} else {return null;} ;}  ; function toggleConstrains(){var Ox504=document.getElementById(OxOa691[0x34]);var Ox505=document.getElementById(OxOa691[0x35]);if(Ox505[OxOa691[0x36]]){ Ox504[OxOa691[0xf]]=OxOa691[0x37] ; checkConstrains(OxOa691[0x13]) ;} else { Ox504[OxOa691[0xf]]=OxOa691[0x20] ;} ;}  ;var checkingConstrains=false; function checkConstrains(Ox198){if(checkingConstrains){return ;} ; checkingConstrains=true ;try{var Ox505=document.getElementById(OxOa691[0x35]);if(Ox505[OxOa691[0x36]]){var Ox508=document.getElementById(OxOa691[0x38]);if(Ox508){var div=document.createElement(OxOa691[0x39]); div[OxOa691[0x19]][OxOa691[0x3a]]=OxOa691[0x3b] ; document[OxOa691[0x3c]].appendChild(div) ; div.appendChild(Ox508) ; Ox508.removeAttribute(OxOa691[0x13]) ; Ox508.removeAttribute(OxOa691[0x14]) ; Ox508[OxOa691[0x19]][OxOa691[0x13]]=OxOa691[0x10] ; Ox508[OxOa691[0x19]][OxOa691[0x14]]=OxOa691[0x10] ; original_width=Ox508[OxOa691[0x3d]] ; original_height=Ox508[OxOa691[0x3e]] ; div.removeNode(true) ;} else {var Ox509= new Image(); Ox509[OxOa691[0xf]]=document.getElementById(OxOa691[0xd])[OxOa691[0x12]] ; original_width=Ox509[OxOa691[0x13]] ; original_height=Ox509[OxOa691[0x14]] ;} ;if((original_width>0x0)&&(original_height>0x0)){ width=inp_width[OxOa691[0x12]] ; height=inp_height[OxOa691[0x12]] ;if(Ox198==OxOa691[0x13]){if(width[OxOa691[0x33]]==0x0||isNaN(width)){ inp_width[OxOa691[0x12]]=OxOa691[0x10] ; inp_height[OxOa691[0x12]]=OxOa691[0x10] ;} else { height=parseInt(width*original_height/original_width) ; inp_height[OxOa691[0x12]]=height ;} ;} ;if(Ox198==OxOa691[0x14]){if(height[OxOa691[0x33]]==0x0||isNaN(height)){ inp_width[OxOa691[0x12]]=OxOa691[0x10] ; inp_height[OxOa691[0x12]]=OxOa691[0x10] ;} else { width=parseInt(height*original_width/original_height) ; inp_width[OxOa691[0x12]]=width ;} ;} ;} ;} ; do_preview() ;} finally{ checkingConstrains=false ;} ;}  ; function ImageEditor(){if(document.getElementById(OxOa691[0xd])[OxOa691[0x12]]==OxOa691[0x10]){ alert(OxOa691[0x3f]) ;return false;} ;var Oxba= new Image(); Oxba[OxOa691[0xf]]=document.getElementById(OxOa691[0xd])[OxOa691[0x12]] ;var src=document.getElementById(OxOa691[0xd])[OxOa691[0x12]];var Ox2f=OxOa691[0x40];var arr=showModalDialog('../ImageEditor/ImageEditor.aspx?<%= QUERY_STRING %>&f='+src+OxOa691[0x41]+Ox2f+OxOa691[0x10],Oxba,OxOa691[0x42]); document.getElementById(OxOa691[0xd])[OxOa691[0x12]]=src ; do_preview() ;}  ;			
		</script>
	</body>
</HTML>
