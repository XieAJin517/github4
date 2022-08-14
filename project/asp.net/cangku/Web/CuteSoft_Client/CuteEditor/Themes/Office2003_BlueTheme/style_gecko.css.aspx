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
<%=editorid%> { background-color:#CFE2FB!important; border: #9FBDDC 1px solid!important;}
<%=editorid%> IMG { border:0px;display:inline;}

<%=editorid%> .CuteEditorSelect { font:normal 11px Tahoma; width:100px;margin-left:1px; margin-top:1px; height:21px; vertical-align:middle;}
<%=editorid%> .CuteEditorDropDown {font:normal 11px Tahoma;	margin-left:1px; margin-right:1px; border:#dad6d0 1px solid!important; height:21px; vertical-align:middle;}
<%=editorid%> .CuteEditorDropDown Span {font:normal 11px Tahoma;}
<%=editorid%> .CuteEditorToolbar {background-image: url(images/horizontal.background.gif); vertical-align:middle;}
<%=editorid%> .CuteEditorToolBarContainer {padding:3px;height:1;overflow-y:visible;}
<%=editorid%> .CuteEditorFrameContainer {padding:1px 4px 2px 4px;}
<%=editorid%> .CuteEditorBottomBarContainer {padding:3px 3px 3px 3px;height:1;overflow-y:visible;}
<%=editorid%> .CuteEditorGroupMenu {display: inline;}
<%=editorid%> .CuteEditorGroupImage { margin:0px; vertical-align:middle;}
<%=editorid%> .CuteEditorLineBreak {}
<%=editorid%> .CuteEditorFrame {padding:0px 0 0px 0px;border: #9FBDDC 1px solid!important;}
<%=editorid%> .CuteEditorButton { margin:1px; vertical-align:middle;}
<%=editorid%> .CuteEditorButtonActive { margin:0px; vertical-align:middle; border:#0a246a 1px solid!important; background-image: url(images/toolbarbutton.over.gif)}
<%=editorid%> .CuteEditorButtonOver { margin:0px;vertical-align:middle;border:#000080 1px solid!important;  background-image: url(images/toolbarbutton.over.gif)}
<%=editorid%> .CuteEditorButtonDown { border-right: buttonhighlight 1px solid!important; border-TOP: buttonshadow 1px solid!important; border-left: buttonshadow 1px solid!important; border-bottom: buttonhighlight 1px solid!important; margin:0px;vertical-align:middle; }
<%=editorid%> .CuteEditorButtonDisabled { /* filter:gray alpha(opacity=25); margin:1px;vertical-align:middle; */ margin:1px;vertical-align:middle;}
<%=editorid%> .ToolControl{}
<%=editorid%> .ToolControlOver{}
<%=editorid%> .ToolControlDown{}
<%=editorid%> .separator {background-image: url(images/Separator.gif); height:23px; background-repeat: no-repeat; vertical-align:middle; width:2px;margin-left:2px; margin-right:2px;	}

/*case sensive for CSS1*/
<%=editorid%> #cmd_tofullpage.CuteEditorButtonActive { display:none }
<%=editorid%> #cmd_fromfullpage.CuteEditorButton { display:none }

/*</style>*/