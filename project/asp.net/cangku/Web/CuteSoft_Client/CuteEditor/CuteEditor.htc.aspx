<%@ Page Language="C#" ContentType="text/x-component" Inherits="CuteEditor.EditorUtilityPageWithCache" %>
<PUBLIC:COMPONENT>
	<PUBLIC:EVENT ID="event_oncommand" NAME="oncommand" />
	<PUBLIC:EVENT ID="event_oninitialized" NAME="oninitialized" />
	<PUBLIC:PROPERTY NAME="ActiveTab" GET="_get_ActiveTab" PUT="_set_ActiveTab" VALUE="Edit"/>
	<PUBLIC:PROPERTY NAME="ToggleBorder" GET="_get_ToggleBorder" PUT="_set_ToggleBorder" VALUE="True"/>
	<PUBLIC:PROPERTY NAME="EnableContextMenu" GET="_get_EnableContextMenu" PUT="_set_EnableContextMenuu" VALUE="True"/>
	<PUBLIC:PROPERTY NAME="FullPage" GET="_get_FullPage" PUT="_set_FullPage" />
	<PUBLIC:PROPERTY NAME="AllowPasteHtml" GET="_get_AllowPasteHtml" PUT="_set_AllowPasteHtml" />
	<PUBLIC:PROPERTY NAME="MaxHTMLLength" GET="_get_MaxHTMLLength" PUT="_set_MaxHTMLLength" />
	<PUBLIC:PROPERTY NAME="MaxTextLength" GET="_get_MaxTextLength" PUT="_set_MaxTextLength" />
	<PUBLIC:PROPERTY NAME="EnableStripScriptTags" GET="_get_EnableStripScriptTags" PUT="_set_EnableStripScriptTags" />
	<PUBLIC:PROPERTY NAME="readOnly" GET="_get_readOnly" PUT="_set_readOnly" />
	<PUBLIC:PROPERTY NAME="Content" GET="_get_Content" PUT="_set_Content"/>
	<PUBLIC:PROPERTY NAME="value" GET="_get_value" />
</PUBLIC:COMPONENT>

<SCRIPT language=jscript>

var OxO9134=["cursor","style","progress","[[_setting_]]","[[_CuteEditorResource_]]","\x26[[DNN_Arg]]"];var htcmode=true;var editor=element;try{ editor[OxO9134[0x1]][OxO9134[0x0]]=OxO9134[0x2] ;} catch(x){} ;var _setting_=OxO9134[0x3];var _CuteEditorResource_=OxO9134[0x4];var colorpickerurl='<%=ProcessWebPath("ColorPicker.Aspx")%>?culture=[[_culture_]]'+OxO9134[0x5];var cpuspeed=0x3e8;


</SCRIPT>

<SCRIPT>

var OxO4c9d=[];
<!-- #include file="CuteEditor.htc.aspx.txt" -->

;

</SCRIPT>



<SCRIPT>
var OxO7932=["document"]; TestFrameReady() ; function TestFrameReady(){if(editor[OxO7932[0x0]].getElementById(editor._FrameID)){ StartInitialize() ;} else { setTimeout(TestFrameReady,0xa) ;} ;}  ;
</SCRIPT>