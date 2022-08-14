<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<HTML>
	<head runat=server ID="Head1" NAME="Head1">
		<title>[[CleanCode]] 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</title>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta name="content-type" content="text/html ;charset=Unicode">
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)">
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)">
		<link rel="stylesheet" href='style.css'>
		<script src=gecko_dialog.js></script><script src=../_shared.js></script>
		<script language="javascript">
			var OxOae7a=["dialogArguments","ig","","\x3C/?[^\x3E]*\x3E","\x3C\x5C?xml[^\x3E]*\x3E","\x3C/?[a-z]+:[^\x3E]*\x3E","(\x3C[^\x3E]+) class=[^ |^\x3E]*([^\x3E]*\x3E)","$1 $2","(\x3C[^\x3E]+) style=\x22[^\x22]*\x22([^\x3E]*\x3E)","\x3Cspan[^\x3E]*\x3E\x3C/span[^\x3E]*\x3E","\x3Cspan\x3E\x3Cspan\x3E","\x3Cspan\x3E","\x3C/span\x3E\x3C/span\x3E","\x3C/span\x3E","[ ]*\x3E","\x3E","\x3C/?font[^\x3E]*\x3E","\x3C/?span[^\x3E]*\x3E","span","font","css","word","allhtml"]; window.resizeTo(0xf0,0x145) ;var editor=top[OxOae7a[0x0]]; function execRE(Ox181,Ox45a,Ox45b){ oReg= new RegExp(Ox181,OxOae7a[0x1]) ; r=Ox45b.replace(oReg,Ox45a) ;return r;}  ; function getContent(){if(editor.getHTML()){return editor.getHTML();} else {return OxOae7a[0x2];} ;}  ; function setContent(Ox45b){try{ editor.setHTML(Ox45b) ;} catch(e){} ;}  ; function codeCleaner(Ox2ca){var Ox45b=getContent();switch(Ox2ca){case OxOae7a[0x16]: Ox45b=execRE(OxOae7a[0x3],OxOae7a[0x2],Ox45b) ;break ;case OxOae7a[0x15]: Ox45b=execRE(OxOae7a[0x4],OxOae7a[0x2],Ox45b) ; Ox45b=execRE(OxOae7a[0x5],OxOae7a[0x2],Ox45b) ; Ox45b=execRE(OxOae7a[0x6],OxOae7a[0x7],Ox45b) ; Ox45b=execRE(OxOae7a[0x8],OxOae7a[0x7],Ox45b) ; Ox45b=execRE(OxOae7a[0x9],OxOae7a[0x2],Ox45b) ; Ox45b=execRE(OxOae7a[0xa],OxOae7a[0xb],Ox45b) ; Ox45b=execRE(OxOae7a[0xc],OxOae7a[0xd],Ox45b) ; Ox45b=execRE(OxOae7a[0xe],OxOae7a[0xf],Ox45b) ;break ;case OxOae7a[0x14]: Ox45b=execRE(OxOae7a[0x6],OxOae7a[0x7],Ox45b) ; Ox45b=execRE(OxOae7a[0x8],OxOae7a[0x7],Ox45b) ;break ;case OxOae7a[0x13]: Ox45b=execRE(OxOae7a[0x10],OxOae7a[0x2],Ox45b) ;break ;case OxOae7a[0x12]: Ox45b=execRE(OxOae7a[0x11],OxOae7a[0x2],Ox45b) ;break ;;;;;;} ; setContent(Ox45b) ;}  ;
		</script>
		<style type=text/css>
			.codebutton
			{
				width:200px; 
				height:30px; 
				TEXT-ALIGN: left; 
				font:normal 9pt MS Sans Serif;
			    padding: 1px 3px 1px 3px;
				color: #000;		
				BACKGROUND-COLOR: #d7d3cc;
				BORDER-RIGHT: buttonshadow 1px solid; BORDER-TOP: buttonhighlight 1px solid; BORDER-LEFT: buttonhighlight 1px solid; BORDER-BOTTOM: buttonshadow 1px solid; VERTICAL-ALIGN: middle;
			}
		</style>

	</HEAD>
	<body>
			<fieldset title="Code Sweeper" style="padding:5px 5px 10px 5px;" align="middle">
				<legend>[[CleanCode]]</legend>
				<table border="0" cellspacing="0" cellpadding="5" width="100%"  class="normal">
					<tr><td align="left"><button class="codebutton" onClick="codeCleaner('allhtml');"><IMG src="../Images/code.gif" align="absMiddle" border="0"/> Remove all HTML tags </button> <br/></td></tr>
					<tr><td align="left"><button class="codebutton" onClick="codeCleaner('word');"><IMG src="../Images/doc.gif" align="absMiddle" border="0"/> Remove all word specific markup </button> <br/></td></tr>
					<tr><td align="left"><button class="codebutton" onClick="codeCleaner('css');"><IMG src="../Images/style.font.gif" align="absMiddle" border="0"/> Clean up cascading style sheets </button> <br/></td></tr>
					<tr><td align="left"><button class="codebutton" onClick="codeCleaner('font');"><IMG src="../Images/fontend.gif" align="absMiddle" border="0"/> Clean up &lt;Font&gt; tags </button> <br/></td></tr>
					<tr><td align="left"><button class="codebutton" onClick="codeCleaner('span');"><IMG src="../Images/spanend.gif" align="absMiddle" border="0"/> Clean up &lt;Span&gt; Tags </button> <br/></td></tr>
				</table>				
			</fieldset>
		<div style="margin-top:8px;width:60%; text-align:center">
			<input class="inputbuttoncancel" type="button" value="[[Cancel]]" style="width:80px" onClick="window.close();">
		</div>
</body>
</HTML>
