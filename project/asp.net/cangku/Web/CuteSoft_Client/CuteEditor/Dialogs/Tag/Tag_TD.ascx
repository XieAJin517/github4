<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[EditCell]]</legend>
	<table class="normal">
		<tr>
			<td colspan=2>
				<table class="normal" width="100%">
					<tr>
						<td width="20%">[[Width]]:</td>
						<td width="28%"><input type="text" id="inp_width" onkeypress="event.returnValue=IsDigit();" style="width:70px"></td>
						<td width=4%></td>
						<td width="20%">[[Height]]:</td>
						<td width="28%"><input type="text" id="inp_height" onkeypress="event.returnValue=IsDigit();" style="width:70px"></td>
					</tr>
					<tr>
						<td nowrap>[[Alignment]]:</td>
						<td>
							<select id="sel_align" style="width:70px">
								<option value="">[[NotSet]]</option>
								<option value="left">[[Left]]</option>
								<option value="center">[[Center]]</option>
								<option value="right">[[Right]]</option>
							</select>
						</td>
						<td>
						</td>
						<td nowrap>[[vertical]] [[Alignment]]:</td>
						<td><select id="sel_valign" style="width:70px">
								<option value="">[[NotSet]]</option>
								<option value="top">[[Top]]</option>
								<option value="middle">[[Middle]]</option>
								<option value="baseline">[[Baseline]]</option>
								<option value="bottom">[[Bottom]]</option>
							</select>
						</td>
					</tr>
				</table>
			</td>			
		</tr>
		<tr>
			<td nowrap>[[BackgroundColor]]:</td>
			<td><input type="text" id="inp_bgColor" oncolorpopup="this.selectedColor=value" style='behavior:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])' oncolorchange='inp_bgColor.value=this.selectedColor; inp_bgColor.style.backgroundColor=this.selectedColor'>
			</td>
		</tr>
		<tr>
			<td nowrap>[[BorderColor]]:</td>
			<td><input type="text" id="inp_borderColor" oncolorpopup="this.selectedColor=value" style='behavior:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'	oncolorchange='inp_borderColor.value=this.selectedColor; inp_borderColor.style.backgroundColor=this.selectedColor'>
			</td>
		</tr>
		<tr>
			<td nowrap>[[BorderColorLight]]:</td>
			<td><input type="text" id="inp_borderColorLight" oncolorpopup="this.selectedColor=value" style='behavior:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])' oncolorchange='inp_borderColorLight.value=this.selectedColor; inp_borderColorLight.style.backgroundColor=this.selectedColor'>
			</td>
		</tr>
		<tr>
			<td nowrap>[[BorderColorDark]]:</td>
			<td><input type="text" id="inp_borderColorDark" oncolorpopup="this.selectedColor=value" style='behavior:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'	oncolorchange='inp_borderColorDark.value=this.selectedColor; inp_borderColorDark.style.backgroundColor=this.selectedColor'>
			</td>
		</tr>
		<tr>	
			<td nowrap>[[Title]]:</td>
			<td>
				<textarea id="inp_tooltip" rows="3" style="width:320px"></textarea>
			</td>
		</tr>
		<tr>
			<td nowrap>[[CssClass]]:</td>
			<td><input type="text" id="inp_class" style="width:120px"></td>
		</tr>
	</table>
</fieldset>

<script>

var OxO87f4=["specified","","nodeValue","bgColor","value","backgroundColor","style","borderColor","borderColorLight","borderColorDark","className","width","height","align","vAlign","title","Please enter a valid number.","inp_borderColorDark","valign"]; function SyncToView(){ function GetAttribute(Ox492){var attr=element.getAttributeNode(Ox492);if(attr==null||!attr[OxO87f4[0x0]]){return OxO87f4[0x1];} ;return attr[OxO87f4[0x2]];}  ; inp_bgColor[OxO87f4[0x4]]=GetAttribute(OxO87f4[0x3]) ; inp_bgColor[OxO87f4[0x6]][OxO87f4[0x5]]=inp_bgColor[OxO87f4[0x4]] ; inp_borderColor[OxO87f4[0x4]]=GetAttribute(OxO87f4[0x7]) ; inp_borderColor[OxO87f4[0x6]][OxO87f4[0x5]]=inp_borderColor[OxO87f4[0x4]] ; inp_borderColorLight[OxO87f4[0x4]]=GetAttribute(OxO87f4[0x8]) ; inp_borderColorLight[OxO87f4[0x6]][OxO87f4[0x5]]=inp_borderColorLight[OxO87f4[0x4]] ; inp_borderColorDark[OxO87f4[0x4]]=GetAttribute(OxO87f4[0x9]) ; inp_borderColorDark[OxO87f4[0x6]][OxO87f4[0x5]]=inp_borderColorDark[OxO87f4[0x4]] ; inp_class[OxO87f4[0x4]]=element[OxO87f4[0xa]] ; inp_width[OxO87f4[0x4]]=GetAttribute(OxO87f4[0xb]) ; inp_height[OxO87f4[0x4]]=GetAttribute(OxO87f4[0xc]) ; sel_align[OxO87f4[0x4]]=GetAttribute(OxO87f4[0xd]) ; sel_valign[OxO87f4[0x4]]=GetAttribute(OxO87f4[0xe]) ; inp_tooltip[OxO87f4[0x4]]=GetAttribute(OxO87f4[0xf]) ;}  ; function SyncTo(element){ element[OxO87f4[0x3]]=inp_bgColor[OxO87f4[0x4]] ; element[OxO87f4[0x7]]=inp_borderColor[OxO87f4[0x4]] ; element[OxO87f4[0x8]]=inp_borderColorLight[OxO87f4[0x4]] ; element[OxO87f4[0x9]]=inp_borderColorDark[OxO87f4[0x4]] ;try{ element[OxO87f4[0xb]]=inp_width[OxO87f4[0x4]] ; element[OxO87f4[0xc]]=inp_height[OxO87f4[0x4]] ;} catch(er){ alert(OxO87f4[0x10]) ;} ; element[OxO87f4[0xd]]=sel_align[OxO87f4[0x4]] ; element[OxO87f4[0xe]]=sel_valign[OxO87f4[0x4]] ; element[OxO87f4[0xf]]=inp_tooltip[OxO87f4[0x4]] ;if(element[OxO87f4[0x3]]==OxO87f4[0x1]){ element.removeAttribute(OxO87f4[0x3]) ;} ;if(element[OxO87f4[0x7]]==OxO87f4[0x1]){ element.removeAttribute(OxO87f4[0x7]) ;} ;if(element[OxO87f4[0x8]]==OxO87f4[0x1]){ element.removeAttribute(OxO87f4[0x8]) ;} ;if(element[OxO87f4[0x11]]==OxO87f4[0x1]){ element.removeAttribute(OxO87f4[0x11]) ;} ;if(element[OxO87f4[0xa]]==OxO87f4[0x1]){ element.removeAttribute(OxO87f4[0xa]) ;} ;if(element[OxO87f4[0xd]]==OxO87f4[0x1]){ element.removeAttribute(OxO87f4[0xd]) ;} ;if(element[OxO87f4[0xe]]==OxO87f4[0x1]){ element.removeAttribute(OxO87f4[0x12]) ;} ;if(element[OxO87f4[0xf]]==OxO87f4[0x1]){ element.removeAttribute(OxO87f4[0xf]) ;} ;if(element[OxO87f4[0xb]]==OxO87f4[0x1]){ element.removeAttribute(OxO87f4[0xb]) ;} ;if(element[OxO87f4[0xc]]==OxO87f4[0x1]){ element.removeAttribute(OxO87f4[0xc]) ;} ;}  ;
</script>
