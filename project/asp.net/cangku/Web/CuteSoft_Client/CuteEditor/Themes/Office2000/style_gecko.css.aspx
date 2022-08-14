<%@ Page Language="C#" ContentType="text/css" %>
<%@ OutputCache Duration="31536000" VaryByParam="None" Location="Client" %>

<script runat="server">
   string editorid;
   protected override void OnInit(EventArgs e)
   {
	  //do not call base's OnInit , skip the theme bug!
      //base.OnInit(e);
	  editorid="#"+Request.QueryString["EditorID"];
   }
</script>
/*<style>*/
<%=editorid%> { background-color:#d4d0c8!important; border: #999999 1px solid!important;}

<%=editorid%> IMG { border:0px;display:inline;}

<%=editorid%> .CuteEditorSelect { font-size:9pt;width:100px;margin-left:1px; margin-top:1px; height:21px; vertical-align:middle;}
<%=editorid%> .CuteEditorDropDown {	margin-left:1px; margin-right:1px; width:80px; border:#dad6d0 1px solid!important; height:21px; vertical-align:middle;}
<%=editorid%> .CuteEditorToolbar {}
<%=editorid%> .CuteEditorToolBarContainer {padding:2px 2px 2px 2px;height:1;overflow-y:visible;}
<%=editorid%> .CuteEditorFrameContainer {padding:0;margin:2px 0 0px 0px;}
<%=editorid%> .CuteEditorBottomBarContainer {padding:3px 3px 3px 3px;height:1;overflow-y:visible;}
<%=editorid%> .CuteEditorGroupMenu {display: inline; height:24px; vertical-align:middle;}
<%=editorid%> .CuteEditorGroupImage { margin:0px; vertical-align:middle;float: left; }
<%=editorid%> .CuteEditorLineBreak {padding:0px; height:0px; margin:0px}
<%=editorid%> .CuteEditorFrame {padding:0px 0 0px 0px;border-top: #aaaaaa 1px solid!important;border-bottom: #999999 1px solid!important;border-left: #ffffff 0px solid!important;border-right: #ffffff 0px solid!important;}
<%=editorid%> .CuteEditorButton { margin:1px; vertical-align:middle;}
<%=editorid%> .CuteEditorButtonActive { margin:0px; vertical-align:middle; border-right: buttonshadow 1px solid; border-top: buttonhighlight 1px solid; border-left: buttonhighlight 1px solid; border-bottom: buttonshadow 1px solid;}
<%=editorid%> .CuteEditorButtonOver { border-right: buttonshadow 1px solid; border-top: buttonhighlight 1px solid; border-left: buttonhighlight 1px solid; border-bottom: buttonshadow 1px solid; PADDING: 0px; MARGIN: 0px; vertical-align: middle;}
<%=editorid%> .CuteEditorButtonDown { border-right: buttonhighlight 1px solid!important; border-top: buttonshadow 1px solid!important; border-left: buttonshadow 1px solid!important; border-bottom: buttonhighlight 1px solid!important; margin:0px;vertical-align:middle; }
<%=editorid%> .CuteEditorButtonDisabled { /* filter:gray alpha(opacity=25); margin:1px;vertical-align:middle; */ margin:1px;vertical-align:middle;}
<%=editorid%> .ToolControl{}
<%=editorid%> .ToolControlOver{}
<%=editorid%> .ToolControlDown{}
<%=editorid%> .separator {border-top: 1px solid buttonshadow; border-left: 1px solid buttonshadow; border-bottom: 1px solid buttonhighlight; border-right: 1px solid buttonhighlight;width:2px;margin-left:2px;margin-right:2px;height:16px;VERTICAL-ALIGN: middle;}

/*case sensive for CSS1*/
<%=editorid%> #cmd_ToFullPage.CuteEditorButtonActive { display:none }
<%=editorid%> #cmd_FromFullPage.CuteEditorButton { display:none }

/*</style>*/
