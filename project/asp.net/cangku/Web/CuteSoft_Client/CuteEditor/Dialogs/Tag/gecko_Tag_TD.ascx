<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[EditCell]]</legend>
	<table class="normal">
		<tr>
			<td colspan=2>
				<table class="normal" width="100%">
					<tr>
						<td width="20%">[[Width]]:</td>
						<td width="28%"><input type="text" id="inp_width" style="width:70px"></td>
						<td width=4%></td>
						<td width="20%">[[Height]]:</td>
						<td width="28%"><input type="text" id="inp_height" style="width:70px"></td>
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
			<td>
				<input type="text" id="inp_bgColor" name="inp_bgColor" size="7" style="WIDTH:57px">	
				<img id="inp_bgColor_Preview" src="../images/colorpicker.gif" onclick="SelectColor('inp_bgColor',this);" align="absMiddle">
			</td>
		</tr>
		<tr>
			<td nowrap>[[BorderColor]]:</td>
			<td>
				<input type="text" id="inp_borderColor" name="inp_borderColor" size="7" style="WIDTH:57px">	
				<img id="inp_borderColor_Preview" src="../images/colorpicker.gif" onclick="SelectColor('inp_borderColor',this);" align="absMiddle">
			</td>
		</tr>
		<tr>
			<td nowrap>[[BorderColorLight]]:</td>
			<td>
				<input type="text" id="inp_borderColorlight" name="inp_borderColorlight" size="7" style="WIDTH:57px">	
				<img id="inp_borderColorlight_Preview" src="../images/colorpicker.gif" onclick="SelectColor('inp_borderColorlight',this);" align="absMiddle">
			</td>
		</tr>
		<tr>
			<td nowrap>[[BorderColorDark]]:</td>
			<td>
				<input type="text" id="inp_borderColordark" name="inp_borderColordark" size="7" style="WIDTH:57px">	
				<img id="inp_borderColordark_Preview" src="../images/colorpicker.gif" onclick="SelectColor('inp_borderColordark',this);" align="absMiddle">
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

var OxOc960=["inp_bgColor","inp_borderColor","inp_borderColorlight","inp_borderColordark","inp_bgColor_Preview","inp_borderColor_Preview","inp_borderColorlight_Preview","inp_borderColordark_Preview","inp_class","inp_width","inp_height","sel_align","sel_valign","inp_tooltip","bgColor","value","backgroundColor","style","borderColor","borderColorLight","borderColorDark","className","width","height","align","vAlign","title","borderColorlight","borderColordark","Please enter a valid number.","","bgcolor","class","valign"];var inp_bgColor=document.getElementById(OxOc960[0x0]);var inp_borderColor=document.getElementById(OxOc960[0x1]);var inp_borderColorlight=document.getElementById(OxOc960[0x2]);var inp_borderColordark=document.getElementById(OxOc960[0x3]);var inp_bgColor_Preview=document.getElementById(OxOc960[0x4]);var inp_borderColor_Preview=document.getElementById(OxOc960[0x5]);var inp_borderColorlight_Preview=document.getElementById(OxOc960[0x6]);var inp_borderColordark_Preview=document.getElementById(OxOc960[0x7]);var inp_class=document.getElementById(OxOc960[0x8]);var inp_width=document.getElementById(OxOc960[0x9]);var inp_height=document.getElementById(OxOc960[0xa]);var sel_align=document.getElementById(OxOc960[0xb]);var sel_valign=document.getElementById(OxOc960[0xc]);var inp_tooltip=document.getElementById(OxOc960[0xd]); function SyncToView(){if(element[OxOc960[0xe]]){ inp_bgColor[OxOc960[0xf]]=element[OxOc960[0xe]] ; inp_bgColor[OxOc960[0x11]][OxOc960[0x10]]=inp_bgColor[OxOc960[0xf]] ; inp_bgColor_Preview[OxOc960[0x11]][OxOc960[0x10]]=element[OxOc960[0xe]] ;} ;if(element[OxOc960[0x12]]){ inp_borderColor[OxOc960[0xf]]=element[OxOc960[0x12]] ; inp_borderColor[OxOc960[0x11]][OxOc960[0x10]]=inp_borderColor[OxOc960[0xf]] ; inp_borderColor_Preview[OxOc960[0x11]][OxOc960[0x10]]=element[OxOc960[0x12]] ;} ;if(element[OxOc960[0x13]]){ inp_borderColorlight[OxOc960[0xf]]=element[OxOc960[0x13]] ; inp_borderColorlight[OxOc960[0x11]][OxOc960[0x10]]=element[OxOc960[0x13]] ; inp_borderColorlight_Preview[OxOc960[0x11]][OxOc960[0x10]]=element[OxOc960[0x13]] ;} ;if(element[OxOc960[0x14]]){ inp_borderColordark[OxOc960[0xf]]=element[OxOc960[0x14]] ; inp_borderColordark[OxOc960[0x11]][OxOc960[0x10]]=element[OxOc960[0x3]] ; inp_borderColordark_Preview[OxOc960[0x11]][OxOc960[0x10]]=element[OxOc960[0x3]] ;} ;if(element[OxOc960[0x15]]){ inp_class[OxOc960[0xf]]=element[OxOc960[0x15]] ;} ;if(element[OxOc960[0x16]]){ inp_width[OxOc960[0xf]]=element[OxOc960[0x16]] ;} ;if(element[OxOc960[0x17]]){ inp_height[OxOc960[0xf]]=element[OxOc960[0x17]] ;} ;if(element[OxOc960[0x18]]){ sel_align[OxOc960[0xf]]=element[OxOc960[0x18]] ;} ;if(element[OxOc960[0x19]]){ sel_valign[OxOc960[0xf]]=element[OxOc960[0x19]] ;} ;if(element[OxOc960[0x1a]]){ inp_tooltip[OxOc960[0xf]]=element[OxOc960[0x1a]] ;} ;}  ; function SyncTo(){ element[OxOc960[0xe]]=inp_bgColor[OxOc960[0xf]] ; element[OxOc960[0x12]]=inp_borderColor[OxOc960[0xf]] ; element[OxOc960[0x1b]]=inp_borderColorlight[OxOc960[0xf]] ; element[OxOc960[0x1c]]=inp_borderColordark[OxOc960[0xf]] ; element[OxOc960[0x15]]=inp_class[OxOc960[0xf]] ;try{ element[OxOc960[0x16]]=inp_width[OxOc960[0xf]] ; element[OxOc960[0x17]]=inp_height[OxOc960[0xf]] ;} catch(er){ alert(OxOc960[0x1d]) ;} ; element[OxOc960[0x18]]=sel_align[OxOc960[0xf]] ; element[OxOc960[0x19]]=sel_valign[OxOc960[0xf]] ; element[OxOc960[0x1a]]=inp_tooltip[OxOc960[0xf]] ;if(element[OxOc960[0xe]]==OxOc960[0x1e]){ element.removeAttribute(OxOc960[0x1f]) ;} ;if(element[OxOc960[0x12]]==OxOc960[0x1e]){ element.removeAttribute(OxOc960[0x12]) ;} ;if(element[OxOc960[0x1b]]==OxOc960[0x1e]){ element.removeAttribute(OxOc960[0x1b]) ;} ;if(element[OxOc960[0x3]]==OxOc960[0x1e]){ element.removeAttribute(OxOc960[0x3]) ;} ;if(element[OxOc960[0x15]]==OxOc960[0x1e]){ element.removeAttribute(OxOc960[0x20]) ;} ;if(element[OxOc960[0x18]]==OxOc960[0x1e]){ element.removeAttribute(OxOc960[0x18]) ;} ;if(element[OxOc960[0x19]]==OxOc960[0x1e]){ element.removeAttribute(OxOc960[0x21]) ;} ;if(element[OxOc960[0x1a]]==OxOc960[0x1e]){ element.removeAttribute(OxOc960[0x1a]) ;} ;if(element[OxOc960[0x16]]==OxOc960[0x1e]){ element.removeAttribute(OxOc960[0x16]) ;} ;if(element[OxOc960[0x17]]==OxOc960[0x1e]){ element.removeAttribute(OxOc960[0x17]) ;} ;}  ;
</script>
