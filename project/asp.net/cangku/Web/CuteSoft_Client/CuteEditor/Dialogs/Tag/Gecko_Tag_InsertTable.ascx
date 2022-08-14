<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[TABLE]]</legend>
	<table class="normal">
		<tr>
			<td>[[CellSpacing]]:</td>
			<td><input type="text" id="inp_cellspacing" onkeypress="return IsDigit(event);"></td>
			<td>[[CellPadding]]:</td>
			<td><input type="text" id="inp_cellpadding" onkeypress="return IsDigit(event);"></td>
		</tr>
		<tr>
			<td>[[Border]]:</td>
			<td><input type="text" id="inp_border" onkeypress="return IsDigit(event);"></td>
			<td>[[Rules]]:</td>
			<td><select id="sel_rules">
					<option value="">[[NotSet]]</option>
					<option value="all">all</option>
					<option value="rows">rows</option>
					<option value="cols">cols</option>
					<option value="none">none</option>
				</select></td>
		</tr>
		<tr>
			<td colspan=2>
				[[Bordercolor]]:
				<input type="text" id="inp_borderColor" name="inp_borderColor" size="7" style="WIDTH:67px">
				<img id="inp_borderColor_Preview" src="../images/colorpicker.gif"  align="absMiddle" onclick="SelectColor('inp_borderColor',this);" >
			</td>
			<td colspan=2>[[Backgroundcolor]]:
				<input type="text" id="inp_shade" name="inp_shade" size="7" style="WIDTH:67px">
				<img id="inp_shade_Preview" src="../images/colorpicker.gif"  align="absMiddle" onclick="SelectColor('inp_shade',this);">
			</td>
		</tr>
		<tr>
			<td colspan=4><input type="checkbox" id="inp_collapse">
				<label for="inp_collapse">[[CollapseBorder]]</label>&nbsp;				
			</td>
		</tr>
		
	</table>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Summary]] :</td>
			<td>
				<textarea id="inp_summary" rows="3" style="width:320px"></textarea>
			</td>
		</tr>
	</table>
</fieldset>
<fieldset><legend>[[Common]]</legend>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[CssClass]]:</td>
			<td><input type="text" id="inp_class" style="width:120px"></td>
			<td>[[Width]]:</td>
			<td><input type="text" id="inp_width" style="width:60px"></td>
			<td>[[Height]]:</td>
			<td><input type="text" id="inp_height" style="width:60px"></td>
		</tr>
	</table>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Alignment]]:</td>
			<td><select id="sel_align">
					<option value="">[[NotSet]]</option>
					<option value="left">[[Left]]</option>
					<option value="center">[[Center]]</option>
					<option value="right">[[Right]]</option>
				</select></td>
			<td>
				[[Text-Align]] :</td>
			<td><select id="sel_textalign">
					<option value="">[[NotSet]]</option>
					<option value="left">[[Left]]</option>
					<option value="center">[[Center]]</option>
					<option value="right">[[Right]]</option>
					<option value="justify">[[Justify]]</option>
				</select></td>
			<td>[[Float]]:
			</td>
			<td><select id="sel_float">
					<option value="">[[NotSet]]</option>
					<option value="left">[[Left]]</option>
					<option value="right">[[Right]]</option>
				</select></td>
		</tr>
	</table>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Title]] :</td>
			<td>
				<textarea id="inp_tooltip" rows="3" style="width:320px"></textarea>
			</td>
		</tr>
	</table>
</fieldset>
<script>

var OxOa711=["inp_cellspacing","inp_cellpadding","inp_border","sel_rules","inp_collapse","inp_borderColor","inp_borderColor_Preview","inp_shade","inp_shade_Preview","inp_summary","inp_class","inp_width","inp_height","sel_align","sel_textalign","sel_float","inp_tooltip","specified","","nodeValue","cellSpacing","value","cellPadding","border","borderCollapse","style","checked","collapse","className","width","borderColor","backgroundColor","bgColor","height","align","styleFloat","textAlign","title","rules","summary","0","[[ValidNumber]]","class","vAlign","valign","cellpadding","cellspacing"];var inp_cellspacing=document.getElementById(OxOa711[0x0]);var inp_cellpadding=document.getElementById(OxOa711[0x1]);var inp_border=document.getElementById(OxOa711[0x2]);var sel_rules=document.getElementById(OxOa711[0x3]);var inp_collapse=document.getElementById(OxOa711[0x4]);var borderColor=document.getElementById(OxOa711[0x5]);var borderColor_Preview=document.getElementById(OxOa711[0x6]);var inp_shade=document.getElementById(OxOa711[0x7]);var inp_shade_Preview=document.getElementById(OxOa711[0x8]);var inp_summary=document.getElementById(OxOa711[0x9]);var inp_class=document.getElementById(OxOa711[0xa]);var inp_width=document.getElementById(OxOa711[0xb]);var inp_height=document.getElementById(OxOa711[0xc]);var sel_align=document.getElementById(OxOa711[0xd]);var sel_textalign=document.getElementById(OxOa711[0xe]);var sel_float=document.getElementById(OxOa711[0xf]);var inp_tooltip=document.getElementById(OxOa711[0x10]);var inp_cellspacing=document.getElementById(OxOa711[0x0]); function SyncToView(){ function GetAttribute(Ox492){var attr=element.getAttributeNode(Ox492);if(attr==null||!attr[OxOa711[0x11]]){return OxOa711[0x12];} ;return attr[OxOa711[0x13]];}  ; inp_cellspacing[OxOa711[0x15]]=GetAttribute(OxOa711[0x14]) ; inp_cellpadding[OxOa711[0x15]]=GetAttribute(OxOa711[0x16]) ; inp_border[OxOa711[0x15]]=GetAttribute(OxOa711[0x17]) ; inp_collapse[OxOa711[0x1a]]=element[OxOa711[0x19]][OxOa711[0x18]]==OxOa711[0x1b] ; inp_class[OxOa711[0x15]]=element[OxOa711[0x1c]] ;if(GetAttribute(OxOa711[0x1d])){ inp_width[OxOa711[0x15]]=GetAttribute(OxOa711[0x1d]) ;} else {if(element[OxOa711[0x19]][OxOa711[0x1d]]){ inp_width[OxOa711[0x15]]=element[OxOa711[0x19]][OxOa711[0x1d]] ;} ;} ;if(GetAttribute(OxOa711[0x1e])){ borderColor[OxOa711[0x15]]=GetAttribute(OxOa711[0x1e]) ; borderColor[OxOa711[0x19]][OxOa711[0x1f]]=GetAttribute(OxOa711[0x1e]) ; borderColor_Preview[OxOa711[0x19]][OxOa711[0x1f]]=GetAttribute(OxOa711[0x1e]) ;} else {if(element[OxOa711[0x19]][OxOa711[0x1e]]){ borderColor[OxOa711[0x15]]=element[OxOa711[0x19]][OxOa711[0x1e]] ; borderColor[OxOa711[0x19]][OxOa711[0x1f]]=element[OxOa711[0x19]][OxOa711[0x1e]] ; borderColor_Preview[OxOa711[0x19]][OxOa711[0x1f]]=element[OxOa711[0x19]][OxOa711[0x1e]] ;} ;} ;if(GetAttribute(OxOa711[0x20])){ inp_shade[OxOa711[0x15]]=GetAttribute(OxOa711[0x20]) ; inp_shade[OxOa711[0x19]][OxOa711[0x1f]]=GetAttribute(OxOa711[0x20]) ; inp_shade_Preview[OxOa711[0x19]][OxOa711[0x1f]]=GetAttribute(OxOa711[0x20]) ;} else {if(element[OxOa711[0x19]][OxOa711[0x1f]]){ inp_shade[OxOa711[0x15]]=element[OxOa711[0x19]][OxOa711[0x1f]] ; inp_shade[OxOa711[0x19]][OxOa711[0x1f]]=element[OxOa711[0x19]][OxOa711[0x1f]] ; inp_shade_Preview[OxOa711[0x19]][OxOa711[0x1f]]=element[OxOa711[0x19]][OxOa711[0x1f]] ;} ;} ;if(GetAttribute(OxOa711[0x21])){ inp_height[OxOa711[0x15]]=GetAttribute(OxOa711[0x21]) ;} else {if(element[OxOa711[0x19]][OxOa711[0x21]]){ inp_height[OxOa711[0x15]]=element[OxOa711[0x19]][OxOa711[0x21]] ;} ;} ; sel_align[OxOa711[0x15]]=element[OxOa711[0x22]] ; sel_float[OxOa711[0x15]]=element[OxOa711[0x19]][OxOa711[0x23]] ; sel_textalign[OxOa711[0x15]]=element[OxOa711[0x19]][OxOa711[0x24]] ; inp_tooltip[OxOa711[0x15]]=element[OxOa711[0x25]] ;}  ; function SyncTo(){ element[OxOa711[0x19]][OxOa711[0x18]]=inp_collapse[OxOa711[0x1a]]?OxOa711[0x1b]:OxOa711[0x12] ; element[OxOa711[0x26]]=sel_rules[OxOa711[0x15]]||OxOa711[0x12] ; element[OxOa711[0x27]]=inp_summary[OxOa711[0x15]] ; element[OxOa711[0x1c]]=inp_class[OxOa711[0x15]] ; element[OxOa711[0x14]]=inp_cellspacing[OxOa711[0x15]] ; element[OxOa711[0x16]]=inp_cellpadding[OxOa711[0x15]] ;if(inp_border[OxOa711[0x15]]==OxOa711[0x12]){ element[OxOa711[0x17]]=OxOa711[0x28] ;} else { element[OxOa711[0x17]]=inp_border[OxOa711[0x15]] ;} ;if(inp_width[OxOa711[0x15]]==OxOa711[0x12]){ element.removeAttribute(OxOa711[0x1d]) ; element[OxOa711[0x19]][OxOa711[0x1d]]=OxOa711[0x12] ;} ;if(inp_height[OxOa711[0x15]]==OxOa711[0x12]){ element.removeAttribute(OxOa711[0x21]) ; element[OxOa711[0x19]][OxOa711[0x21]]=OxOa711[0x12] ;} ;try{if(element[OxOa711[0x19]][OxOa711[0x1d]]){ element[OxOa711[0x19]][OxOa711[0x1d]]=inp_width[OxOa711[0x15]] ;} else { element[OxOa711[0x1d]]=inp_width[OxOa711[0x15]] ;} ;} catch(e){ alert(OxOa711[0x29]) ;} ;try{if(element[OxOa711[0x19]][OxOa711[0x21]]){ element[OxOa711[0x19]][OxOa711[0x21]]=inp_height[OxOa711[0x15]] ;} else { element[OxOa711[0x21]]=inp_height[OxOa711[0x15]] ;} ;} catch(e){ alert(OxOa711[0x29]) ;} ;try{if(element[OxOa711[0x19]][OxOa711[0x1e]]){ element[OxOa711[0x19]][OxOa711[0x1e]]=borderColor[OxOa711[0x15]] ;} else { element[OxOa711[0x1e]]=borderColor[OxOa711[0x15]] ;} ;} catch(e){} ;try{if(element[OxOa711[0x19]][OxOa711[0x1f]]){ element[OxOa711[0x19]][OxOa711[0x1f]]=inp_shade[OxOa711[0x15]] ;} else { element[OxOa711[0x20]]=inp_shade[OxOa711[0x15]] ;} ;} catch(e){} ; element[OxOa711[0x22]]=sel_align[OxOa711[0x15]] ; element[OxOa711[0x19]][OxOa711[0x23]]=sel_float[OxOa711[0x15]] ; element[OxOa711[0x19]][OxOa711[0x24]]=sel_textalign[OxOa711[0x15]] ; element[OxOa711[0x25]]=inp_tooltip[OxOa711[0x15]] ;if(element[OxOa711[0x25]]==OxOa711[0x12]){ element.removeAttribute(OxOa711[0x25]) ;} ;if(element[OxOa711[0x27]]==OxOa711[0x12]){ element.removeAttribute(OxOa711[0x27]) ;} ;if(element[OxOa711[0x1c]]==OxOa711[0x12]){ element.removeAttribute(OxOa711[0x2a]) ;} ;if(element[OxOa711[0x22]]==OxOa711[0x12]){ element.removeAttribute(OxOa711[0x22]) ;} ;if(element[OxOa711[0x2b]]==OxOa711[0x12]){ element.removeAttribute(OxOa711[0x2c]) ;} ;if(element[OxOa711[0x1d]]==OxOa711[0x12]){ element.removeAttribute(OxOa711[0x1d]) ;} ;if(element[OxOa711[0x21]]==OxOa711[0x12]){ element.removeAttribute(OxOa711[0x21]) ;} ;if(element[OxOa711[0x26]]==OxOa711[0x12]){ element.removeAttribute(OxOa711[0x26]) ;} ;if(element[OxOa711[0x16]]==OxOa711[0x12]){ element.removeAttribute(OxOa711[0x2d]) ;} ;if(element[OxOa711[0x14]]==OxOa711[0x12]){ element.removeAttribute(OxOa711[0x2e]) ;} ;}  ;

</script>
