<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<html>
	<head runat=server>
		<title>[[InsertAnchor]] 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</title>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel=stylesheet href='style.css' >
		<script src=Gecko_dialog.js></script><script src=../_shared.js></script>
		<script language="JavaScript">
			var OxObf31=["availWidth","availHeight","dialogArguments","editor","window","document","name","value","anchor_name","returnValue","allanchors","options","length","A","","OPTION","text"]; window.resizeTo(0x140,0xfa) ; window.moveTo((screen[OxObf31[0x0]]-0x140)/0x2,(screen[OxObf31[0x1]]-0xfa)/0x2) ;var obj=top[OxObf31[0x2]];var editor=obj[OxObf31[0x3]];var editwin=obj[OxObf31[0x4]];var editdoc=obj[OxObf31[0x5]];var name=obj[OxObf31[0x6]]; function insert_link(){ top[OxObf31[0x9]]=document.getElementById(OxObf31[0x8])[OxObf31[0x7]] ; top.close() ;}  ; function Init(){if(name){ document.getElementById(OxObf31[0x8])[OxObf31[0x7]]=name ;} ; updateList() ;}  ; function updateList(){var Ox1b2=document.getElementById(OxObf31[0xa]);while(Ox1b2[OxObf31[0xb]][OxObf31[0xc]]!=0x0){ Ox1b2[OxObf31[0xb]][0x0]=null ;} ;var Ox4b6=editdoc.getElementsByTagName(OxObf31[0xd]);for(var i=0x0;i<Ox4b6[OxObf31[0xc]];i++){if(Ox4b6[i][OxObf31[0x6]]!=OxObf31[0xe]){var Ox4b7=document.createElement(OxObf31[0xf]); Ox4b7[OxObf31[0x10]]=Ox4b6[i][OxObf31[0x6]] ; Ox4b7[OxObf31[0x7]]=Ox4b6[i][OxObf31[0x6]] ; Ox1b2[OxObf31[0xb]][Ox1b2[OxObf31[0xb]][OxObf31[0xc]]]=Ox4b7 ;} ;} ;}  ; function selectAnchor(Ox4b9){var Ox1b2=document.getElementById(OxObf31[0xa]); editor.FocusDocument() ;var Ox4b6=editdoc.getElementsByName(Ox4b9);if(Ox4b6[OxObf31[0xc]]>0x0){var Ox176=editdoc.createRange(); Ox176.selectNode(Ox4b6[0x0]) ; oSel=editwin.getSelection() ; oSel.removeAllRanges() ; oSel.addRange(Ox176) ;} ; document.getElementById(OxObf31[0x8])[OxObf31[0x7]]=Ox4b9 ;}  ;
		</script>
		<style>
		.btn {border: 1px solid buttonface;padding: 1px;cursor: default;width:14px;height: 12px;vertical-align: middle;}
		select,input,td {font-family: MS Sans Serif; font-size: 9pt; vertical-align: top; cursor: hand;}
		</style>
	</head>
	<body onload="Init();" style="margin:0px;border-width:0px;padding:4px;">
		<table border="0" cellspacing="2" cellpadding="5" width="100%" align="center">
			<tr>
				<td nowrap>
					<div>
						<fieldset style="padding:2px" align="center"><legend>[[InsertAnchor]]</legend>
							<table border="0" cellpadding="5" cellspacing="0">
								<tr>
									<td width="100%">
										<select size="5" name="allanchors" style="width: 255" id="allanchors" onchange="selectAnchor(this.value);"></select>
									</td>
									<td>
									</td>
								</tr>
							</table
							<br><br>
							<table border="0" cellpadding="5" cellspacing="0">
								<tr>
									<td style='vertical-align:middle'>[[Name]]:</td>
									<td style='vertical-align:middle'><input type="text" id="anchor_name" style="width:210"></td>
								</tr>
							</table>
						</fieldset>
					</div>
					<div style="margin-top:8px;width:90%; text-align:center">
						<input class="inputbuttoninsert" type="button" value="[[Insert]]" style="width:80px" onclick="insert_link()">&nbsp;&nbsp;
						<input class="inputbuttoncancel" type="button" value="[[Cancel]]" style="width:80px" onclick="top.close()">
					</div>
				</td>
			</tr>
		</table>
	</body>
</html>
