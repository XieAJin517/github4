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
		var OxO3dfb=["disabled","target","[[Disabled]]","[[SpecifyNewFolderName]]","","value","hiddenActionData","[[CopyMoveto]]","/","[[AreyouSureDelete]]","parentNode","isdir","text","hiddenAction","rename","path","True","False",":","cancelBubble","backgroundColor","style","#eeeeee","tagName","INPUT","changedir","hiddenFile","url","TargetUrl","../colorpicker.aspx","returnValue","s_bordercolor"]; function CreateDir_click(){if(event[OxO3dfb[0x1]][OxO3dfb[0x0]]){ alert(OxO3dfb[0x2]) ;return false;} ;var Ox2f4=window.prompt(OxO3dfb[0x3],OxO3dfb[0x4]);if(Ox2f4){ document.getElementById(OxO3dfb[0x6])[OxO3dfb[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Move_click(){if(event[OxO3dfb[0x1]][OxO3dfb[0x0]]){ alert(OxO3dfb[0x2]) ;return false;} ;var Ox2f4=window.prompt(OxO3dfb[0x7],OxO3dfb[0x8]);if(Ox2f4){ document.getElementById(OxO3dfb[0x6])[OxO3dfb[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Copy_click(){if(event[OxO3dfb[0x1]][OxO3dfb[0x0]]){ alert(OxO3dfb[0x2]) ;return false;} ;var Ox2f4=window.prompt(OxO3dfb[0x7],OxO3dfb[0x8]);if(Ox2f4){ document.getElementById(OxO3dfb[0x6])[OxO3dfb[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Delete_click(){if(event[OxO3dfb[0x1]][OxO3dfb[0x0]]){ alert(OxO3dfb[0x2]) ;return false;} ;return confirm(OxO3dfb[0x9]);}  ; function EditImg_click(Oxba){if(Oxba[OxO3dfb[0x0]]){ alert(OxO3dfb[0x2]) ;return false;} ; row=Oxba[OxO3dfb[0xa]][OxO3dfb[0xa]] ;var name;if(row[OxO3dfb[0xb]]){ name=window.prompt(OxO3dfb[0x3],row.text) ;} else { name=window.prompt(OxO3dfb[0x3],row.text) ;} ;if(name&&name!=row[OxO3dfb[0xc]]){ document.getElementById(OxO3dfb[0xd])[OxO3dfb[0x5]]=OxO3dfb[0xe] ; document.getElementById(OxO3dfb[0x6])[OxO3dfb[0x5]]=(row[OxO3dfb[0xb]]?OxO3dfb[0x10]:OxO3dfb[0x11])+OxO3dfb[0x12]+row[OxO3dfb[0xf]]+OxO3dfb[0x12]+name ; postback() ;} ; event[OxO3dfb[0x13]]=true ;}  ; function row_over(Oxc4){ Oxc4[OxO3dfb[0x15]][OxO3dfb[0x14]]=OxO3dfb[0x16] ;}  ; function row_out(Oxc4){ Oxc4[OxO3dfb[0x15]][OxO3dfb[0x14]]=OxO3dfb[0x4] ;}  ; function row_click(Oxc4){if(Oxc4[OxO3dfb[0xb]]){if(event[OxO3dfb[0x1]][OxO3dfb[0x17]]==OxO3dfb[0x18]){return ;} ; document.getElementById(OxO3dfb[0xd])[OxO3dfb[0x5]]=OxO3dfb[0x19] ; document.getElementById(OxO3dfb[0x6])[OxO3dfb[0x5]]=Oxc4.getAttribute(OxO3dfb[0xf]) ; postback() ;} else { document.getElementById(OxO3dfb[0x1a])[OxO3dfb[0x5]]=Oxc4.getAttribute(OxO3dfb[0xf]) ; document.getElementById(OxO3dfb[0x1c])[OxO3dfb[0x5]]=Oxc4.getAttribute(OxO3dfb[0x1b]) ; Actualsize() ;} ;}  ; function postback(){ <%=Page.GetPostBackEventReference(hiddenAction,"")%> ;}  ; function SelectColor(){var Ox4e0=OxO3dfb[0x1d]; openModalWindow(Ox4e0,null,_colorpickerDialogFeature,function (Ox2d9,Ox18e){if(Ox18e[OxO3dfb[0x1e]]){ bordercolor[OxO3dfb[0x5]]=Ox18e[OxO3dfb[0x1e]].toUpperCase() ; document.getElementById(OxO3dfb[0x1f])[OxO3dfb[0x15]][OxO3dfb[0x14]]=Ox18e[OxO3dfb[0x1e]] ;} ;} ) ;}  ;
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
        var OxO6920=["onload","value","hiddenAlert","","hiddenAction","hiddenActionData"]; window[OxO6920[0x0]]=reset_hiddens ; function reset_hiddens(){if(document.getElementById(OxO6920[0x2])[OxO6920[0x1]]){ alert(document.getElementById(OxO6920[0x2]).value) ;} ; document.getElementById(OxO6920[0x2])[OxO6920[0x1]]=OxO6920[0x3] ; document.getElementById(OxO6920[0x4])[OxO6920[0x1]]=OxO6920[0x3] ; document.getElementById(OxO6920[0x5])[OxO6920[0x1]]=OxO6920[0x3] ;}  ;
			</script>
			<input type="hidden" runat="server" id="hiddenDirectory"> <input type="hidden" runat="server" id="hiddenFile">
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAlert"> <input type="hidden" runat="server" enableviewstate="false" id="hiddenAction" onserverchange="hiddenAction_ServerChange">
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenActionData">
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
						<div style="BORDER: 1.5pt inset;  VERTICAL-ALIGN: middle; OVERFLOW: auto; WIDTH: 100%; HEIGHT: 270px; Padding: 0 0 0 0; BACKGROUND-COLOR: white">
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
									<asp:TableHeaderCell ID="name_Cell" Width="136px" CssClass="filelistHeadCol">[[Name]]</asp:TableHeaderCell>
									<asp:TableHeaderCell ID="size_Cell" Width="72px" CssClass="filelistHeadCol">[[Count]]/[[Size]]</asp:TableHeaderCell>
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
						<div style="Height:260px; WIDTH: 330px; BORDER: 1.0pt inset; PADDING: 5px;VERTICAL-ALIGN: top; OVERFLOW: auto;BACKGROUND-COLOR: white; TEXT-ALIGN: center">
							<div id="divpreview" style="BACKGROUND-COLOR: white" style="width:100%">
								<img id="img_demo" src="../images/1x1.gif">
							</div>
						</div>
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="2" cellpadding="0" width="98%" align="center">
				<tr>
					<td valign="top">
						<fieldset>
							<legend>
								[[Layout]]</legend>
							<table border="0" cellpadding="5" cellspacing="0"  width="220">
								<tr>
									<td>
										<table border="0" cellpadding="2" cellspacing="0" class="normal">
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
													<img id="s_bordercolor" src="../images/colorpicker.gif" onclick="SelectColor();" align="absMiddle">
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
					<td valign="top">
						<fieldset>
							<legend>
								[[Insert]]</legend>
							<table border="0" cellpadding="4" cellspacing="0">
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
												<td valign="middle"><input type="text" id="longDesc" size="40" name="longDesc"><img src="../images/Accessibility.gif" align="absMiddle" hspace="5"></td>
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
										<input id="InputFile" size="45" type="file" runat="server" style="HEIGHT:20px" name="InputFile">&nbsp; <br>
										<asp:Button ID="uploadButton" Text="[[Upload]]" Runat="server" OnClick="uploadButton_Click" />&nbsp;
									</td>
								</tr>
								<tr>
									<td height="5">
									</td>
								</tr>
								<tr>
									<td width=100%>
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
															Used: <%= CuteEditor.Impl.FileStorage.FormatSize(fs.GetDirectorySize(fs.VirtualRoot)) %>
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
			var OxO4615=["dialogArguments","img","editor","inp_width","inp_height","VSpace","HSpace","Border","bordercolor","bordercolor_Preview","AlternateText","longDesc","Align","TargetUrl","frameloaded","src","value","width","height","vspace","hspace","border","borderColor","style","backgroundColor","align","alt","file","","../images/1x1.gif","\x3Cimg id=preview_image onmousewheel=\x22return Picture(this);\x22","border-color=","/\x3E","innerHTML","Please enter a correct color value.","Please choose an image to insert","longdesc"," ","=\x22","\x22","IMG","length","imgLock","constrain_prop","checked","../images/locked.gif","preview_image","specified","nodeName"];var obj=top[OxO4615[0x0]];var oControl;var editor;if(obj){ oControl=obj[OxO4615[0x1]] ; editor=obj[OxO4615[0x2]] ;} ;var inp_width=document.getElementById(OxO4615[0x3]);var inp_height=document.getElementById(OxO4615[0x4]);var VSpace=document.getElementById(OxO4615[0x5]);var HSpace=document.getElementById(OxO4615[0x6]);var Border=document.getElementById(OxO4615[0x7]);var bordercolor=document.getElementById(OxO4615[0x8]);var bordercolor_Preview=document.getElementById(OxO4615[0x9]);var AlternateText=document.getElementById(OxO4615[0xa]);var longDesc=document.getElementById(OxO4615[0xb]);var Align=document.getElementById(OxO4615[0xc]);var Border=document.getElementById(OxO4615[0x7]);var TargetUrl=document.getElementById(OxO4615[0xd]);if(!top[OxO4615[0xe]]){ top[OxO4615[0xe]]=true ;if(oControl){if(oControl[OxO4615[0xf]]){ TargetUrl[OxO4615[0x10]]=oControl.getAttribute(OxO4615[0xf]) ;} ;if(oControl[OxO4615[0x11]]>0x0){ inp_width[OxO4615[0x10]]=oControl[OxO4615[0x11]] ;} ;if(oControl[OxO4615[0x12]]>0x0){ inp_height[OxO4615[0x10]]=oControl[OxO4615[0x12]] ;} ;if(oControl[OxO4615[0x13]]&&oControl[OxO4615[0x13]]>=0x0){ VSpace[OxO4615[0x10]]=oControl[OxO4615[0x13]] ;} ;if(oControl[OxO4615[0x14]]&&oControl[OxO4615[0x14]]>=0x0){ HSpace[OxO4615[0x10]]=oControl[OxO4615[0x14]] ;} ;if(oControl[OxO4615[0x15]]){ Border[OxO4615[0x10]]=oControl[OxO4615[0x15]] ;} ;if(oControl[OxO4615[0x17]][OxO4615[0x16]]||GetAttribute(oControl,OxO4615[0x8])){ bordercolor[OxO4615[0x10]]=oControl[OxO4615[0x17]][OxO4615[0x16]]||GetAttribute(oControl,OxO4615[0x8]) ;} ;if(bordercolor[OxO4615[0x10]]){ bordercolor[OxO4615[0x17]][OxO4615[0x18]]=bordercolor[OxO4615[0x10]] ;} ;if(oControl[OxO4615[0x19]]){ Align[OxO4615[0x10]]=oControl[OxO4615[0x19]] ;} ;if(oControl[OxO4615[0x1a]]){ AlternateText[OxO4615[0x10]]=oControl[OxO4615[0x1a]] ;} ;} ;} ; function Actualsize(){try{var Oxba= new Image(); Oxba[OxO4615[0xf]]=TargetUrl[OxO4615[0x10]] ;if(Oxba[OxO4615[0x11]]){ inp_width[OxO4615[0x10]]=Oxba[OxO4615[0x11]] ;} ;if(Oxba[OxO4615[0x12]]){ inp_height[OxO4615[0x10]]=Oxba[OxO4615[0x12]] ;} ;} catch(er){} ; do_preview() ;}  ;var sCheckFlag=OxO4615[0x1b]; do_preview() ; function do_preview(){var Ox501=TargetUrl[OxO4615[0x10]];if(Ox501==OxO4615[0x1c]){ Ox501=OxO4615[0x1d] ;} ;var Ox180=OxO4615[0x1e]+attr(OxO4615[0xf],Ox501)+attr(OxO4615[0x1a],AlternateText.value)+attr(OxO4615[0x19],Align.value)+((inp_width[OxO4615[0x10]])?attr(OxO4615[0x11],inp_width.value):OxO4615[0x1c])+((inp_height[OxO4615[0x10]])?attr(OxO4615[0x12],inp_height.value):OxO4615[0x1c])+((VSpace[OxO4615[0x10]])?attr(OxO4615[0x13],VSpace.value):OxO4615[0x1c])+((HSpace[OxO4615[0x10]])?attr(OxO4615[0x14],HSpace.value):OxO4615[0x1c])+((Border[OxO4615[0x10]])?attr(OxO4615[0x15],Border.value):attr(OxO4615[0x15],0x0))+(((bordercolor[OxO4615[0x10]])&&(Border[OxO4615[0x10]]>0x0))?attr(OxO4615[0x17],OxO4615[0x1f]+bordercolor.value):OxO4615[0x1c])+OxO4615[0x20]; divpreview[OxO4615[0x21]]=Ox180 ;}  ; function do_insert(){if(oControl){var Oxba=oControl;} else {var Oxba= new Image();} ; Oxba[OxO4615[0xf]]=TargetUrl[OxO4615[0x10]] ; Oxba[OxO4615[0x11]]=inp_width[OxO4615[0x10]]||Oxba[OxO4615[0x11]] ; Oxba[OxO4615[0x12]]=inp_height[OxO4615[0x10]]||Oxba[OxO4615[0x12]] ; Oxba[OxO4615[0x13]]=VSpace[OxO4615[0x10]] ; Oxba[OxO4615[0x14]]=HSpace[OxO4615[0x10]] ; Oxba[OxO4615[0x15]]=Border[OxO4615[0x10]] ;try{ Oxba[OxO4615[0x17]][OxO4615[0x16]]=bordercolor[OxO4615[0x10]] ;} catch(er){ alert(OxO4615[0x22]) ;return false;} ; Oxba[OxO4615[0x19]]=Align[OxO4615[0x10]] ; Oxba[OxO4615[0x1a]]=AlternateText[OxO4615[0x10]] ; Oxba[OxO4615[0xb]]=longDesc[OxO4615[0x10]] ;if(TargetUrl[OxO4615[0x10]]==OxO4615[0x1c]){ alert(OxO4615[0x23]) ;return false;} ;if(Oxba[OxO4615[0xb]]==OxO4615[0x1c]){ Oxba.removeAttribute(OxO4615[0xb]) ;} ;if(Oxba[OxO4615[0x24]]==OxO4615[0x1c]){ Oxba.removeAttribute(OxO4615[0x24]) ;} ;if(Oxba[OxO4615[0x15]]==OxO4615[0x1c]){ Oxba.removeAttribute(OxO4615[0x15]) ;} ; editor.InsertElement(Oxba,oControl) ; top.close() ;}  ; function attr(name,Ox224){if(!Ox224||Ox224==OxO4615[0x1c]){return OxO4615[0x1c];} ;return OxO4615[0x25]+name+OxO4615[0x26]+Ox224+OxO4615[0x27];}  ; function do_cancel(){ top.close() ;}  ; function GetPreviewedImage(){var Ox308=divpreview.getElementsByTagName(OxO4615[0x28]);if(Ox308&&Ox308[OxO4615[0x29]]>0x0){return Ox308.item(0x0);} else {return null;} ;}  ; function toggleConstrains(){var Ox504=document.getElementById(OxO4615[0x2a]);var Ox505=document.getElementById(OxO4615[0x2b]);if(Ox505[OxO4615[0x2c]]){ Ox504[OxO4615[0xf]]=OxO4615[0x2d] ; checkConstrains(OxO4615[0x11]) ;} else { Ox504[OxO4615[0xf]]=OxO4615[0x1d] ;} ;}  ;var checkingConstrains=false; function checkConstrains(Ox198){if(checkingConstrains){return ;} ; checkingConstrains=true ;try{var Ox505=document.getElementById(OxO4615[0x2b]);if(Ox505[OxO4615[0x2c]]){var Ox508=document.getElementById(OxO4615[0x2e]);var Ox509= new Image(); Ox509[OxO4615[0xf]]=TargetUrl[OxO4615[0x10]] ; original_width=Ox509[OxO4615[0x11]] ; original_height=Ox509[OxO4615[0x12]] ;if(original_width>0x0&&original_height>0x0){ width=inp_width[OxO4615[0x10]] ; height=inp_height[OxO4615[0x10]] ;if(Ox198==OxO4615[0x11]){if(width[OxO4615[0x29]]==0x0||isNaN(width)){ inp_width[OxO4615[0x10]]=OxO4615[0x1c] ; inp_height[OxO4615[0x10]]=OxO4615[0x1c] ;return ;} else { height=parseInt(width*original_height/original_width) ; inp_height[OxO4615[0x10]]=height ;} ;} ;if(Ox198==OxO4615[0x12]){if(height[OxO4615[0x29]]==0x0||isNaN(height)){ inp_width[OxO4615[0x10]]=OxO4615[0x1c] ; inp_height[OxO4615[0x10]]=OxO4615[0x1c] ;return ;} else { width=parseInt(height*original_width/original_height) ; inp_width[OxO4615[0x10]]=width ;} ;} ;} ;} ; do_preview() ;} finally{ checkingConstrains=false ;} ;}  ; function GetAttribute(Ox2f5,Ox492){if(Ox2f5){var attr=Ox2f5.getAttributeNode(Ox492);if(attr&&attr[OxO4615[0x2f]]){return Ox2f5[attr[OxO4615[0x30]]];} ;return OxO4615[0x1c];} else {return OxO4615[0x1c];} ;}  ;

	</script>
	</body>
</HTML>
