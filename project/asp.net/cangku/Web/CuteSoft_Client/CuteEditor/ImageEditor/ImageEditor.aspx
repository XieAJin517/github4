<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<%@import Namespace="System.IO"%>
<%@ Register TagPrefix="CE" namespace="CuteEditor.ImageEditor" assembly = "CuteEditor.ImageEditor" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<head runat=server>
		<title>[[ImageEditor]] 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</title>
		<script runat="server">
			void Page_Load(object sender, System.EventArgs e)
			{
				bool isexist = false;
				
				string filename = Request.QueryString["f"];			
				
				string tempFilesPath = Request.QueryString["p"]+"/ImageEditor/TempFiles/";
				
				if(!System.IO.Directory.Exists(HttpContext.Current.Server.MapPath(tempFilesPath)))
					System.IO.Directory.CreateDirectory((HttpContext.Current.Server.MapPath(tempFilesPath)));
					
				IE1.TempImagePath=tempFilesPath;				
				
				if(System.IO.File.Exists(HttpContext.Current.Server.MapPath(filename)))
				{
					isexist = true;
				}
				if(isexist)
				{
					FileInfo f = new FileInfo(HttpContext.Current.Server.MapPath(filename));
					IE1.GraphicsPath=f.Directory.Name;
					IE1.ImageUrl=filename;
				}
				
			}
		</script>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<META Http-Equiv="Cache-Control" Content="no-cache">
		<META Http-Equiv="Pragma" Content="no-cache">
		<META HTTP-EQUIV="EXPIRES" CONTENT="0">
		<style>
			.window { background-color: #c0c0c0; border-color: #f0f0f0 #606060 #404040 #d0d0d0; border-style: solid; border-width: 2px; margin: 0px; padding: 2px; position: absolute; text-align: left;}
			.titleBar { background-color: #163174; cursor: default; color: #ffffff; font-family: "MS Sans Serif", "Arial", "Helvetica", sans-serif; font-size: 8pt; font-weight: bold; margin: 0px; padding: 2px 2px 2px 2px; text-align: left; white-space: nowrap; }
			.CuteEditorButtonActive { margin:0px; vertical-align:middle; border-right: buttonshadow 1px solid; border-top: buttonhighlight 1px solid; border-left: buttonhighlight 1px solid; border-bottom: buttonshadow 1px solid;}
			.CuteEditorButtonOver { border-right: buttonshadow 1px solid; border-top: buttonhighlight 1px solid; border-left: buttonhighlight 1px solid; border-bottom: buttonshadow 1px solid; PADDING: 0px; MARGIN: 0px; vertical-align: middle;}
			.CuteEditorButtonDown { border-right: buttonhighlight 1px solid!important; border-top: buttonshadow 1px solid!important; border-left: buttonshadow 1px solid!important; border-bottom: buttonhighlight 1px solid!important; margin:0px;vertical-align:middle; background-color:#ffffff!important;}
			.CuteEditorButtonDisabled {filter:gray alpha(opacity=25);opacity: .25; -moz-opacity: .25;border-right: buttonshadow 1px solid; border-top: buttonhighlight 1px solid; border-left: buttonhighlight 1px solid; border-bottom: buttonshadow 1px solid; PADDING: 0px; MARGIN: 0px; vertical-align: middle;}
			.clientArea { background-color: #ffffff; border-color: #404040 #e0e0e0 #f0f0f0 #505050; border-style: solid; border-width: 2px; color: #000000; font-family: "Arial", "Helvetica", sans-serif; font-size: 10pt; margin: 2px 0px 0px 0px; overflow: auto; padding: .5em; }
			.clientArea td { font-family: "MS Sans Serif", "Arial", "Helvetica", sans-serif; font-size: 9pt; text-align: left;}
		</style>
	</HEAD>
	<body bottomMargin="0" topMargin="0" marginwidth="0" marginheight="0" bgcolor="#e0e0e0">
		<form id="Form1" method="post" runat="server">
			<CE:ImageEditor id="IE1" runat="server" Width="500" Height="380"></CE:ImageEditor>
		</form>
		<script>
		
			var OxOc205=[]; function do_insert(){ top.close() ;}  ; function do_cancel(){ top.close() ;}  ;
		</script>
	</body>
</HTML>
