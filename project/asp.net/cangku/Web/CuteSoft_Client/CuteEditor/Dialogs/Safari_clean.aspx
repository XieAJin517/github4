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
		<link rel="stylesheet" href='Safari_style.css'>
		<script language="javascript">
			var OxOcd7e=["availWidth","availHeight","dialogArguments","opener","ig","","\x3C/?[^\x3E]*\x3E","\x3C\x5C?xml[^\x3E]*\x3E","\x3C/?[a-z]+:[^\x3E]*\x3E","(\x3C[^\x3E]+) class=[^ |^\x3E]*([^\x3E]*\x3E)","$1 $2","(\x3C[^\x3E]+) style=\x22[^\x22]*\x22([^\x3E]*\x3E)","\x3Cspan[^\x3E]*\x3E\x3C/span[^\x3E]*\x3E","\x3Cspan\x3E\x3Cspan\x3E","\x3Cspan\x3E","\x3C/span\x3E\x3C/span\x3E","\x3C/span\x3E","[ ]*\x3E","\x3E","\x3C/?font[^\x3E]*\x3E","\x3C/?span[^\x3E]*\x3E","span","font","css","word","allhtml"]; window.resizeTo(0xf0,0xe1) ; window.focus() ; window.moveTo((screen[OxOcd7e[0x0]]-0x258)/0x2,(screen[OxOcd7e[0x1]]-0x190)/0x2) ;var editor=window[OxOcd7e[0x3]][OxOcd7e[0x2]]; function execRE(Ox181,Ox45a,Ox45b){ oReg= new RegExp(Ox181,OxOcd7e[0x4]) ;return Ox45b.replace(oReg,Ox45a);}  ; function getContent(){if(editor.getHTML()){return editor.getHTML();} else {return OxOcd7e[0x5];} ;}  ; function setContent(Ox45b){try{ editor.setHTML(Ox45b) ;} catch(e){} ;}  ; function codeCleaner(Ox2ca){var Ox45b=getContent();switch(Ox2ca){case OxOcd7e[0x19]: Ox45b=execRE(OxOcd7e[0x6],OxOcd7e[0x5],Ox45b) ;break ;case OxOcd7e[0x18]: Ox45b=execRE(OxOcd7e[0x7],OxOcd7e[0x5],Ox45b) ; Ox45b=execRE(OxOcd7e[0x8],OxOcd7e[0x5],Ox45b) ; Ox45b=execRE(OxOcd7e[0x9],OxOcd7e[0xa],Ox45b) ; Ox45b=execRE(OxOcd7e[0xb],OxOcd7e[0xa],Ox45b) ; Ox45b=execRE(OxOcd7e[0xc],OxOcd7e[0x5],Ox45b) ; Ox45b=execRE(OxOcd7e[0xd],OxOcd7e[0xe],Ox45b) ; Ox45b=execRE(OxOcd7e[0xf],OxOcd7e[0x10],Ox45b) ; Ox45b=execRE(OxOcd7e[0x11],OxOcd7e[0x12],Ox45b) ;break ;case OxOcd7e[0x17]: Ox45b=execRE(OxOcd7e[0x9],OxOcd7e[0xa],Ox45b) ; Ox45b=execRE(OxOcd7e[0xb],OxOcd7e[0xa],Ox45b) ;break ;case OxOcd7e[0x16]: Ox45b=execRE(OxOcd7e[0x13],OxOcd7e[0x5],Ox45b) ;break ;case OxOcd7e[0x15]: Ox45b=execRE(OxOcd7e[0x14],OxOcd7e[0x5],Ox45b) ;break ;;;;;;} ; setContent(Ox45b) ;}  ;
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
					<tr>
						<td align="left">
							<input type="button" onclick="codeCleaner('allhtml');" value="Remove all HTML tags">&nbsp;
						</td>
					</tr>
					<tr>
						<td align="left">
							<input type="button" onclick="codeCleaner('word');" value="Remove all word specific markup">&nbsp;
						</td>
					</tr>
					<tr>
						<td align="left">
							<input type="button" onclick="codeCleaner('css');" value="Clean up cascading style sheets">&nbsp;
						</td>
					</tr>
					<tr>
						<td align="left">
							<input type="button" onclick="codeCleaner('font');" value="Clean up &lt;Font&gt; tags ">&nbsp;
						</td>
					</tr>
					<tr>
						<td align="left">
							<input type="button" onclick="codeCleaner('span');" value="Clean up &lt;Span&gt; Tags">&nbsp;
						</td>
					</tr>
				</table>				
			</fieldset>
		<div style="margin-top:8px;width:60%; text-align:center">
			<input class="inputbuttoncancel" type="button" value="[[Cancel]]" style="width:80px" onClick="window.close();">
		</div>
</body>
</HTML>
