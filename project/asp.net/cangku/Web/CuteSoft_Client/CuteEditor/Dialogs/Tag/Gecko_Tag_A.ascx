<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Hyperlink_Information]]</legend>
			<table class="normal">
				<tr>
					<td style="width:60px">[[Url]]:</td>
					<td colspan=3><input type="text" id="inp_src" style="width:260px"></td>
				</tr>
				<tr>
					<td>[[Target]]</td>
					<td><SELECT id="sel_target" NAME="sel_target">
							<OPTION value="">[[NotSet]]</OPTION>
							<OPTION value="_blank">[[Newwindow]]</OPTION>
							<OPTION value="_self">[[Samewindow]]</OPTION>
							<OPTION value="_top">[[Topmostwindow]]</OPTION>
							<OPTION value="_parent">[[Parentwindow]]</OPTION>
						</SELECT>
					</td>
					<td nowrap>[[Color]]:</td>
					<td>
						<input type="text" id="inp_color" name="inp_color" size="7" style="WIDTH:57px">	
						<img id="inp_color_Preview" src="../images/colorpicker.gif" onclick="SelectColor('inp_color',this);" align="absMiddle">
					</td>
				</tr>
				<tr>
					<td style="width:60px">[[Title]]:</td>
					<td colspan=3><input type="text" id="inp_title" style="width:260px"></td>
				</tr>
				<tr>
					<td style="width:60px">[[CssClass]]:</td>
					<td colspan=3><input type="text" id="inp_cssclass" style="width:260px"></td>
				</tr>
			</table>
		</fieldset>
<script>
	var OxO75b7=["innerHTML","inp_src","sel_target","inp_cssclass","inp_title","inp_color","inp_color_Preview","href","value","target","className","title","color","style","backgroundColor","","selectedIndex","class"];var linkhtml; linkhtml=element[OxO75b7[0x0]] ;var inp_src=document.getElementById(OxO75b7[0x1]);var sel_target=document.getElementById(OxO75b7[0x2]);var inp_cssclass=document.getElementById(OxO75b7[0x3]);var inp_title=document.getElementById(OxO75b7[0x4]);var inp_color=document.getElementById(OxO75b7[0x5]);var inp_color_Preview=document.getElementById(OxO75b7[0x6]); function SyncToView(){if(element){try{if(element.getAttribute(OxO75b7[0x7])){ inp_src[OxO75b7[0x8]]=element.getAttribute(OxO75b7[0x7]) ;} ;} catch(e){} ;if(element[OxO75b7[0x9]]){ sel_target[OxO75b7[0x8]]=element[OxO75b7[0x9]] ;} ;if(element[OxO75b7[0xa]]){ inp_cssclass[OxO75b7[0x8]]=element[OxO75b7[0xa]] ;} ;if(element[OxO75b7[0xb]]){ inp_title[OxO75b7[0x8]]=element[OxO75b7[0xb]] ;} ;if(element[OxO75b7[0xd]][OxO75b7[0xc]]){ inp_color[OxO75b7[0x8]]=element[OxO75b7[0xd]][OxO75b7[0xc]] ; inp_color[OxO75b7[0xd]][OxO75b7[0xe]]=inp_color[OxO75b7[0x8]] ; inp_color_Preview[OxO75b7[0xd]][OxO75b7[0xe]]=inp_color[OxO75b7[0x8]] ;} ;} ;}  ; function SyncTo(){ element[OxO75b7[0x7]]=inp_src[OxO75b7[0x8]] ;if(element[OxO75b7[0x0]]==OxO75b7[0xf]&&inp_title[OxO75b7[0x8]]){ element[OxO75b7[0x0]]=inp_title[OxO75b7[0x8]] ;} ; element[OxO75b7[0xb]]=inp_title[OxO75b7[0x8]] ; element[OxO75b7[0xa]]=inp_cssclass[OxO75b7[0x8]] ;if(sel_target[OxO75b7[0x10]]!=-0x1){ element[OxO75b7[0x9]]=sel_target[OxO75b7[0x8]] ;} ;try{ element[OxO75b7[0xd]][OxO75b7[0xc]]=inp_color[OxO75b7[0x8]]||OxO75b7[0xf] ;} catch(x){ element[OxO75b7[0xd]][OxO75b7[0xc]]=OxO75b7[0xf] ;} ;if(element[OxO75b7[0xb]]==OxO75b7[0xf]){ element.removeAttribute(OxO75b7[0xb]) ;} ;if(element[OxO75b7[0x9]]==OxO75b7[0xf]){ element.removeAttribute(OxO75b7[0x9]) ;} ;if(element[OxO75b7[0xa]]==OxO75b7[0xf]){ element.removeAttribute(OxO75b7[0x11]) ;} ;}  ;
</script>
