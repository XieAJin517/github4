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
		<link rel=stylesheet href='Safari_style.css' >
		<script src=Gecko_dialog.js></script><script src=../_shared.js></script>
		<script language="JavaScript">
			var OxO9bb9=["dialogArguments","editor","window","document","name","value","anchor_name","returnValue","allanchors","options","length","A","","OPTION","text"]; window.resizeTo(0x140,0xfa) ;var obj=top[OxO9bb9[0x0]];var editor=obj[OxO9bb9[0x1]];var editwin=obj[OxO9bb9[0x2]];var editdoc=obj[OxO9bb9[0x3]];var name=obj[OxO9bb9[0x4]]; function insert_link(){ top[OxO9bb9[0x7]]=document.getElementById(OxO9bb9[0x6])[OxO9bb9[0x5]] ; top.close() ;}  ; function Init(){if(name){ document.getElementById(OxO9bb9[0x6])[OxO9bb9[0x5]]=name ;} ; updateList() ;}  ; function updateList(){var Ox1b2=document.getElementById(OxO9bb9[0x8]);while(Ox1b2[OxO9bb9[0x9]][OxO9bb9[0xa]]!=0x0){ Ox1b2[OxO9bb9[0x9]][0x0]=null ;} ;var Ox4b6=editdoc.getElementsByTagName(OxO9bb9[0xb]);for(var i=0x0;i<Ox4b6[OxO9bb9[0xa]];i++){if(Ox4b6[i][OxO9bb9[0x4]]!=OxO9bb9[0xc]){var Ox4b7=document.createElement(OxO9bb9[0xd]); Ox4b7[OxO9bb9[0xe]]=Ox4b6[i][OxO9bb9[0x4]] ; Ox4b7[OxO9bb9[0x5]]=Ox4b6[i][OxO9bb9[0x4]] ; Ox1b2[OxO9bb9[0x9]][Ox1b2[OxO9bb9[0x9]][OxO9bb9[0xa]]]=Ox4b7 ;} ;} ;}  ; function selectAnchor(Ox4b9){var Ox1b2=document.getElementById(OxO9bb9[0x8]); editor.FocusDocument() ;var Ox4b6=editdoc.getElementsByName(Ox4b9);if(Ox4b6[OxO9bb9[0xa]]>0x0){var Ox176=editdoc.createRange(); Ox176.selectNode(Ox4b6[0x0]) ; oSel=editwin.getSelection() ; oSel.removeAllRanges() ; oSel.addRange(Ox176) ;} ; document.getElementById(OxO9bb9[0x6])[OxO9bb9[0x5]]=Ox4b9 ;}  ;
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
