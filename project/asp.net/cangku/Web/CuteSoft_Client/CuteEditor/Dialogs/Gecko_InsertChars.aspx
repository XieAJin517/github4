<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<HTML>
	<head>
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
		<link rel="stylesheet" href='style.css'>
		<script src=dialog.js></script><script src=../_shared.js></script>
		<script language="javascript">
		var OxO4527=["dialogArguments","availWidth","availHeight","","\x3Ctr\x3E","\x3Ctd style=\x27align: left; height: 20; font-size: 12px; \x27 bgcolor=white width=\x2718\x27 align=center onClick=\x27getchar(this)\x27 onmouseover=\x27spcOver(this)\x27 onmouseout=\x27spcOut(this)\x27 title=\x27","\x27 \x3E","\x26#",";","\x3C/td\x3E","\x3C/tr\x3E","background","style","#0A246A","color","white","black","Verdana","innerHTML","Unicode","\x3CFONT CLASS=\x27UNICODE\x27\x3E","\x3Cspan style=\x27font-family:","\x27\x3E","\x3C/span\x3E"];var editor=top[OxO4527[0x0]]; window.resizeTo(0x1cc,0x190) ; window.moveTo((screen[OxO4527[0x1]]-0x1cc)/0x2,(screen[OxO4527[0x2]]-0x190)/0x2) ;var tds=0x16; function writeChars(){var Ox1f=OxO4527[0x3];for(var i=0x21;i<0x100;){ document.write(OxO4527[0x4]) ;for(var j=0x0;j<=tds;j++){ document.write(OxO4527[0x5]+i+OxO4527[0x6]) ; document.write(OxO4527[0x7]+i+OxO4527[0x8]) ; document.write(OxO4527[0x9]) ; i++ ;} ; document.write(OxO4527[0xa]) ;} ;}  ; function spcOver(Ox2f5){ Ox2f5[OxO4527[0xc]][OxO4527[0xb]]=OxO4527[0xd] ; Ox2f5[OxO4527[0xc]][OxO4527[0xe]]=OxO4527[0xf] ;}  ; function spcOut(Ox2f5){ Ox2f5[OxO4527[0xc]][OxO4527[0xb]]=OxO4527[0xf] ; Ox2f5[OxO4527[0xc]][OxO4527[0xe]]=OxO4527[0x10] ;}  ; function getchar(obj){var h;var Ox4bf=getFontValue()||OxO4527[0x11];if(!obj[OxO4527[0x12]]){return ;} ; h=obj[OxO4527[0x12]] ;if(Ox4bf==OxO4527[0x13]){ h=OxO4527[0x14]+obj[OxO4527[0x12]]+OxO4527[0x3] ;} else {if(Ox4bf!=OxO4527[0x11]){ h=OxO4527[0x15]+Ox4bf+OxO4527[0x16]+obj[OxO4527[0x12]]+OxO4527[0x17] ;} ;} ; editor.PasteHTML(h) ; top.close() ;}  ; function cancel(){ top.close() ;}  ;
		</script>
	</HEAD>
	<body bgcolor="#d7d3cc">
			<table border="0" cellspacing="2" cellpadding="2" width="99%" align="center">
				<tr style="display:none">
					<td class="normal">
						[[FontName]]: <input type="radio" onpropertychange="sel_font_change()" id="selfont1" name="selfont" value=""
							checked><label for="selfont1">[[Default]]</label> <input type="radio" onpropertychange="sel_font_change()" id="selfont2" name="selfont" value="webdings"><label for="selfont2">Webdings</label>
						<input type="radio" onpropertychange="sel_font_change()" id="selfont3" name="selfont" value="wingdings"><label for="selfont3">Wingdings</label>
						<input type="radio" onpropertychange="sel_font_change()" id="selfont4" name="selfont" value="symbol"><label for="selfont4">Symbol</label>
						<input type="radio" onpropertychange="sel_font_change()" id="selfont5" name="selfont" value="Unicode"><label for="selfont5">Unicode</label>
						<script>
						var OxO7d25=["selfont","length","checked","value","Verdana","display","style","charstable1","Unicode","block","none","charstable2","fontFamily"]; function getFontValue(){var coll=document.getElementsByName(OxO7d25[0x0]);for(var i=0x0;i<coll[OxO7d25[0x1]];i++){if(coll[i][OxO7d25[0x2]]){return coll[i][OxO7d25[0x3]];} ;} ;}  ; function sel_font_change(){var Ox4c4=getFontValue()||OxO7d25[0x4]; document.getElementById(OxO7d25[0x7])[OxO7d25[0x6]][OxO7d25[0x5]]=(Ox4c4!=OxO7d25[0x8]?OxO7d25[0x9]:OxO7d25[0xa]) ; document.getElementById(OxO7d25[0xb])[OxO7d25[0x6]][OxO7d25[0x5]]=(Ox4c4==OxO7d25[0x8]?OxO7d25[0x9]:OxO7d25[0xa]) ; document.getElementById(OxO7d25[0x7])[OxO7d25[0x6]][OxO7d25[0xc]]=Ox4c4 ;if(Ox4c4==OxO7d25[0x8]){} ;}  ;
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
								var OxOec9a=[]; writeChars() ;
								</SCRIPT>
							</TABLE>
							<TABLE id="charstable2" width="95%" height="222" cellspacing="1" cellpadding="1" border="0"
								bordercolor="dimgray" align="center" bgcolor="dimgray" style="FONT-FAMILY: Verdana;display:none;">
								<SCRIPT>
								var OxO88b0=["\x26#402;","\x26#913;","\x26#914;","\x26#915;","\x26#916;","\x26#917;","\x26#918;","\x26#919;","\x26#920;","\x26#921;","\x26#922;","\x26#923;","\x26#924;","\x26#925;","\x26#926;","\x26#927;","\x26#928;","\x26#929;","\x26#931;","\x26#932;","\x26#933;","\x26#934;","\x26#935;","\x26#936;","\x26#937;","\x26#945;","\x26#946;","\x26#947;","\x26#948;","\x26#949;","\x26#950;","\x26#951;","\x26#952;","\x26#953;","\x26#954;","\x26#955;","\x26#956;","\x26#957;","\x26#958;","\x26#959;","\x26#960;","\x26#961;","\x26#962;","\x26#963;","\x26#964;","\x26#965;","\x26#966;","\x26#967;","\x26#968;","\x26#969;","\x26#977;","\x26#978;","\x26#982;","\x26#8226;","\x26#8230;","\x26#8242;","\x26#8243;","\x26#8254;","\x26#8260;","\x26#8472;","\x26#8465;","\x26#8476;","\x26#8482;","\x26#8501;","\x26#8592;","\x26#8593;","\x26#8594;","\x26#8595;","\x26#8596;","\x26#8629;","\x26#8656;","\x26#8657;","\x26#8658;","\x26#8659;","\x26#8660;","\x26#8704;","\x26#8706;","\x26#8707;","\x26#8709;","\x26#8711;","\x26#8712;","\x26#8713;","\x26#8715;","\x26#8719;","\x26#8722;","\x26#8727;","\x26#8730;","\x26#8733;","\x26#8734;","\x26#8736;","\x26#8869;","\x26#8870;","\x26#8745;","\x26#8746;","\x26#8747;","\x26#8756;","\x26#8764;","\x26#8773;","\x26#8800;","\x26#8801;","\x26#8804;","\x26#8805;","\x26#8834;","\x26#8835;","\x26#8836;","\x26#8838;","\x26#8839;","\x26#8853;","\x26#8855;","\x26#8901;","\x26#8968;","\x26#8969;","\x26#8970;","\x26#8971;","\x26#9001;","\x26#9002;","\x26#9674;","\x26#9824;","\x26#9827;","\x26#9829;","\x26#9830;","length","\x3Ctr\x3E","\x26","\x26amp;","\x3Ctd style=\x27align: left; height: 20; font-size: 12px; \x27 bgcolor=white width=\x2718\x27 align=center onClick=\x27getchar(this)\x27 onmouseover=\x27spcOver(this)\x27 onmouseout=\x27spcOut(this)\x27 title=\x27"," - ","\x27 \x3E","\x3C/td\x3E","\x3C/tr\x3E"];var arr=[OxO88b0[0x0],OxO88b0[0x1],OxO88b0[0x2],OxO88b0[0x3],OxO88b0[0x4],OxO88b0[0x5],OxO88b0[0x6],OxO88b0[0x7],OxO88b0[0x8],OxO88b0[0x9],OxO88b0[0xa],OxO88b0[0xb],OxO88b0[0xc],OxO88b0[0xd],OxO88b0[0xe],OxO88b0[0xf],OxO88b0[0x10],OxO88b0[0x11],OxO88b0[0x12],OxO88b0[0x13],OxO88b0[0x14],OxO88b0[0x15],OxO88b0[0x16],OxO88b0[0x17],OxO88b0[0x18],OxO88b0[0x19],OxO88b0[0x1a],OxO88b0[0x1b],OxO88b0[0x1c],OxO88b0[0x1d],OxO88b0[0x1e],OxO88b0[0x1f],OxO88b0[0x20],OxO88b0[0x21],OxO88b0[0x22],OxO88b0[0x23],OxO88b0[0x24],OxO88b0[0x25],OxO88b0[0x26],OxO88b0[0x27],OxO88b0[0x28],OxO88b0[0x29],OxO88b0[0x2a],OxO88b0[0x2b],OxO88b0[0x2c],OxO88b0[0x2d],OxO88b0[0x2e],OxO88b0[0x2f],OxO88b0[0x30],OxO88b0[0x31],OxO88b0[0x32],OxO88b0[0x33],OxO88b0[0x34],OxO88b0[0x35],OxO88b0[0x36],OxO88b0[0x37],OxO88b0[0x38],OxO88b0[0x39],OxO88b0[0x3a],OxO88b0[0x3b],OxO88b0[0x3c],OxO88b0[0x3d],OxO88b0[0x3e],OxO88b0[0x3f],OxO88b0[0x40],OxO88b0[0x41],OxO88b0[0x42],OxO88b0[0x43],OxO88b0[0x44],OxO88b0[0x45],OxO88b0[0x46],OxO88b0[0x47],OxO88b0[0x48],OxO88b0[0x49],OxO88b0[0x4a],OxO88b0[0x4b],OxO88b0[0x4c],OxO88b0[0x4d],OxO88b0[0x4e],OxO88b0[0x4f],OxO88b0[0x50],OxO88b0[0x51],OxO88b0[0x52],OxO88b0[0x53],OxO88b0[0x54],OxO88b0[0x54],OxO88b0[0x55],OxO88b0[0x56],OxO88b0[0x57],OxO88b0[0x58],OxO88b0[0x59],OxO88b0[0x5a],OxO88b0[0x5b],OxO88b0[0x5c],OxO88b0[0x5d],OxO88b0[0x5e],OxO88b0[0x5f],OxO88b0[0x60],OxO88b0[0x61],OxO88b0[0x61],OxO88b0[0x62],OxO88b0[0x63],OxO88b0[0x64],OxO88b0[0x65],OxO88b0[0x66],OxO88b0[0x67],OxO88b0[0x68],OxO88b0[0x69],OxO88b0[0x6a],OxO88b0[0x6b],OxO88b0[0x6c],OxO88b0[0x5a],OxO88b0[0x6d],OxO88b0[0x6e],OxO88b0[0x6f],OxO88b0[0x70],OxO88b0[0x71],OxO88b0[0x72],OxO88b0[0x73],OxO88b0[0x74],OxO88b0[0x75],OxO88b0[0x76],OxO88b0[0x77],OxO88b0[0x78]];for(var i=0x0;i<arr[OxO88b0[0x79]];i+=tds){ document.write(OxO88b0[0x7a]) ;for(var j=i;j<i+tds&&j<arr[OxO88b0[0x79]];j++){var n=arr[j]; document.write(OxO88b0[0x7d]+n+OxO88b0[0x7e]+n.replace(OxO88b0[0x7b],OxO88b0[0x7c])+OxO88b0[0x7f]) ; document.write(n) ; document.write(OxO88b0[0x80]) ;} ; document.write(OxO88b0[0x81]) ;} ;
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
	</body>
</HTML>
