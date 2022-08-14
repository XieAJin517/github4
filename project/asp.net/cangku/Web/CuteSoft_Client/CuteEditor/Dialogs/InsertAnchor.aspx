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
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)">
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)">
		<link rel=stylesheet href='style.css' >
		<script src=dialog.js></script><script src=../_shared.js></script>
		<script language="JavaScript">

			var OxOa871=["dialogArguments","editor","window","document","name","value","anchor_name","returnValue","options","length","anchors","OPTION","text","selection","type","Unselect","parentElement","body","StartToStart","EndToEnd"];var obj=top[OxOa871[0x0]];var editor=obj[OxOa871[0x1]];var editwin=obj[OxOa871[0x2]];var editdoc=obj[OxOa871[0x3]];var name=obj[OxOa871[0x4]]; function insert_link(){ top[OxOa871[0x7]]=document.getElementById(OxOa871[0x6])[OxOa871[0x5]] ; top.close() ;}  ; function Init(){if(name){ document.getElementById(OxOa871[0x6])[OxOa871[0x5]]=name ;} ; updateList() ;}  ; function updateList(){while(allanchors[OxOa871[0x8]][OxOa871[0x9]]!=0x0){ allanchors[OxOa871[0x8]].remove(allanchors.options(0x0)) ;} ;for(var i=0x0;i<editdoc[OxOa871[0xa]][OxOa871[0x9]];i++){var Ox4b7=document.createElement(OxOa871[0xb]); Ox4b7[OxOa871[0xc]]=editdoc[OxOa871[0xa]][i][OxOa871[0x4]] ; Ox4b7[OxOa871[0x5]]=editdoc[OxOa871[0xa]][i][OxOa871[0x4]] ; allanchors[OxOa871[0x8]].add(Ox4b7) ;} ;}  ; function selectAnchor(Ox4b9){ editor.FocusDocument() ;var Ox464=editdoc[OxOa871[0xd]].createRange();var Ox465=editdoc[OxOa871[0xd]][OxOa871[0xe]]; Ox464.execCommand(OxOa871[0xf]) ;for(var i=0x0;i<editdoc[OxOa871[0xa]][OxOa871[0x9]];i++){if(editdoc[OxOa871[0xa]][i][OxOa871[0x4]]==Ox4b9){ document.getElementById(OxOa871[0x6])[OxOa871[0x5]]=Ox4b9 ;if(Ox464[OxOa871[0x10]]){var Ox55e=editdoc[OxOa871[0x11]].createTextRange(); Ox55e.moveToElementText(editdoc[OxOa871[0xa]][i]) ; Ox464.setEndPoint(OxOa871[0x12],Ox55e) ; Ox464.setEndPoint(OxOa871[0x13],Ox55e) ; Ox464.select() ;} ;} ;} ;}  ;
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
