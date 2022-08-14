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
		<link rel="stylesheet" href='Safari_style.css'>
		<script language="javascript">		
			var OxOa40e=["availWidth","availHeight","","\x3Ctr\x3E","\x3Ctd style=\x27align: left; height: 20; font-size: 12px; \x27 bgcolor=white width=\x2718\x27 align=center onClick=\x27getchar(this)\x27 onmouseover=\x27spcOver(this)\x27 onmouseout=\x27spcOut(this)\x27 title=\x27","\x27 \x3E","\x26#",";","\x3C/td\x3E","\x3C/tr\x3E","background","style","#0A246A","color","white","black","Verdana","innerHTML","Unicode","\x3CFONT CLASS=\x27UNICODE\x27\x3E","\x3Cspan style=\x27font-family:","\x27\x3E","\x3C/span\x3E","dialogArguments","opener","editor","editdoc","Delete"]; window.resizeTo(0x1cc,0x190) ; window.moveTo((screen[OxOa40e[0x0]]-0x258)/0x2,(screen[OxOa40e[0x1]]-0x190)/0x2) ; window.focus() ;var tds=0x16; function writeChars(){var Ox1f=OxOa40e[0x2];for(var i=0x21;i<0x100;){ document.write(OxOa40e[0x3]) ;for(var j=0x0;j<=tds;j++){ document.write(OxOa40e[0x4]+i+OxOa40e[0x5]) ; document.write(OxOa40e[0x6]+i+OxOa40e[0x7]) ; document.write(OxOa40e[0x8]) ; i++ ;} ; document.write(OxOa40e[0x9]) ;} ;}  ; function spcOver(Ox2f5){ Ox2f5[OxOa40e[0xb]][OxOa40e[0xa]]=OxOa40e[0xc] ; Ox2f5[OxOa40e[0xb]][OxOa40e[0xd]]=OxOa40e[0xe] ;}  ; function spcOut(Ox2f5){ Ox2f5[OxOa40e[0xb]][OxOa40e[0xa]]=OxOa40e[0xe] ; Ox2f5[OxOa40e[0xb]][OxOa40e[0xd]]=OxOa40e[0xf] ;}  ; function getchar(obj){var Ox4bf=getFontValue()||OxOa40e[0x10];if(!obj[OxOa40e[0x11]]){return ;} ;var h=obj[OxOa40e[0x11]];if(Ox4bf==OxOa40e[0x12]){ h=OxOa40e[0x13]+obj[OxOa40e[0x11]]+OxOa40e[0x2] ;} else {if(Ox4bf!=OxOa40e[0x10]){ h=OxOa40e[0x14]+Ox4bf+OxOa40e[0x15]+obj[OxOa40e[0x11]]+OxOa40e[0x16] ;} ;} ;var obj=window[OxOa40e[0x18]][OxOa40e[0x17]];var editor=obj[OxOa40e[0x19]];var editdoc=obj[OxOa40e[0x1a]]; editdoc.execCommand(OxOa40e[0x1b],false,OxOa40e[0x2]) ; editor.PasteHTML(h) ; top.close() ;}  ; function cancel(){ top.close() ;}  ;
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
						var OxO9862=["selfont","length","checked","value","Verdana","display","style","charstable1","Unicode","block","none","charstable2","fontFamily"]; function getFontValue(){var coll=document.getElementsByName(OxO9862[0x0]);for(var i=0x0;i<coll[OxO9862[0x1]];i++){if(coll[i][OxO9862[0x2]]){return coll[i][OxO9862[0x3]];} ;} ;}  ; function sel_font_change(){var Ox4c4=getFontValue()||OxO9862[0x4]; document.getElementById(OxO9862[0x7])[OxO9862[0x6]][OxO9862[0x5]]=(Ox4c4!=OxO9862[0x8]?OxO9862[0x9]:OxO9862[0xa]) ; document.getElementById(OxO9862[0xb])[OxO9862[0x6]][OxO9862[0x5]]=(Ox4c4==OxO9862[0x8]?OxO9862[0x9]:OxO9862[0xa]) ; document.getElementById(OxO9862[0x7])[OxO9862[0x6]][OxO9862[0xc]]=Ox4c4 ;if(Ox4c4==OxO9862[0x8]){} ;}  ;
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
								var OxO4e5c=[]; writeChars() ;
								</SCRIPT>
							</TABLE>
							<TABLE id="charstable2" width="95%" height="222" cellspacing="1" cellpadding="1" border="0"
								bordercolor="dimgray" align="center" bgcolor="dimgray" style="FONT-FAMILY: Verdana;display:none;">
								<SCRIPT>
								var OxO774c=["\x26#402;","\x26#913;","\x26#914;","\x26#915;","\x26#916;","\x26#917;","\x26#918;","\x26#919;","\x26#920;","\x26#921;","\x26#922;","\x26#923;","\x26#924;","\x26#925;","\x26#926;","\x26#927;","\x26#928;","\x26#929;","\x26#931;","\x26#932;","\x26#933;","\x26#934;","\x26#935;","\x26#936;","\x26#937;","\x26#945;","\x26#946;","\x26#947;","\x26#948;","\x26#949;","\x26#950;","\x26#951;","\x26#952;","\x26#953;","\x26#954;","\x26#955;","\x26#956;","\x26#957;","\x26#958;","\x26#959;","\x26#960;","\x26#961;","\x26#962;","\x26#963;","\x26#964;","\x26#965;","\x26#966;","\x26#967;","\x26#968;","\x26#969;","\x26#977;","\x26#978;","\x26#982;","\x26#8226;","\x26#8230;","\x26#8242;","\x26#8243;","\x26#8254;","\x26#8260;","\x26#8472;","\x26#8465;","\x26#8476;","\x26#8482;","\x26#8501;","\x26#8592;","\x26#8593;","\x26#8594;","\x26#8595;","\x26#8596;","\x26#8629;","\x26#8656;","\x26#8657;","\x26#8658;","\x26#8659;","\x26#8660;","\x26#8704;","\x26#8706;","\x26#8707;","\x26#8709;","\x26#8711;","\x26#8712;","\x26#8713;","\x26#8715;","\x26#8719;","\x26#8722;","\x26#8727;","\x26#8730;","\x26#8733;","\x26#8734;","\x26#8736;","\x26#8869;","\x26#8870;","\x26#8745;","\x26#8746;","\x26#8747;","\x26#8756;","\x26#8764;","\x26#8773;","\x26#8800;","\x26#8801;","\x26#8804;","\x26#8805;","\x26#8834;","\x26#8835;","\x26#8836;","\x26#8838;","\x26#8839;","\x26#8853;","\x26#8855;","\x26#8901;","\x26#8968;","\x26#8969;","\x26#8970;","\x26#8971;","\x26#9001;","\x26#9002;","\x26#9674;","\x26#9824;","\x26#9827;","\x26#9829;","\x26#9830;","length","\x3Ctr\x3E","\x26","\x26amp;","\x3Ctd style=\x27align: left; height: 20; font-size: 12px; \x27 bgcolor=white width=\x2718\x27 align=center onClick=\x27getchar(this)\x27 onmouseover=\x27spcOver(this)\x27 onmouseout=\x27spcOut(this)\x27 title=\x27"," - ","\x27 \x3E","\x3C/td\x3E","\x3C/tr\x3E"];var arr=[OxO774c[0x0],OxO774c[0x1],OxO774c[0x2],OxO774c[0x3],OxO774c[0x4],OxO774c[0x5],OxO774c[0x6],OxO774c[0x7],OxO774c[0x8],OxO774c[0x9],OxO774c[0xa],OxO774c[0xb],OxO774c[0xc],OxO774c[0xd],OxO774c[0xe],OxO774c[0xf],OxO774c[0x10],OxO774c[0x11],OxO774c[0x12],OxO774c[0x13],OxO774c[0x14],OxO774c[0x15],OxO774c[0x16],OxO774c[0x17],OxO774c[0x18],OxO774c[0x19],OxO774c[0x1a],OxO774c[0x1b],OxO774c[0x1c],OxO774c[0x1d],OxO774c[0x1e],OxO774c[0x1f],OxO774c[0x20],OxO774c[0x21],OxO774c[0x22],OxO774c[0x23],OxO774c[0x24],OxO774c[0x25],OxO774c[0x26],OxO774c[0x27],OxO774c[0x28],OxO774c[0x29],OxO774c[0x2a],OxO774c[0x2b],OxO774c[0x2c],OxO774c[0x2d],OxO774c[0x2e],OxO774c[0x2f],OxO774c[0x30],OxO774c[0x31],OxO774c[0x32],OxO774c[0x33],OxO774c[0x34],OxO774c[0x35],OxO774c[0x36],OxO774c[0x37],OxO774c[0x38],OxO774c[0x39],OxO774c[0x3a],OxO774c[0x3b],OxO774c[0x3c],OxO774c[0x3d],OxO774c[0x3e],OxO774c[0x3f],OxO774c[0x40],OxO774c[0x41],OxO774c[0x42],OxO774c[0x43],OxO774c[0x44],OxO774c[0x45],OxO774c[0x46],OxO774c[0x47],OxO774c[0x48],OxO774c[0x49],OxO774c[0x4a],OxO774c[0x4b],OxO774c[0x4c],OxO774c[0x4d],OxO774c[0x4e],OxO774c[0x4f],OxO774c[0x50],OxO774c[0x51],OxO774c[0x52],OxO774c[0x53],OxO774c[0x54],OxO774c[0x54],OxO774c[0x55],OxO774c[0x56],OxO774c[0x57],OxO774c[0x58],OxO774c[0x59],OxO774c[0x5a],OxO774c[0x5b],OxO774c[0x5c],OxO774c[0x5d],OxO774c[0x5e],OxO774c[0x5f],OxO774c[0x60],OxO774c[0x61],OxO774c[0x61],OxO774c[0x62],OxO774c[0x63],OxO774c[0x64],OxO774c[0x65],OxO774c[0x66],OxO774c[0x67],OxO774c[0x68],OxO774c[0x69],OxO774c[0x6a],OxO774c[0x6b],OxO774c[0x6c],OxO774c[0x5a],OxO774c[0x6d],OxO774c[0x6e],OxO774c[0x6f],OxO774c[0x70],OxO774c[0x71],OxO774c[0x72],OxO774c[0x73],OxO774c[0x74],OxO774c[0x75],OxO774c[0x76],OxO774c[0x77],OxO774c[0x78]];for(var i=0x0;i<arr[OxO774c[0x79]];i+=tds){ document.write(OxO774c[0x7a]) ;for(var j=i;j<i+tds&&j<arr[OxO774c[0x79]];j++){var n=arr[j]; document.write(OxO774c[0x7d]+n+OxO774c[0x7e]+n.replace(OxO774c[0x7b],OxO774c[0x7c])+OxO774c[0x7f]) ; document.write(n) ; document.write(OxO774c[0x80]) ;} ; document.write(OxO774c[0x81]) ;} ;
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
