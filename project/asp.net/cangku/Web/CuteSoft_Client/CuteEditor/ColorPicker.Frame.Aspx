<%@ Page Language=C# Inherits="CuteEditor.EditorCulturePage" %>
<%
//FEATURE:color picker
%>
<html>
	<head>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)">
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)">
		<link rel="stylesheet" href='Dialogs/style.css'>
		<title>[[MoreColors]] 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</title>
		<script>
		var OxO5002=["0","FF","GetH","GetS","GetB","toString","valueOf","_h","r","g","b","_s","_b","#","","length","\x3Ctable bgColor=","\x3E","backgroundColor","style","bgColor","0x","\x3Ctd style=\x27width:","px;height:","px;\x27 onmouseup=\x27YSUp(this)\x27 onmousedown=\x27YSDown(this)\x27 onmousemove=\x27YSMove(this)\x27\x3E\x3C/td\x3E","\x3Ctr\x3E","\x3C/tr\x3E","\x3Ctr\x3E\x3Ctd style=\x27width:32px;height:","px;\x27 onmouseup=\x27ZUp(this)\x27 onmousedown=\x27ZDown(this)\x27 onmousemove=\x27ZMove(this)\x27\x3E\x3C/td\x3E\x3C/tr\x3E"];var yxExponent=parseInt('<%=Request.QueryString["Quality"]%>')||0x5;var zExponent=0x7;var yxcount=Math.pow(0x2,yxExponent);var zcount=Math.pow(0x2,zExponent);var updatedelay=yxcount*yxcount/0x40;var usesafe=true; function NeedSafe(Ox9){if(!usesafe){return Math.floor(Math.max(0x0,Math.min(0xff,Ox9)));} ;var r=0x33;return Math.floor(Math.max(0x0,Math.min(0xff,Math.round(Ox9/r)*r)));}  ;var rgbhexs=[]; InitRgbVars() ; function InitRgbVars(){for(var i=0x0;i<=0x100;i++){ rgbhexs[i]=Oxe(i) ;} ; function Oxe(n){if(n<0x10){return OxO5002[0x0]+n.toString(0x10).toUpperCase();} ;if(n>=0x100){return OxO5002[0x1];} ;return n.toString(0x10).toUpperCase();}  ;}  ; function RgbClass(r,Ox11,Ox12){var obj={r:r,g:Ox11,b:Ox12}; obj[OxO5002[0x2]]=RgbClassGetH ; obj[OxO5002[0x3]]=RgbClassGetS ; obj[OxO5002[0x4]]=RgbClassGetB ; obj[OxO5002[0x6]]=obj[OxO5002[0x5]]=RgbClassToString ;return obj;}  ; function RgbClassGetH(){if(this[OxO5002[0x7]]!=null){return this[OxO5002[0x7]];} ;return this[OxO5002[0x7]]=RgbClassGetH_Internal(this);}  ; function RgbClassGetH_Internal(Ox16){var Ox17=Math.max(Math.max(Ox16[OxO5002[0x8]],Ox16.g),Ox16.b);if(Ox17==0x0){return 0x0;} ;var r=Ox16[OxO5002[0x8]]*0x100/Ox17;var Ox11=Ox16[OxO5002[0x9]]*0x100/Ox17;var Ox12=Ox16[OxO5002[0xa]]*0x100/Ox17; Ox17=0x100 ;var Ox18=Math.min(Math.min(r,Ox11),Ox12);if(Ox17==Ox18){return 0x0;} ;if(r==Ox18){ r=0x0 ;} ;if(Ox11==Ox18){ Ox11=0x0 ;} ;if(Ox12==Ox18){ Ox12=0x0 ;} ;var Ox19=0x100;if(r!=0x0&&r!=0x100){ Ox19=r ;} ;if(Ox11!=0x0&&Ox11!=0x100){ Ox19=Ox11 ;} ;if(Ox12!=0x0&&Ox12!=0x100){ Ox19=Ox12 ;} ;var Ox1a=Ox17*(Ox19-Ox18)/(Ox17-Ox18);if(r!=0x0&&r!=0x100){ r=Ox1a ;} ;if(Ox11!=0x0&&Ox11!=0x100){ Ox11=Ox1a ;} ;if(Ox12!=0x0&&Ox12!=0x100){ Ox12=Ox1a ;} ;if(r==0x0){if(Ox11==0x100){return 0x81-(0x100-Ox12)/0x6;} else {return 0x80+(0x100-Ox11)/0x6;} ;} ;if(Ox11==0x0){if(Ox12==0x100){return 0xd6-(0x100-r)/0x6;} else {return 0xd6+(0x100-Ox12)/0x6;} ;} ;if(Ox12==0x0){if(r==0x100){return 0x2b-(0x100-Ox11)/0x6;} else {return 0x2b+(0x100-r)/0x6;} ;} ;}  ; function RgbClassGetS(){if(this[OxO5002[0xb]]!=null){return this[OxO5002[0xb]];} ;if(this[OxO5002[0x8]]==0x0||this[OxO5002[0x9]]==0x0||this[OxO5002[0xa]]==0x0){if(this[OxO5002[0x8]]==0x0&&this[OxO5002[0x9]]==0x0&&this[OxO5002[0xa]]==0x0){return this[OxO5002[0xb]]=0x0;} ;return this[OxO5002[0xb]]=0x64;} ;var Ox17=Math.max(Math.max(this[OxO5002[0x8]],this.g),this.b);var Ox18=Math.min(Math.min(this[OxO5002[0x8]],this.g),this.b);return this[OxO5002[0xb]]=0x64*(Ox17-Ox18)/Ox17;}  ; function RgbClassGetB(){if(this[OxO5002[0xc]]!=null){return this[OxO5002[0xc]];} ;return this[OxO5002[0xc]]=0x64*Math.max(Math.max(this[OxO5002[0x8]],this.g),this.b)/0x100;}  ; function RgbClassToString(){return OxO5002[0xd]+rgbhexs[NeedSafe(this.r)]+rgbhexs[NeedSafe(this.g)]+rgbhexs[NeedSafe(this.b)];}  ; function ParseRgb(Ox1f){if(!Ox1f){return null;} ; Ox1f=Ox1f+OxO5002[0xe] ;if(Ox1f[OxO5002[0xf]]==0x0){return null;} ;if(Ox1f.charAt(0x0)!=OxO5002[0xd]||Ox1f[OxO5002[0xf]]!=0x7){var Ox20=document.createElement(OxO5002[0x10]+Ox1f+OxO5002[0x11]);try{ Ox20[OxO5002[0x13]][OxO5002[0x12]]=Ox1f ;} catch(x){return null;} ; Ox1f=Ox20[OxO5002[0x14]]+OxO5002[0xe] ;if(Ox1f.charAt(0x0)!=OxO5002[0xd]||Ox1f[OxO5002[0xf]]!=0x7){return null;} ;} ;return  new RgbClass(parseInt(OxO5002[0x15]+Ox1f.substr(0x1,0x2)),parseInt(OxO5002[0x15]+Ox1f.substr(0x3,0x2)),parseInt(OxO5002[0x15]+Ox1f.substr(0x5,0x2)));}  ; function GetRgbOfH_GetV(i){ i=i%0x100 ;if(i<0x80){ i=0x100-i ;} ; i=(i-0x80)*0x2 ;if(i>0x100*0x2/0x3){return 0x100;} ;if(i<0x100/0x3){return 0x0;} ; i=(i-0x100/0x3)*0x3 ;return i;}  ; function GetRgbOfH(i){return  new RgbClass(GetRgbOfH_GetV(i),GetRgbOfH_GetV(i+0xab),GetRgbOfH_GetV(i+0x55));}  ; function GetRgbOfHsb(h,Ox25,Ox26){var r=GetRgbOfH_GetV(h)*Ox26/0x100;var Ox11=GetRgbOfH_GetV(h+0x100*0x2/0x3)*Ox26/0x100;var Ox12=GetRgbOfH_GetV(h+0x100/0x3)*Ox26/0x100;var Ox17=Math.max(r,Math.max(Ox11,Ox12));if(Ox17==0x0){return  new RgbClass(0x0,0x0,0x0);} ;var Ox19=Ox17;if(r!=0x0&&r!=Ox17){ Ox19=r ;} ;if(Ox11!=0x0&&Ox11!=Ox17){ Ox19=Ox11 ;} ;if(Ox12!=0x0&&Ox12!=Ox17){ Ox19=Ox12 ;} ;var Ox27=Ox17*(0x1-Ox25/0x100);var Ox1a=Ox17-(Ox17-Ox19)*(Ox17-Ox27)/Ox17;if(r==Ox19){ r=Ox1a ;} ;if(Ox11==Ox19){ Ox11=Ox1a ;} ;if(Ox12==Ox19){ Ox12=Ox1a ;} ;if(r==0x0){ r=Ox27 ;} ;if(Ox11==0x0){ Ox11=Ox27 ;} ;if(Ox12==0x0){ Ox12=Ox27 ;} ;return  new RgbClass(r,Ox11,Ox12);}  ; function GetRgbByH(Ox29,Ox2a,Ox2b,Ox2c){var Ox2d=GetRgbOfH(0x100-Ox29);if(Ox2c){return Ox2d;} ;var Ox2e=(0x100-Ox2b)*(0x100-Ox2a)/0x100;var Ox2f=(0x100-Ox2a)*Ox2b/0x10000;return  new RgbClass(Ox2e+Ox2f*Ox2d[OxO5002[0x8]],Ox2e+Ox2f*Ox2d[OxO5002[0x9]],Ox2e+Ox2f*Ox2d.b);}  ; function GetXyzByH(Ox16){return {x:Ox16.GetS()*256/100,y:256-Ox16.GetB()*256/100,z:256-Ox16.GetH()};}  ; function GetRgbByS(Ox29,Ox2a,Ox2b,Ox2c){return GetRgbOfHsb(Ox2b,0x100-Ox29,0x100-Ox2a);}  ; function GetXyzByS(Ox16){return {x:Ox16.GetH(),y:256-Ox16.GetB()*256/100,z:256-Ox16.GetS()*256/100};}  ; function GetRgbByB(Ox29,Ox2a,Ox2b,Ox2c){return GetRgbOfHsb(Ox2b,0x100-Ox2a,0x100-Ox29);}  ; function GetXyzByB(Ox16){return {x:Ox16.GetH(),y:256-Ox16.GetS()*256/100,z:256-Ox16.GetB()*256/100};}  ; function GetRgbByRed(Ox29,Ox2a,Ox2b,Ox2c){return  new RgbClass(0x100-Ox29,0x100-Ox2a,Ox2b);}  ; function GetXyzByRed(Ox16){return {x:Ox16[OxO5002[10]],y:256-Ox16[OxO5002[9]],z:256-Ox16[OxO5002[8]]};}  ; function GetRgbByGreen(Ox29,Ox2a,Ox2b,Ox2c){return  new RgbClass(0x100-Ox2a,0x100-Ox29,Ox2b);}  ; function GetXyzByGreen(Ox16){return {x:Ox16[OxO5002[10]],y:256-Ox16[OxO5002[8]],z:256-Ox16[OxO5002[9]]};}  ; function GetRgbByBlue(Ox29,Ox2a,Ox2b,Ox2c){return  new RgbClass(Ox2b,0x100-Ox2a,0x100-Ox29);}  ; function GetXyzByBlue(Ox16){return {x:Ox16[OxO5002[8]],y:256-Ox16[OxO5002[9]],z:256-Ox16[OxO5002[10]]};}  ; function WriteYSTable(){var Ox25=OxO5002[0x16]+(0x100/yxcount)+OxO5002[0x17]+(0xe6/yxcount)+OxO5002[0x18];var Ox3c=Ox25;for(var i=0x0;i<yxExponent;i++){ Ox3c+=Ox3c ;} ; Ox25+=Ox3c ; Ox25=OxO5002[0x19]+Ox25+OxO5002[0x1a] ; Ox3c=Ox25 ;for(var i=0x0;i<yxExponent;i++){ Ox3c+=Ox3c ;} ; Ox25+=Ox3c ; document.write(Ox25) ;}  ; function WriteZTable(){var Ox25=OxO5002[0x1b]+(0xff/zcount)+OxO5002[0x1c];var Ox3e=Ox25;for(var i=0x0;i<zExponent;i++){ Ox3e+=Ox3e ;} ; Ox25+=Ox3e ; document.write(Ox25) ;}  ;
		</script>
		<style>
		body
		{
			padding:4px;
			border:0x;
		}
		</style>
	</head>
	<body style="margin:0px;padding:4px;overflow:hidden;">
		<table id="table1" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td style="width:256px">
					<table id="yxtable" onselectstart="return false;" cellspacing="0" cellpadding="0" border="0"
						style='border:1.5pt inset;background-color:black;height:256px;'>
						<script>
							var OxOba7e=[]; WriteYSTable() ;
						</script>
					</table>
				</td>
				<td id="tdzl" valign="top" style="font-size:9px;font-family:webdings;padding-left:4px;padding-right:0px;text-align:right;">4</td>
				<td valign='top' style="padding-top:6px; width:32px;">
					<table id="ztable" onselectstart="return false;" cellspacing="0" cellpadding="0" border="0"
						style='border:1.5pt inset;background-color:black;height:252px;'>
						<script>
					var OxO9e51=[]; WriteZTable() ;
						</script>
					</table>
				</td>
				<td id="tdzr" valign="top" style="font-size:9px;font-family:webdings;padding-left:4px;padding-left:0px;text-align:left;">3</td>
				<td valign='top'>
					<table border="0" cellspacing="2" cellpadding="0">
						<tr>
							<td colspan=3 align="center">
								<fieldset align="center" id="fieldsetUpload">
									<legend>
										[[Color]]
									</legend>
									<div id="divpreview"  style="width:80%;height:60px;border:1.5pt inset; Padding: 0 0 0 0;">
									</div>										
								</fieldset>
							</td>
							<td>
								&nbsp;&nbsp;<button id="btnok" style='width:70px'>[[OK]]</button> &nbsp; <br><br>
								&nbsp;&nbsp;<button id="btncc" style='width:70px'>[[Cancel]]</button>										
							</td>
						</tr>
						<tr>
							<td style="height:6px;"></td>
						</tr>
						<tr>
							<td><input type="radio" onclick="HandleUIChanged()" name="rd_mode" id="rd_hsb_h" value="hsb_h"></td>
							<td>
								H:</td>
							<td><input type="text" id="hsb_h" readonly='true' style="width:55px">
							</td>
						</tr>
						<tr>
							<td><input type="radio" onclick="HandleUIChanged()" name="rd_mode" id="rd_hsb_s" value="hsb_s"></td>
							<td>
								S:</td>
							<td><input type="text" id="hsb_s" readonly='true' style="width:55px">
							</td>
						</tr>
						<tr>
							<td><input type="radio" checked="true" onclick="HandleUIChanged()" name="rd_mode" id="rd_hsb_b"
									value="hsb_b"></td>
							<td>
								B:</td>
							<td><input type="text" id="hsb_b" readonly='true' style="width:55px">
							</td>
						</tr>
						<tr>
							<td style="height:6px;"></td>
						</tr>
						<tr>
							<td><input type="radio" onclick="HandleUIChanged()" name="rd_mode" id="rd_rgb_r" value="rgb_r"></td>
							<td>
								R:</td>
							<td><input type="text" id="rgb_r" style="width:55px">
							</td>
							<td><div id="scroll_rgb_r" style='height:15px;width:90px;overflow-x:scroll;overflow-y:hidden;'><div style='width:180px'></div>
								</div>
							</td>
						</tr>
						<tr>
							<td><input type="radio" onclick="HandleUIChanged()" name="rd_mode" id="rd_rgb_g" value="rgb_g"></td>
							<td>
								G:</td>
							<td><input type="text" id="rgb_g" style="width:55px">
							</td>
							<td><div id="scroll_rgb_g" style='height:15px;width:90px;overflow-x:scroll;overflow-y:hidden;'><div style='width:180px'></div>
								</div>
							</td>
						</tr>
						<tr>
							<td><input type="radio" onclick="HandleUIChanged()" name="rd_mode" id="rd_rgb_b" value="rgb_b"></td>
							<td>
								B:</td>
							<td><input type="text" id="rgb_b" style="width:55px">
							</td>
							<td>
								<div id="scroll_rgb_b" style='height:15px;width:90px;overflow-x:scroll;overflow-y:hidden;'>
									<div style='width:180px'></div>
								</div>
							</td>
						</tr>
						<tr>
							<td style="height:6px;"></td>
						</tr>
						<tr>
							<td colspan="2">
								[[HTML]]:</td>
							<td><input type="text" id="val_v" style="width:55px">
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="5">
					<table width="98%" cellpadding=0 cellspacing=0>
						<tr>
							<td>
								<input type='checkbox' id='cb_safe' onchange='Update()' onclick='Update()'><label for='cb_safe'>[[OnlyWebColor]]</label>
							</td>
							<td>							
								[[Quality]]: <input type='radio' name="radio_qlt" id='radio_qlt_low' onchange='ChangeQuanlity()' onclick='ChangeQuanlity()'><label for='radio_qlt_low'>[[Low]]</label>
								<input type='radio' name="radio_qlt" id='radio_qlt_medium' onchange='ChangeQuanlity()'
									onclick='ChangeQuanlity()'><label for='radio_qlt_medium'>[[Medium]]</label> <input type='radio' name="radio_qlt" id='radio_qlt_high' onchange='ChangeQuanlity()' onclick='ChangeQuanlity()'><label for='radio_qlt_high'>[[High]]</label>
								<span style='display:none'><input type='radio' name="radio_qlt" id='radio_qlt_veryhigh' onchange='ChangeQuanlity()'
										onclick='ChangeQuanlity()'><label for='radio_qlt_veryhigh'>[[VeryHigh]]</label>
								</span>
							</td>
							<td align="right" style="padding-right:16px">
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>

<script>
var OxO24e7=["addEventListener","TABLE","INPUT","DIV","BUTTON","TD","length","id","var ","=document.getElementById(\x27","\x27)"];if(document[OxO24e7[0x0]]){var tagnamearr=[OxO24e7[0x1],OxO24e7[0x2],OxO24e7[0x3],OxO24e7[0x4],OxO24e7[0x5]];for(var tni=0x0;tni<tagnamearr[OxO24e7[0x6]];tni++){var tagname=tagnamearr[tni];var coll=document.getElementsByTagName(tagname);for(var i=0x0;i<coll[OxO24e7[0x6]];i++){var element=coll[i];if(element[OxO24e7[0x7]]){ eval(OxO24e7[0x8]+element[OxO24e7[0x7]]+OxO24e7[0x9]+element[OxO24e7[0x7]]+OxO24e7[0xa]) ;} ;} ;} ;} ;
</script>

<script>

var OxO905e=["checked","border","style","","x","y","z","paddingTop","value","backgroundColor","r","g","b","1px solid white","cells","rows","onmouseup","scrollLeft","clientWidth","scrollWidth","onchange","onscroll"];var GetRgbBy=GetRgbByH;var GetXyzBy=GetXyzByH;var selz=0x0;var sely=0x0;var selx=yxcount; currentrgb=GetRgbBy(selz*0x100/zcount,sely*0x100/yxcount,selx*0x100/yxcount) ;var yxs=[];var zs=[];var isupdating=false;var downz=false;var downyx=false;var update_timer=0x0;var needupdateyx=true;var needupdatez=true;var firebyscroll=false; function HandleUIChanged(Ox16){if(Ox16==null){ Ox16=currentrgb ;} ;if(rd_hsb_h[OxO905e[0x0]]){ GetXyzBy=GetXyzByH ;} ;if(rd_hsb_s[OxO905e[0x0]]){ GetXyzBy=GetXyzByS ;} ;if(rd_hsb_b[OxO905e[0x0]]){ GetXyzBy=GetXyzByB ;} ;if(rd_rgb_r[OxO905e[0x0]]){ GetXyzBy=GetXyzByRed ;} ;if(rd_rgb_g[OxO905e[0x0]]){ GetXyzBy=GetXyzByGreen ;} ;if(rd_rgb_b[OxO905e[0x0]]){ GetXyzBy=GetXyzByBlue ;} ; yxs[sely][selx][OxO905e[0x2]][OxO905e[0x1]]=OxO905e[0x3] ;var Ox57=GetXyzBy(Ox16); selx=Math.round(Ox57[OxO905e[0x4]]*yxcount/0x100) ; sely=Math.round(Ox57[OxO905e[0x5]]*yxcount/0x100) ; selz=Math.round(Ox57[OxO905e[0x6]]*zcount/0x100) ; Update(true) ;}  ; function OnUpdate(Ox16){}  ; function Update(Ox5a){ isupdating=true ;try{if(rd_hsb_h[OxO905e[0x0]]){ GetRgbBy=GetRgbByH ;} ;if(rd_hsb_s[OxO905e[0x0]]){ GetRgbBy=GetRgbByS ;} ;if(rd_hsb_b[OxO905e[0x0]]){ GetRgbBy=GetRgbByB ;} ;if(rd_rgb_r[OxO905e[0x0]]){ GetRgbBy=GetRgbByRed ;} ;if(rd_rgb_g[OxO905e[0x0]]){ GetRgbBy=GetRgbByGreen ;} ;if(rd_rgb_b[OxO905e[0x0]]){ GetRgbBy=GetRgbByBlue ;} ;var Ox2d=GetRgbBy(selz*0x100/zcount,sely*0x100/yxcount,selx*0x100/yxcount); currentrgb=Ox2d ;var Ox5b=Ox2d.toString(); tdzl[OxO905e[0x2]][OxO905e[0x7]]=tdzr[OxO905e[0x2]][OxO905e[0x7]]=selz*0x100/zcount ; hsb_h[OxO905e[0x8]]=Math.floor(Ox2d.GetH()) ; hsb_s[OxO905e[0x8]]=Math.round(Ox2d.GetS()) ; hsb_b[OxO905e[0x8]]=Math.round(Ox2d.GetB()) ; val_v[OxO905e[0x8]]=Ox5b ; divpreview[OxO905e[0x2]][OxO905e[0x9]]=Ox5b ; rgb_r[OxO905e[0x8]]=Math.floor(Ox2d.r) ; rgb_g[OxO905e[0x8]]=Math.floor(Ox2d.g) ; rgb_b[OxO905e[0x8]]=Math.floor(Ox2d.b) ;if(!firebyscroll){if(Math.abs(GetScrollValue(scroll_rgb_r)*0x100-Ox2d.r)>0x34){ SetScrollValue(scroll_rgb_r,Ox2d[OxO905e[0xa]]/0x100) ;} ;if(Math.abs(GetScrollValue(scroll_rgb_g)*0x100-Ox2d.g)>0x34){ SetScrollValue(scroll_rgb_g,Ox2d[OxO905e[0xb]]/0x100) ;} ;if(Math.abs(GetScrollValue(scroll_rgb_b)*0x100-Ox2d.b)>0x34){ SetScrollValue(scroll_rgb_b,Ox2d[OxO905e[0xc]]/0x100) ;} ;} ; OnUpdate(Ox2d) ; clearTimeout(update_timer) ; update_timer=setTimeout(UpdateInternal,Ox5a?0x1:updatedelay) ;} finally{ isupdating=false ;} ;}  ; function UpdateInternal(){ usesafe=cb_safe[OxO905e[0x0]] ; yxs[sely][selx][OxO905e[0x2]][OxO905e[0x1]]=OxO905e[0xd] ;if(needupdatez){for(var Ox29=0x0;Ox29<=zcount;Ox29++){ zs[Ox29][OxO905e[0x2]][OxO905e[0x9]]=GetRgbBy(Ox29*0x100/zcount,sely*0x100/yxcount,selx*0x100/yxcount,true).toString() ;} ;} ;if(needupdateyx){for(var Ox2a=0x0;Ox2a<=yxcount;Ox2a++){for(var Ox2b=0x0;Ox2b<=yxcount;Ox2b++){ yxs[Ox2a][Ox2b][OxO905e[0x2]][OxO905e[0x9]]=GetRgbBy(selz*0x100/zcount,Ox2a*0x100/yxcount,Ox2b*0x100/yxcount,false).toString() ;} ;} ;} ; needupdateyx=true ; needupdatez=true ;}  ; function Initialize(){for(var Ox2a=0x0;Ox2a<=yxcount;Ox2a++){var Ox5e=[];for(var Ox2b=0x0;Ox2b<=yxcount;Ox2b++){var Ox5f=yxtable[OxO905e[0xf]][Ox2a][OxO905e[0xe]][Ox2b]; Ox5f[OxO905e[0x4]]=Ox2b ; Ox5f[OxO905e[0x5]]=Ox2a ; Ox5e[Ox2b]=Ox5f ;} ; yxs[Ox2a]=Ox5e ;} ;for(var Ox29=0x0;Ox29<=zcount;Ox29++){var Ox5f=ztable[OxO905e[0xf]][Ox29][OxO905e[0xe]][0x0]; Ox5f[OxO905e[0x6]]=Ox29 ; zs[Ox29]=Ox5f ;} ; Update(true) ;}  ; document[OxO905e[0x10]]=function (){ downyx=false ; downz=false ;}  ; function YSDown(Ox5f){ downyx=true ; Update() ;}  ; function YSMove(Ox5f){if(downyx&&yxs[sely][selx]!=Ox5f){ yxs[sely][selx][OxO905e[0x2]][OxO905e[0x1]]=OxO905e[0x3] ; needupdateyx=false ; sely=Ox5f[OxO905e[0x5]] ; selx=Ox5f[OxO905e[0x4]] ; Update() ;} ;}  ; function YSUp(Ox5f){ yxs[sely][selx][OxO905e[0x2]][OxO905e[0x1]]=OxO905e[0x3] ; needupdateyx=false ; sely=Ox5f[OxO905e[0x5]] ; selx=Ox5f[OxO905e[0x4]] ; Update() ;}  ; function ZDown(Ox5f){ downz=true ;}  ; function ZMove(Ox5f){if(downz){ needupdatez=false ; selz=Ox5f[OxO905e[0x6]] ; Update() ;} ;}  ; function ZUp(Ox5f){ downz=false ; needupdatez=false ; selz=Ox5f[OxO905e[0x6]] ; Update() ;}  ; function GetScrollValue(Ox67){return Ox67[OxO905e[0x11]]/(Ox67[OxO905e[0x13]]-Ox67[OxO905e[0x12]]);}  ; function SetScrollValue(Ox67,Ox5b){ Ox67[OxO905e[0x11]]=Ox5b*(Ox67[OxO905e[0x13]]-Ox67[OxO905e[0x12]]) ;}  ; rgb_r[OxO905e[0x14]]=function (){if(isupdating){return ;} ; HandleUIChanged( new RgbClass(parseInt(rgb_r.value),parseInt(rgb_g.value),parseInt(rgb_b.value))) ;}  ; scroll_rgb_r[OxO905e[0x15]]=function (){if(isupdating){return ;} ;var Ox9=GetScrollValue(scroll_rgb_r); rgb_r[OxO905e[0x8]]=0x100*Ox9 ; firebyscroll=true ;try{ HandleUIChanged( new RgbClass(parseInt(rgb_r.value),parseInt(rgb_g.value),parseInt(rgb_b.value))) ;} finally{ firebyscroll=false ;} ;}  ; rgb_g[OxO905e[0x14]]=function (){if(isupdating){return ;} ; HandleUIChanged( new RgbClass(parseInt(rgb_r.value),parseInt(rgb_g.value),parseInt(rgb_b.value))) ;}  ; scroll_rgb_g[OxO905e[0x15]]=function (){if(isupdating){return ;} ;var Ox9=GetScrollValue(scroll_rgb_g); rgb_g[OxO905e[0x8]]=0x100*Ox9 ; firebyscroll=true ;try{ HandleUIChanged( new RgbClass(parseInt(rgb_r.value),parseInt(rgb_g.value),parseInt(rgb_b.value))) ;} finally{ firebyscroll=false ;} ;}  ; rgb_b[OxO905e[0x14]]=function (){if(isupdating){return ;} ; HandleUIChanged( new RgbClass(parseInt(rgb_r.value),parseInt(rgb_g.value),parseInt(rgb_b.value))) ;}  ; scroll_rgb_b[OxO905e[0x15]]=function (){if(isupdating){return ;} ;var Ox9=GetScrollValue(scroll_rgb_b); rgb_b[OxO905e[0x8]]=0x100*Ox9 ; firebyscroll=true ;try{ HandleUIChanged( new RgbClass(parseInt(rgb_r.value),parseInt(rgb_g.value),parseInt(rgb_b.value))) ;} finally{ firebyscroll=false ;} ;}  ; val_v[OxO905e[0x14]]=function (){if(isupdating){return ;} ;var Ox16=ParseRgb(val_v.value);if(Ox16!=null){ HandleUIChanged(Ox16) ;} ;}  ;
</script>
<script>
var OxO1412=["onload","dialogArguments","string","object","onchange","onkeydown","event","keyCode","returnValue","checked","href","ColorPicker.Frame.Aspx?settinghash=[[_setting_]]\x26Quality=","\x26[[DNN_Arg]]","onclick","value","backgroundColor","style","[[ValidColor]]"]; function OnUpdate1(Ox6b){}  ; function OnUpdate2(Ox16){ OnUpdate1(Ox16.toString()) ;}  ; window[OxO1412[0x0]]=function (){ Initialize() ;if(top[OxO1412[0x1]]){if( typeof (top[OxO1412[0x1]])==OxO1412[0x2]){ HandleUIChanged(ParseRgb(top.dialogArguments)) ;} else {if( typeof (top[OxO1412[0x1]])==OxO1412[0x3]){if(top[OxO1412[0x1]][OxO1412[0x4]]){ OnUpdate1=top[OxO1412[0x1]][OxO1412[0x4]] ; OnUpdate=OnUpdate2 ;} ; HandleUIChanged(ParseRgb(top[OxO1412[0x1]].color)) ;} ;} ;} ;}  ; document[OxO1412[0x5]]=function (Ox6d){ Ox6d=Ox6d||window[OxO1412[0x6]] ;if(Ox6d[OxO1412[0x7]]==0x1b){ top[OxO1412[0x8]]=false ; top.close() ;} ;}  ;switch(yxExponent){case 0x3: radio_qlt_low[OxO1412[0x9]]=true ;break ;case 0x4: radio_qlt_medium[OxO1412[0x9]]=true ;break ;case 0x5: radio_qlt_high[OxO1412[0x9]]=true ;break ;case 0x6: radio_qlt_veryhigh[OxO1412[0x9]]=true ;break ;;;;;} ; ChangeQuanlity=ChangeQuanlity2 ; function ChangeQuanlity(){}  ; function ChangeQuanlity2(){var Ox70=0x4;if(radio_qlt_low[OxO1412[0x9]]){ Ox70=0x3 ;} ;if(radio_qlt_medium[OxO1412[0x9]]){ Ox70=0x4 ;} ;if(radio_qlt_high[OxO1412[0x9]]){ Ox70=0x5 ;} ;if(radio_qlt_veryhigh[OxO1412[0x9]]){ Ox70=0x6 ;} ;if(Ox70!=yxExponent){ location[OxO1412[0xa]]=OxO1412[0xb]+Ox70+OxO1412[0xc] ;} ;}  ; btnok[OxO1412[0xd]]=function (){try{ divpreview[OxO1412[0x10]][OxO1412[0xf]]=val_v[OxO1412[0xe]] ;} catch(er){ alert(OxO1412[0x11]) ;return false;} ; top[OxO1412[0x8]]=val_v[OxO1412[0xe]] ; top.close() ;}  ; btncc[OxO1412[0xd]]=function (){ top[OxO1412[0x8]]=false ; top.close() ;}  ;
</script>
