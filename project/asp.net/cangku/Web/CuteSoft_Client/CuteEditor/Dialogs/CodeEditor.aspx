<%@ Page Language="C#" ResponseEncoding="Unicode" Inherits="CuteEditor.EditorUtilityPage"  %>
<HTML>
	<head runat=server>
		<title>[[CodeEditor]] 
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
		<script src=dialog.js></script><script src=../_shared.js></script>
		<script>
			var OxO320a=["dialogArguments","editor","window","document","onload","contentWindow","idSource","innerHTML","body","contentEditable","clearAttributes","marginTop","style","4","marginLeft","10","fontFamily","Tahoma","fontSize","11px","color","black","background","white","selection","type","None"];var obj=top[OxO320a[0x0]];var editor=obj[OxO320a[0x1]];var editwin=obj[OxO320a[0x2]];var editdoc=obj[OxO320a[0x3]]; window[OxO320a[0x4]]=function (){var iframe=document.getElementById(OxO320a[0x6])[OxO320a[0x5]]; iframe[OxO320a[0x3]][OxO320a[0x8]][OxO320a[0x7]]=editdoc[OxO320a[0x8]][OxO320a[0x7]] ; iframe[OxO320a[0x3]][OxO320a[0x8]][OxO320a[0x9]]=true ; iframe[OxO320a[0x3]][OxO320a[0x8]][OxO320a[0xa]] ; iframe[OxO320a[0x3]][OxO320a[0x8]][OxO320a[0xc]][OxO320a[0xb]]=OxO320a[0xd] ; iframe[OxO320a[0x3]][OxO320a[0x8]][OxO320a[0xc]][OxO320a[0xe]]=OxO320a[0xf] ; iframe[OxO320a[0x3]][OxO320a[0x8]][OxO320a[0xc]][OxO320a[0x10]]=OxO320a[0x11] ; iframe[OxO320a[0x3]][OxO320a[0x8]][OxO320a[0xc]][OxO320a[0x12]]=OxO320a[0x13] ; iframe[OxO320a[0x3]][OxO320a[0x8]][OxO320a[0xc]][OxO320a[0x14]]=OxO320a[0x15] ; iframe[OxO320a[0x3]][OxO320a[0x8]][OxO320a[0xc]][OxO320a[0x16]]=OxO320a[0x17] ; iframe.focus() ;}  ; function DoCommand(Ox462,Ox463){var iframe=document.getElementById(OxO320a[0x6])[OxO320a[0x5]];var Ox464=iframe[OxO320a[0x3]][OxO320a[0x18]].createRange();var Ox465=iframe[OxO320a[0x3]][OxO320a[0x18]][OxO320a[0x19]];var Ox466=(Ox465==OxO320a[0x1a]?iframe[OxO320a[0x3]]:Ox464); Ox466.execCommand(Ox462,false,Ox463) ;}  ; function do_update(){ top.close() ;}  ; function do_cancel(){ top.close() ;}  ; function do_ok(){ top.close() ;}  ;		
			
		</script>
	</HEAD>
	<body>
		<form id="formSearch" method="post" runat="server">
			<table height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center">
				<tbody>
					<tr>
						<td style="padding:4px 0 1px 4px">
							<IMG src="../Themes/Custom/images/Cut.gif" onclick="DoCommand('Cut');" Alt="[[Cut]]" class="dialogButton"	onmouseover="CuteEditor_ColorPicker_ButtonOver(this);"> 
							<IMG src="../Themes/Custom/images/Copy.gif" onclick="DoCommand('Copy');" Alt="[[Copy]]" class="dialogButton" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);"> 
							<IMG src="../Themes/Custom/images/Paste.gif" onclick="DoCommand('Paste');" Alt="[[Paste]]" class="dialogButton" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);"> 
							<IMG src="../Themes/Custom/images/Undo.gif" onclick="DoCommand('Undo');" Alt="[[Undo]]" class="dialogButton" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);">
							<IMG src="../Themes/Custom/images/Redo.gif" onclick="DoCommand('Redo');" Alt="[[Redo]]" class="dialogButton" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);">
							<IMG src="../Themes/Custom/images/find.gif" onclick="DoCommand('Find');" Alt="[[Find]]" class="dialogButton" onmouseover="CuteEditor_ColorPicker_ButtonOver(this);">
						</td>
					</tr>
					<tr>
						<td style="HEIGHT: 100%">
							<iframe id="idSource" name="idSource" src="../template.aspx" scrolling="auto" style="WIDTH: 100%; HEIGHT: 100%"></iframe>
						</td>
					</tr>
					<tr>
						<td class="dialogFooter" vAlign="top" align="right" style="PADDING-RIGHT: 13px; PADDING-LEFT: 13px; PADDING-BOTTOM: 7px; PADDING-TOP: 7px">
							<table cellSpacing="0" cellPadding="1">
								<tbody>
									<tr>
										<td width="100%">&#160;
											<input id="inpWrap" start="fileopen" type="checkbox"  CHECKED="true" size="20" value="on" name="inpWrap" /> <span id="txtLang" name="txtLang">Wrap Text</span> 
										</td>
										<td>
											<input type="button" value="[[Update]]" onclick="do_update()">&nbsp;
											<input type="button" value="[[Cancel]]" onclick="do_cancel()">&nbsp;
											<input type="button" value="[[OK]]" onclick="do_ok()">
										</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</body>
</HTML>