<%@ Page Language="C#" Inherits="CuteEditor.Dialogs.FileBrowserPage" %>
<%
	string QUERY_STRING=Request.ServerVariables["QUERY_STRING"];
%>
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
		var OxO7d3f=["disabled","srcElement","[[Disabled]]","[[SpecifyNewFolderName]]","","value","hiddenActionData","[[CopyMoveto]]","/","[[AreyouSureDelete]]","parentNode","isdir","text","hiddenAction","rename","path","True","False",":","cancelBubble","backgroundColor","style","#eeeeee","tagName","INPUT","changedir","hiddenFile","url","TargetUrl"]; function CreateDir_click(){if(event[OxO7d3f[0x1]][OxO7d3f[0x0]]){ alert(OxO7d3f[0x2]) ;return false;} ;var Ox2f4=prompt(OxO7d3f[0x3],OxO7d3f[0x4]);if(Ox2f4){ document.getElementById(OxO7d3f[0x6])[OxO7d3f[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Move_click(){if(event[OxO7d3f[0x1]][OxO7d3f[0x0]]){ alert(OxO7d3f[0x2]) ;return false;} ;var Ox2f4=prompt(OxO7d3f[0x7],OxO7d3f[0x8]);if(Ox2f4){ document.getElementById(OxO7d3f[0x6])[OxO7d3f[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Copy_click(){if(event[OxO7d3f[0x1]][OxO7d3f[0x0]]){ alert(OxO7d3f[0x2]) ;return false;} ;var Ox2f4=prompt(OxO7d3f[0x7],OxO7d3f[0x8]);if(Ox2f4){ document.getElementById(OxO7d3f[0x6])[OxO7d3f[0x5]]=Ox2f4 ;return true;} else {return false;} ;}  ; function Delete_click(){if(event[OxO7d3f[0x1]][OxO7d3f[0x0]]){ alert(OxO7d3f[0x2]) ;return false;} ;return confirm(OxO7d3f[0x9]);}  ; function EditImg_click(Oxba){if(Oxba[OxO7d3f[0x0]]){ alert(OxO7d3f[0x2]) ;return false;} ; row=Oxba[OxO7d3f[0xa]][OxO7d3f[0xa]] ;var name;if(row[OxO7d3f[0xb]]){ name=prompt(OxO7d3f[0x3],row.text) ;} else { name=prompt(OxO7d3f[0x3],row.text) ;} ;if(name&&(name!=row[OxO7d3f[0xc]])){ document.getElementById(OxO7d3f[0xd])[OxO7d3f[0x5]]=OxO7d3f[0xe] ; document.getElementById(OxO7d3f[0x6])[OxO7d3f[0x5]]=(row[OxO7d3f[0xb]]?OxO7d3f[0x10]:OxO7d3f[0x11])+OxO7d3f[0x12]+row[OxO7d3f[0xf]]+OxO7d3f[0x12]+name ; postback() ;} ; event[OxO7d3f[0x13]]=true ;}  ; function row_over(Oxc4){ Oxc4[OxO7d3f[0x15]][OxO7d3f[0x14]]=OxO7d3f[0x16] ;}  ; function row_out(Oxc4){ Oxc4[OxO7d3f[0x15]][OxO7d3f[0x14]]=OxO7d3f[0x4] ;}  ; function row_click(Oxc4){if(Oxc4[OxO7d3f[0xb]]){if(event[OxO7d3f[0x1]][OxO7d3f[0x17]]==OxO7d3f[0x18]){return ;} ; document.getElementById(OxO7d3f[0xd])[OxO7d3f[0x5]]=OxO7d3f[0x19] ; document.getElementById(OxO7d3f[0x6])[OxO7d3f[0x5]]=Oxc4.getAttribute(OxO7d3f[0xf]) ; postback() ;} else { document.getElementById(OxO7d3f[0x1a])[OxO7d3f[0x5]]=Oxc4.getAttribute(OxO7d3f[0xf]) ; document.getElementById(OxO7d3f[0x1c])[OxO7d3f[0x5]]=Oxc4.getAttribute(OxO7d3f[0x1b]) ; do_preview() ;} ;}  ; function postback(){ <%=Page.GetPostBackEventReference(hiddenAction,"")%> ;}  ;
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
        var OxO45fd=["onload","value","hiddenAlert","","hiddenAction","hiddenActionData"]; window[OxO45fd[0x0]]=reset_hiddens ; function reset_hiddens(){if(document.getElementById(OxO45fd[0x2])[OxO45fd[0x1]]){ alert(document.getElementById(OxO45fd[0x2]).value) ;} ; document.getElementById(OxO45fd[0x2])[OxO45fd[0x1]]=OxO45fd[0x3] ; document.getElementById(OxO45fd[0x4])[OxO45fd[0x1]]=OxO45fd[0x3] ; document.getElementById(OxO45fd[0x5])[OxO45fd[0x1]]=OxO45fd[0x3] ;}  ;
			</script>
			<input type="hidden" runat="server" id="hiddenDirectory" NAME="hiddenDirectory" />
			<input type="hidden" runat="server" id="hiddenFile" NAME="hiddenFile" /> <input type="hidden" runat="server" enableviewstate="false" id="hiddenAlert" NAME="hiddenAlert" />
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAction" onserverchange="hiddenAction_ServerChange"
				NAME="hiddenAction" /> <input type="hidden" runat="server" enableviewstate="false" id="hiddenActionData" NAME="hiddenActionData" />
			<!-- end hidden -->
			<table border="0" cellspacing="2" cellpadding="0" width="100%" align="center">
				<tr>
					<td width="20" nowrap>
						<asp:Image ID="Image1" Runat="server" ImageUrl="../images/openfolder.gif"></asp:Image>
					</td>
					<td width="200" class="normal" nowrap>
						<asp:Label Runat="server" ID="FolderDescription"></asp:Label>
					</td>
					<td width=100%>
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
					<td valign="top" nowrap width="220">
						<div style="BORDER: 1.5pt inset;  VERTICAL-ALIGN: middle; OVERFLOW: auto; WIDTH: 100%; HEIGHT: 250px; Padding: 0 0 0 0; BACKGROUND-COLOR: white">
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
					<td width="10">&nbsp;
					</td>
					<td valign="top">
						<div style="border:1.5pt inset; Padding: 0 0 0 0; vertical-align: top; overflow: auto; WIDTH: 280px; HEIGHT: 250px; BACKGROUND-COLOR: white;">
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
								<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageSize * 1024)%>
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
												<td height="10" colspan="2">
												</td>
											</tr>
											<tr>
												<td height="5" colspan="2">
												</td>
											</tr>
											<tr>
												<td colspan="2">
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
									</td>
								</tr>
							</table>
						</fieldset>
						<div align="center" style="padding-top:4px;">
							<input class="inputbuttoninsert" type="button" value="[[OK]]" onclick="do_insert()" id="Button1"
								runat="server" NAME="Button1">&nbsp;&nbsp;&nbsp; <input class="inputbuttoncancel" type="button" value="[[Cancel]]" onclick="do_cancel()"
								id="Button2" runat="server" NAME="Button2">
						</div>
					</td>
				</tr>
			</table>
		</form>
	</body>
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
			var OxO5c7e=["innerHTML","","value","TargetUrl",".","\x3CIMG src=\x27","\x27\x3E",".bmp",".png",".gif",".jpg",".jpeg","returnValue","zoom","style","height","width","src","Width","Height","IMG","length","[[SelectImagetoEdit]]","dialogWidth:676px;dialogHeight:500px;help:no;scroll:no;status:no;resizable:0;"]; do_preview() ; function do_preview(){ divpreview[OxO5c7e[0x0]]=OxO5c7e[0x1] ;var Oxbb=document.getElementById(OxO5c7e[0x3])[OxO5c7e[0x2]];if(Oxbb==OxO5c7e[0x1]){return ;} ;var Ox4db=Oxbb.substring(Oxbb.lastIndexOf(OxO5c7e[0x4])).toLowerCase();switch(Ox4db){case OxO5c7e[0xb]:case OxO5c7e[0xa]:case OxO5c7e[0x9]:case OxO5c7e[0x8]:case OxO5c7e[0x7]: divpreview[OxO5c7e[0x0]]=OxO5c7e[0x5]+Oxbb+OxO5c7e[0x6] ;break ;;;;;;} ;}  ; function do_insert(){ top[OxO5c7e[0xc]]=document.getElementById(OxO5c7e[0x3])[OxO5c7e[0x2]] ; top.close() ;}  ; function do_cancel(){ top[OxO5c7e[0xc]]=null ; top.close() ;}  ; function Zoom_In(){if(divpreview[OxO5c7e[0xe]][OxO5c7e[0xd]]!=0x0){ divpreview[OxO5c7e[0xe]][OxO5c7e[0xd]]*=1.2 ;} else { divpreview[OxO5c7e[0xe]][OxO5c7e[0xd]]=1.2 ;} ;}  ; function Zoom_Out(){if(divpreview[OxO5c7e[0xe]][OxO5c7e[0xd]]!=0x0){ divpreview[OxO5c7e[0xe]][OxO5c7e[0xd]]*=0.8 ;} else { divpreview[OxO5c7e[0xe]][OxO5c7e[0xd]]=0.8 ;} ;}  ; function BestFit(){var Oxba=GetPreviewedImage();if(!Oxba){return ;} ;var Ox2d8=0x118;var Ox82=0x122; divpreview[OxO5c7e[0xe]][OxO5c7e[0xd]]=0x1/Math.max(Oxba[OxO5c7e[0x10]]/Ox82,Oxba[OxO5c7e[0xf]]/Ox2d8) ;}  ; function Actualsize(){try{var Oxba= new Image(); Oxba[OxO5c7e[0x11]]=document.getElementById(OxO5c7e[0x3])[OxO5c7e[0x2]] ;if(Oxba[OxO5c7e[0x10]]){ document.getElementById(OxO5c7e[0x12])[OxO5c7e[0x2]]=Oxba[OxO5c7e[0x10]] ;} ;if(Oxba[OxO5c7e[0xf]]){ document.getElementById(OxO5c7e[0x13])[OxO5c7e[0x2]]=Oxba[OxO5c7e[0xf]] ;} ;} catch(er){} ; divpreview[OxO5c7e[0xe]][OxO5c7e[0xd]]=0x1 ; do_preview() ;}  ; function GetPreviewedImage(){var Ox308=divpreview.getElementsByTagName(OxO5c7e[0x14]);if(Ox308&&(Ox308[OxO5c7e[0x15]]>0x0)){return Ox308.item(0x0);} else {return null;} ;}  ; function ImageEditor(){if(document.getElementById(OxO5c7e[0x3])[OxO5c7e[0x2]]==OxO5c7e[0x1]){ alert(OxO5c7e[0x16]) ;return false;} ;var Oxba= new Image(); Oxba[OxO5c7e[0x11]]=document.getElementById(OxO5c7e[0x3])[OxO5c7e[0x2]] ;var src=document.getElementById(OxO5c7e[0x3])[OxO5c7e[0x2]];var arr=showModalDialog('../ImageEditor/ImageEditor.aspx?<%= QUERY_STRING %>&f='+src+OxO5c7e[0x1],Oxba,OxO5c7e[0x17]); document.getElementById(OxO5c7e[0x3])[OxO5c7e[0x2]]=src ; do_preview() ;}  ;

	</script>
</html>
