<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[EditRow]]</legend>
	<table class="normal">
		<tr>
			<td colspan=2>
				<table class="normal" width="100%">
					<tr>
						<td width="20%">[[Width]] :</td>
						<td width="28%"><input type="text" id="inp_width" onkeypress="event.returnValue=IsDigit();" style="width:70px"></td>
						<td width=4%></td>
						<td width="20%">[[Height]] :</td>
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

var OxOb11a=["specified","","nodeValue","bgColor","value","backgroundColor","style","borderColor","borderColorLight","borderColorDark","className","width","height","align","vAlign","title","Please enter a valid number.","inp_borderColorDark","valign","keyCode"]; function SyncToView(){ function GetAttribute(Ox492){var attr=element.getAttributeNode(Ox492);if(attr==null||!attr[OxOb11a[0x0]]){return OxOb11a[0x1];} ;return attr[OxOb11a[0x2]];}  ; inp_bgColor[OxOb11a[0x4]]=GetAttribute(OxOb11a[0x3]) ; inp_bgColor[OxOb11a[0x6]][OxOb11a[0x5]]=inp_bgColor[OxOb11a[0x4]] ; inp_borderColor[OxOb11a[0x4]]=GetAttribute(OxOb11a[0x7]) ; inp_borderColor[OxOb11a[0x6]][OxOb11a[0x5]]=inp_borderColor[OxOb11a[0x4]] ; inp_borderColorLight[OxOb11a[0x4]]=GetAttribute(OxOb11a[0x8]) ; inp_borderColorLight[OxOb11a[0x6]][OxOb11a[0x5]]=inp_borderColorLight[OxOb11a[0x4]] ; inp_borderColorDark[OxOb11a[0x4]]=GetAttribute(OxOb11a[0x9]) ; inp_borderColorDark[OxOb11a[0x6]][OxOb11a[0x5]]=inp_borderColorDark[OxOb11a[0x4]] ; inp_class[OxOb11a[0x4]]=element[OxOb11a[0xa]] ; inp_width[OxOb11a[0x4]]=GetAttribute(OxOb11a[0xb]) ; inp_height[OxOb11a[0x4]]=GetAttribute(OxOb11a[0xc]) ; sel_align[OxOb11a[0x4]]=GetAttribute(OxOb11a[0xd]) ; sel_valign[OxOb11a[0x4]]=GetAttribute(OxOb11a[0xe]) ; inp_tooltip[OxOb11a[0x4]]=GetAttribute(OxOb11a[0xf]) ;}  ; function SyncTo(element){ element[OxOb11a[0x3]]=inp_bgColor[OxOb11a[0x4]] ; element[OxOb11a[0x7]]=inp_borderColor[OxOb11a[0x4]] ; element[OxOb11a[0x8]]=inp_borderColorLight[OxOb11a[0x4]] ; element[OxOb11a[0x9]]=inp_borderColorDark[OxOb11a[0x4]] ;try{ element[OxOb11a[0xb]]=inp_width[OxOb11a[0x4]] ; element[OxOb11a[0xc]]=inp_height[OxOb11a[0x4]] ;} catch(er){ alert(OxOb11a[0x10]) ;} ; element[OxOb11a[0xd]]=sel_align[OxOb11a[0x4]] ; element[OxOb11a[0xe]]=sel_valign[OxOb11a[0x4]] ; element[OxOb11a[0xf]]=inp_tooltip[OxOb11a[0x4]] ;if(element[OxOb11a[0x3]]==OxOb11a[0x1]){ element.removeAttribute(OxOb11a[0x3]) ;} ;if(element[OxOb11a[0x7]]==OxOb11a[0x1]){ element.removeAttribute(OxOb11a[0x7]) ;} ;if(element[OxOb11a[0x8]]==OxOb11a[0x1]){ element.removeAttribute(OxOb11a[0x8]) ;} ;if(element[OxOb11a[0x11]]==OxOb11a[0x1]){ element.removeAttribute(OxOb11a[0x11]) ;} ;if(element[OxOb11a[0xa]]==OxOb11a[0x1]){ element.removeAttribute(OxOb11a[0xa]) ;} ;if(element[OxOb11a[0xd]]==OxOb11a[0x1]){ element.removeAttribute(OxOb11a[0xd]) ;} ;if(element[OxOb11a[0xe]]==OxOb11a[0x1]){ element.removeAttribute(OxOb11a[0x12]) ;} ;if(element[OxOb11a[0xf]]==OxOb11a[0x1]){ element.removeAttribute(OxOb11a[0xf]) ;} ;if(element[OxOb11a[0xb]]==OxOb11a[0x1]){ element.removeAttribute(OxOb11a[0xb]) ;} ;if(element[OxOb11a[0xc]]==OxOb11a[0x1]){ element.removeAttribute(OxOb11a[0xc]) ;} ;}  ; function IsDigit(){return ((event[OxOb11a[0x13]]>=0x30)&&(event[OxOb11a[0x13]]<=0x39));}  ;

</script>
