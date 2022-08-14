<%@ Page Language="C#" ResponseEncoding="Unicode" Inherits="CuteEditor.EditorUtilityPage" %>
<HTML>
	<head runat=server>
		<title>[[InsertChars]] 
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
		<style type=text/css>
			body,input,textarea,button,select,fieldset
			{
				font:normal 9pt MS Sans Serif;
			}
			button
			{
				padding-top: 1px;
				height: 22px;
			}
			fieldset
			{
				padding: 3px;
			}
			.normal
			{
				font:normal 9pt MS Sans Serif;
			}
			body
			{
				background-color:#d7d3cc;
				overflow:hidden;
			}	
		</style>
		
		<script src=dialog.js></script><script src=../_shared.js></script>
		<script language="javascript">
		var OxO7152=["dialogArguments","","\x3Ctr\x3E","\x3Ctd style=\x27align: left; height: 20; font-size: 12px; \x27 bgcolor=white width=\x2718\x27 align=center onClick=\x27getchar(this)\x27 onmouseover=\x27spcOver(this)\x27 onmouseout=\x27spcOut(this)\x27 title=\x27","\x27 \x3E","\x26#",";","\x3C/td\x3E","\x3C/tr\x3E","background","style","#0A246A","color","white","black","Verdana","innerHTML","Unicode","innerText","\x3Cspan style=\x27font-family:","\x27\x3E","\x3C/span\x3E"];var editor=top[OxO7152[0x0]];var tds=0x16; function writeChars(){var Ox1f=OxO7152[0x1];for(var i=0x21;i<0x100;){ document.write(OxO7152[0x2]) ;for(var j=0x0;j<=tds;j++){ document.write(OxO7152[0x3]+i+OxO7152[0x4]) ; document.write(OxO7152[0x5]+i+OxO7152[0x6]) ; document.write(OxO7152[0x7]) ; i++ ;} ; document.write(OxO7152[0x8]) ;} ;}  ; function spcOver(Ox2f5){ Ox2f5[OxO7152[0xa]][OxO7152[0x9]]=OxO7152[0xb] ; Ox2f5[OxO7152[0xa]][OxO7152[0xc]]=OxO7152[0xd] ;}  ; function spcOut(Ox2f5){ Ox2f5[OxO7152[0xa]][OxO7152[0x9]]=OxO7152[0xd] ; Ox2f5[OxO7152[0xa]][OxO7152[0xc]]=OxO7152[0xe] ;}  ; function getchar(obj){var h;var Ox4bf=getFontValue()||OxO7152[0xf];if(!obj[OxO7152[0x10]]){return ;} ; h=obj[OxO7152[0x10]] ;if(Ox4bf==OxO7152[0x11]){ h=obj[OxO7152[0x12]] ;} else {if(Ox4bf!=OxO7152[0xf]){ h=OxO7152[0x13]+Ox4bf+OxO7152[0x14]+obj[OxO7152[0x10]]+OxO7152[0x15] ;} ;} ; editor.PasteHTML(h) ; top.close() ;}  ; function cancel(){ top.close() ;}  ;
		</script>
	</HEAD>
	<body>
		<form id="Insert_chart" method="post" runat="server">
			<table border="0" cellspacing="2" cellpadding="2" width="96%" align="center">
				<tr>
					<td class="normal">
						[[FontName]]: <input type="radio" onpropertychange="sel_font_change()" id="selfont1" name="selfont" value=""
							checked><label for="selfont1">[[Default]]</label> <input type="radio" onpropertychange="sel_font_change()" id="selfont2" name="selfont" value="webdings"><label for="selfont2">Webdings</label>
						<input type="radio" onpropertychange="sel_font_change()" id="selfont3" name="selfont" value="wingdings"><label for="selfont3">Wingdings</label>
						<input type="radio" onpropertychange="sel_font_change()" id="selfont4" name="selfont" value="symbol"><label for="selfont4">Symbol</label>
						<input type="radio" onpropertychange="sel_font_change()" id="selfont5" name="selfont" value="Unicode"><label for="selfont5">Unicode</label>
						<script>
						var OxOd1be=["selfont","length","checked","value","Verdana","display","style","charstable1","Unicode","block","none","charstable2","fontFamily"]; function getFontValue(){var coll=document.getElementsByName(OxOd1be[0x0]);for(var i=0x0;i<coll[OxOd1be[0x1]];i++){if(coll[i][OxOd1be[0x2]]){return coll[i][OxOd1be[0x3]];} ;} ;}  ; function sel_font_change(){var Ox4c4=getFontValue()||OxOd1be[0x4]; document.getElementById(OxOd1be[0x7])[OxOd1be[0x6]][OxOd1be[0x5]]=(Ox4c4!=OxOd1be[0x8]?OxOd1be[0x9]:OxOd1be[0xa]) ; document.getElementById(OxOd1be[0xb])[OxOd1be[0x6]][OxOd1be[0x5]]=(Ox4c4==OxOd1be[0x8]?OxOd1be[0x9]:OxOd1be[0xa]) ; document.getElementById(OxOd1be[0x7])[OxOd1be[0x6]][OxOd1be[0xc]]=Ox4c4 ;if(Ox4c4==OxOd1be[0x8]){} ;}  ;
						</script>
					</td>
				</tr>
				<tr>
					<td align="center">
						<fieldset align="center">
							<legend>
								[[InsertChars]]
							</legend>
							<br>
							<TABLE id="charstable1" width="95%" height="222" cellspacing="1" cellpadding="1" border="0"
								bordercolor="dimgray" align="center" bgcolor="dimgray" style="FONT-FAMILY: Verdana;">
								<SCRIPT>
								var OxOc86c=[]; writeChars() ;
								</SCRIPT>
							</TABLE>
							<TABLE id="charstable2" width="95%" height="222" cellspacing="1" cellpadding="1" border="0"
								bordercolor="dimgray" align="center" bgcolor="dimgray" style="FONT-FAMILY: Verdana;display:none;">
								<SCRIPT>
								var OxO8fc2=["\x26#402;","\x26#913;","\x26#914;","\x26#915;","\x26#916;","\x26#917;","\x26#918;","\x26#919;","\x26#920;","\x26#921;","\x26#922;","\x26#923;","\x26#924;","\x26#925;","\x26#926;","\x26#927;","\x26#928;","\x26#929;","\x26#931;","\x26#932;","\x26#933;","\x26#934;","\x26#935;","\x26#936;","\x26#937;","\x26#945;","\x26#946;","\x26#947;","\x26#948;","\x26#949;","\x26#950;","\x26#951;","\x26#952;","\x26#953;","\x26#954;","\x26#955;","\x26#956;","\x26#957;","\x26#958;","\x26#959;","\x26#960;","\x26#961;","\x26#962;","\x26#963;","\x26#964;","\x26#965;","\x26#966;","\x26#967;","\x26#968;","\x26#969;","\x26#977;","\x26#978;","\x26#982;","\x26#8226;","\x26#8230;","\x26#8242;","\x26#8243;","\x26#8254;","\x26#8260;","\x26#8472;","\x26#8465;","\x26#8476;","\x26#8482;","\x26#8501;","\x26#8592;","\x26#8593;","\x26#8594;","\x26#8595;","\x26#8596;","\x26#8629;","\x26#8656;","\x26#8657;","\x26#8658;","\x26#8659;","\x26#8660;","\x26#8704;","\x26#8706;","\x26#8707;","\x26#8709;","\x26#8711;","\x26#8712;","\x26#8713;","\x26#8715;","\x26#8719;","\x26#8722;","\x26#8727;","\x26#8730;","\x26#8733;","\x26#8734;","\x26#8736;","\x26#8869;","\x26#8870;","\x26#8745;","\x26#8746;","\x26#8747;","\x26#8756;","\x26#8764;","\x26#8773;","\x26#8800;","\x26#8801;","\x26#8804;","\x26#8805;","\x26#8834;","\x26#8835;","\x26#8836;","\x26#8838;","\x26#8839;","\x26#8853;","\x26#8855;","\x26#8901;","\x26#8968;","\x26#8969;","\x26#8970;","\x26#8971;","\x26#9001;","\x26#9002;","\x26#9674;","\x26#9824;","\x26#9827;","\x26#9829;","\x26#9830;","length","\x3Ctr\x3E","\x26","\x26amp;","\x3Ctd style=\x27align: left; height: 20; font-size: 12px; \x27 bgcolor=white width=\x2718\x27 align=center onClick=\x27getchar(this)\x27 onmouseover=\x27spcOver(this)\x27 onmouseout=\x27spcOut(this)\x27 title=\x27"," - ","\x27 \x3E","\x3C/td\x3E","\x3C/tr\x3E"];var arr=[OxO8fc2[0x0],OxO8fc2[0x1],OxO8fc2[0x2],OxO8fc2[0x3],OxO8fc2[0x4],OxO8fc2[0x5],OxO8fc2[0x6],OxO8fc2[0x7],OxO8fc2[0x8],OxO8fc2[0x9],OxO8fc2[0xa],OxO8fc2[0xb],OxO8fc2[0xc],OxO8fc2[0xd],OxO8fc2[0xe],OxO8fc2[0xf],OxO8fc2[0x10],OxO8fc2[0x11],OxO8fc2[0x12],OxO8fc2[0x13],OxO8fc2[0x14],OxO8fc2[0x15],OxO8fc2[0x16],OxO8fc2[0x17],OxO8fc2[0x18],OxO8fc2[0x19],OxO8fc2[0x1a],OxO8fc2[0x1b],OxO8fc2[0x1c],OxO8fc2[0x1d],OxO8fc2[0x1e],OxO8fc2[0x1f],OxO8fc2[0x20],OxO8fc2[0x21],OxO8fc2[0x22],OxO8fc2[0x23],OxO8fc2[0x24],OxO8fc2[0x25],OxO8fc2[0x26],OxO8fc2[0x27],OxO8fc2[0x28],OxO8fc2[0x29],OxO8fc2[0x2a],OxO8fc2[0x2b],OxO8fc2[0x2c],OxO8fc2[0x2d],OxO8fc2[0x2e],OxO8fc2[0x2f],OxO8fc2[0x30],OxO8fc2[0x31],OxO8fc2[0x32],OxO8fc2[0x33],OxO8fc2[0x34],OxO8fc2[0x35],OxO8fc2[0x36],OxO8fc2[0x37],OxO8fc2[0x38],OxO8fc2[0x39],OxO8fc2[0x3a],OxO8fc2[0x3b],OxO8fc2[0x3c],OxO8fc2[0x3d],OxO8fc2[0x3e],OxO8fc2[0x3f],OxO8fc2[0x40],OxO8fc2[0x41],OxO8fc2[0x42],OxO8fc2[0x43],OxO8fc2[0x44],OxO8fc2[0x45],OxO8fc2[0x46],OxO8fc2[0x47],OxO8fc2[0x48],OxO8fc2[0x49],OxO8fc2[0x4a],OxO8fc2[0x4b],OxO8fc2[0x4c],OxO8fc2[0x4d],OxO8fc2[0x4e],OxO8fc2[0x4f],OxO8fc2[0x50],OxO8fc2[0x51],OxO8fc2[0x52],OxO8fc2[0x53],OxO8fc2[0x54],OxO8fc2[0x54],OxO8fc2[0x55],OxO8fc2[0x56],OxO8fc2[0x57],OxO8fc2[0x58],OxO8fc2[0x59],OxO8fc2[0x5a],OxO8fc2[0x5b],OxO8fc2[0x5c],OxO8fc2[0x5d],OxO8fc2[0x5e],OxO8fc2[0x5f],OxO8fc2[0x60],OxO8fc2[0x61],OxO8fc2[0x61],OxO8fc2[0x62],OxO8fc2[0x63],OxO8fc2[0x64],OxO8fc2[0x65],OxO8fc2[0x66],OxO8fc2[0x67],OxO8fc2[0x68],OxO8fc2[0x69],OxO8fc2[0x6a],OxO8fc2[0x6b],OxO8fc2[0x6c],OxO8fc2[0x5a],OxO8fc2[0x6d],OxO8fc2[0x6e],OxO8fc2[0x6f],OxO8fc2[0x70],OxO8fc2[0x71],OxO8fc2[0x72],OxO8fc2[0x73],OxO8fc2[0x74],OxO8fc2[0x75],OxO8fc2[0x76],OxO8fc2[0x77],OxO8fc2[0x78]];for(var i=0x0;i<arr[OxO8fc2[0x79]];i+=tds){ document.write(OxO8fc2[0x7a]) ;for(var j=i;j<i+tds&&j<arr[OxO8fc2[0x79]];j++){var n=arr[j]; document.write(OxO8fc2[0x7d]+n+OxO8fc2[0x7e]+n.replace(OxO8fc2[0x7b],OxO8fc2[0x7c])+OxO8fc2[0x7f]) ; document.write(n) ; document.write(OxO8fc2[0x80]) ;} ; document.write(OxO8fc2[0x81]) ;} ;
								</SCRIPT>
							</TABLE>
							<br>	
						</fieldset>
					</td>
				</tr>
				<tr>
					<td align="right">
						<BUTTON style="FONT-SIZE: x-small; VERTICAL-ALIGN: middle; CURSOR: hand; FONT-FAMILY: MS Sans Serif"
							type="reset" onclick="cancel()" style="width:80px">[[Cancel]] </BUTTON>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
