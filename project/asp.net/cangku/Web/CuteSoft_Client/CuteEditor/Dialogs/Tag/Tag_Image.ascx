<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Insert]]</legend>
	<table class="normal">
		<tr>
			<td width=80>[[Url]]:</td>
			<td><input type="text" id="inp_src" style="width:250px"></td>
			<td><button id="btnbrowse">[[Browse]]</button></td>
		</tr>
		<tr>
			<td valign="middle" nowrap>[[Alternate]]:</td>
			<td colspan="2"><input type="text" id="AlternateText" size="40" NAME="AlternateText"></td>
		</tr>
		<tr>
			<td valign="middle" nowrap>[[longDesc]]:</td>
			<td colspan="2"><input type="text" id="longDesc" size="40" NAME="longDesc"><img src="../images/Accessibility.gif"  align="absMiddle" hspace="5"></td>
		</tr>
	</table>
</fieldset>
<table class="normal" cellpadding="0" cellspacing="0" >
	<tr>
		<td valign="top">
		<fieldset>
			<legend>[[Layout]]</legend>
				<table border="0" cellpadding="5" cellspacing="0" class="normal">
					<tr>
						<td>[[Alignment]]:</td>
						<td>
							<select NAME="ImgAlign" style="WIDTH : 80px" id="Align">
								<OPTION id="optNotSet" value="">[[Notset]]</OPTION>
								<OPTION id="optLeft" value="left">[[Left]]</OPTION>
								<OPTION id="optRight" value="right">[[Right]]</OPTION>
								<OPTION id="optTexttop" value="textTop">[[Texttop]]</OPTION>
								<OPTION id="optAbsMiddle" value="absMiddle">[[Absmiddle]]</OPTION>
								<OPTION id="optBaseline" value="baseline" selected>[[Baseline]]</OPTION>
								<OPTION id="optAbsBottom" value="absBottom">[[Absbottom]]</OPTION>
								<OPTION id="optBottom" value="bottom">[[Bottom]]</OPTION>
								<OPTION id="optMiddle" value="middle">[[Middle]]</OPTION>
								<OPTION id="optTop" value="top">[[Top]]</OPTION>
							</select>
						</td>
					</tr>
					<tr>
						<td nowrap>[[Bordersize]]:</td>
						<td>
							<INPUT TYPE="text" SIZE="2" NAME="Border" ONKEYPRESS="event.returnValue=IsDigit();" style="WIDTH : 80px" id="Border">
						</td>
					</tr>
					<tr>
						<td nowrap>[[Bordercolor]]:</td>
						<td nowrap>
							<input type="text" id="bordercolor" name="bordercolor" size="7" style="WIDTH:57px">
								<img src="../images/colorpicker.gif" id="bordercolor_Preview" align="absMiddle" style='BEHAVIOR:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'
								 oncolorchange="bordercolor.value=this.selectedColor; bordercolor.style.backgroundColor=this.selectedColor; bordercolor_Preview.style.backgroundColor=this.selectedColor">
						</td>
					</tr>
					<tr>
						<td nowrap>[[Width]]:</td>
						<td>
							<INPUT TYPE="text" SIZE="2" id="Width" rem-skipAutoFireChanged="1" ONKEYPRESS="event.returnValue=IsDigit();" style="WIDTH : 80px">
						</td>
					</tr>
					<tr>
						<td nowrap>[[Height]]:</td>
						<td>
							<INPUT TYPE="text" SIZE="2" id="Height" rem-skipAutoFireChanged="1" ONKEYPRESS="event.returnValue=IsDigit();" style="WIDTH : 80px">
						</td>
					</tr>
				</table>
		</fieldset>		
		<fieldset>
			<legend>[[Spacing]]</legend>
			<table border="0" cellpadding="2" cellspacing="0" class="normal">
				<tr>
					<td valign="middle" width="100">[[Horizontal]]:</td>
					<td><INPUT TYPE="text" SIZE="2" value="5" ONKEYPRESS="event.returnValue=IsDigit();" style="WIDTH:80px" id="HSpace"></td>
				</tr>
				<tr>
					<td valign="middle">[[Vertical]]:</td>
					<td><INPUT TYPE="text" SIZE="2" NAME="VSpace" ONKEYPRESS="event.returnValue=IsDigit();" style="WIDTH:80px" id="VSpace"></td>
				</tr>
			</table>
		</fieldset>
		</td>
		<td width=10 nowrap></td>
		<td valign="top">			
			<div id="outer" style="width:220px; height:220px"><img id="img_demo"></div>
		</td>
	</tr>
</table>
<script>

var OxOd436=["SelectImage.Aspx?settinghash=[[_setting_]]\x26type=gif,jpg,jpeg,png,bmp\x26file=","\x26[[DNN_Arg]]","[[SelectFileDialogOption]]","value","cssText","style","src","width","height","vspace","hspace","border","borderColor","backgroundColor","align","alt","longDesc","Please enter a valid number.","","keyCode","$1","inp_src","Width","Height"]; function btnbrowse.onclick(){var Ox74=showModalDialog(OxOd436[0x0]+escape(inp_src.value)+OxOd436[0x1],null,OxOd436[0x2]);if(Ox74){ inp_src[OxOd436[0x3]]=Ox74 ; Actualsize() ;} ;}  ; function UpdateState(){ img_demo[OxOd436[0x5]][OxOd436[0x4]]=element[OxOd436[0x5]][OxOd436[0x4]] ; img_demo.mergeAttributes(element) ;if(element[OxOd436[0x6]]){ img_demo[OxOd436[0x6]]=element[OxOd436[0x6]] ;} else { img_demo.removeAttribute(OxOd436[0x6]) ;} ;}  ; function SyncToView(){var src=element[OxOd436[0x6]];if(UseRelativeLinks&&BaseHref){ src=RemoveServerNamesFromUrl(src,BaseHref) ;} ; inp_src[OxOd436[0x3]]=src ; Width[OxOd436[0x3]]=element[OxOd436[0x7]] ; Height[OxOd436[0x3]]=element[OxOd436[0x8]] ; VSpace[OxOd436[0x3]]=element[OxOd436[0x9]] ; HSpace[OxOd436[0x3]]=element[OxOd436[0xa]] ; Border[OxOd436[0x3]]=element[OxOd436[0xb]] ; bordercolor[OxOd436[0x3]]=element[OxOd436[0x5]][OxOd436[0xc]] ; bordercolor[OxOd436[0x5]][OxOd436[0xd]]=element[OxOd436[0x5]][OxOd436[0xc]] ; bordercolor_Preview[OxOd436[0x5]][OxOd436[0xd]]=element[OxOd436[0x5]][OxOd436[0xc]] ; Align[OxOd436[0x3]]=element[OxOd436[0xe]] ; AlternateText[OxOd436[0x3]]=element[OxOd436[0xf]] ; longDesc[OxOd436[0x3]]=element[OxOd436[0x10]] ;}  ; function SyncTo(element){ element[OxOd436[0x6]]=inp_src[OxOd436[0x3]] ; element[OxOd436[0xb]]=Border[OxOd436[0x3]] ; element[OxOd436[0xa]]=HSpace[OxOd436[0x3]] ; element[OxOd436[0x9]]=VSpace[OxOd436[0x3]] ;try{ element[OxOd436[0x7]]=Width[OxOd436[0x3]] ; element[OxOd436[0x8]]=Height[OxOd436[0x3]] ;} catch(er){ alert(OxOd436[0x11]) ;return false;} ; element[OxOd436[0xe]]=Align[OxOd436[0x3]] ; element[OxOd436[0xf]]=AlternateText[OxOd436[0x3]] ; element[OxOd436[0x10]]=longDesc[OxOd436[0x3]] ; element[OxOd436[0x5]][OxOd436[0xc]]=bordercolor[OxOd436[0x3]] ;if(element[OxOd436[0x10]]==OxOd436[0x12]){ element.removeAttribute(OxOd436[0x10]) ;} ;}  ; function IsDigit(){return ((event[OxOd436[0x13]]>=0x30)&&(event[OxOd436[0x13]]<=0x39));}  ; function RemoveServerNamesFromUrl(Ox3e6,BaseHref){var Ox3e8=BaseHref; Ox3e8=Ox3e8.replace(/^(https?:\/\/[^\/]+)(.*)$/,OxOd436[0x14]) ; serverre= new RegExp(Ox3e8) ;return Ox3e6.replace(serverre,OxOd436[0x12]);}  ; function Actualsize(){try{var Oxba= new Image(); Oxba[OxOd436[0x6]]=document.getElementById(OxOd436[0x15])[OxOd436[0x3]] ;if(Oxba[OxOd436[0x7]]){ document.getElementById(OxOd436[0x16])[OxOd436[0x3]]=Oxba[OxOd436[0x7]] ;} ;if(Oxba[OxOd436[0x8]]){ document.getElementById(OxOd436[0x17])[OxOd436[0x3]]=Oxba[OxOd436[0x8]] ;} ;} catch(er){} ;}  ;

</script>
