<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Alignment]]</legend>
	<table border="0" cellspacing="0" cellpadding="2" class="normal">
		<tr>
			<td>[[Horizontal]]:</td>
			<td>
				<select id="sel_align">
					<option value="">[[NotSet]]</option>
					<option value="left">[[Left]]</option>
					<option value="center">[[Center]]</option>
					<option value="right">[[Right]]</option>
					<option value="justify">[[Justify]]</option>
				</select>
			</td>
			<td width=10 nowrap></td>
			<td>[[Vertical]]:</td>
			<td>
				<select id="sel_valign" style="width:90">
					<option value="">[[NotSet]]</option>
					<option value="sub">[[Subscript]]</option>
					<option value="super">[[Superscript]]</option>
					<option value="baseline">[[Normal]]</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>[[Justification]]:</td>
			<td colspan="4">
				<select id="sel_justify">
					<option value="">[[NotSet]]</option>
					<option value="auto">Auto</option>
					<option value="newspaper">newspaper</option>
					<option value="distribute">distribute</option>
					<option value="distribute-all-lines">distribute-all-lines</option>
					<option value="inter-word">inter-word</option>
				</select>
			</td>
		</tr>
	</table>
</fieldset>
<fieldset>
	<legend>
		[[Spacing]]</legend>
	<table border="0" cellpadding="2" cellspacing="0" class="normal">
		<tr>
			<td>[[Letters]]</td>
			<td><select style="width:64" id="sel_letter">
					<option value="">[[NotSet]]</option>
					<option value="normal">[[Normal]]</option>
				</select>
				[[OR]] <input type="text" id="tb_letter" style="width:42">
				<select id="sel_letter_unit">
					<option value="px">px</option>
					<option value="pt">pt</option>
					<option value="pc">pc</option>
					<option value="em">em</option>
					<option value="cm">cm</option>
					<option value="mm">mm</option>
					<option value="in">in</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>[[Height]]</td>
			<td><select style="width:64" id="sel_line">
					<option value="">[[NotSet]]</option>
					<option value="normal">[[Normal]]</option>
				</select>
				[[OR]] <input type="text" id="tb_line" style="width:42">
				<select id="sel_line_unit">
					<option value="px">px</option>
					<option value="%">%</option>
					<option value="pt">pt</option>
					<option value="pc">pc</option>
					<option value="em">em</option>
					<option value="cm">cm</option>
					<option value="mm">mm</option>
					<option value="in">in</option>
				</select>
			</td>
		</tr>
	</table>
</fieldset>
<fieldset><legend>[[TextFlow]]</legend>
	<table border="0" cellspacing="0" cellpadding="2" class="normal">
		<tr>
			<td width=80>[[Indentation]]:
			</td>
			<td><input type="text" id="tb_indent" style="width:42">
				<select id="sel_indent_unit">
					<option value="px">px</option>
					<option value="pt">pt</option>
					<option value="pc">pc</option>
					<option value="em">em</option>
					<option value="cm">cm</option>
					<option value="mm">mm</option>
					<option value="in">in</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>[[TextDirection]]:</td>
			<td><select id="sel_direction">
					<option value="">[[NotSet]]</option>
					<option value="ltr">[[LTR]]</option>
					<option value="rtl">[[RTL]]</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>[[WritingMode]]:</td>
			<td>
				<select id="sel_writingmode">
					<option value="">[[NotSet]]</option>
					<option value="lr-tb">[[lr-tb]]</option>
					<option value="tb-rl">[[tb-rl]]</option>
				</select>
			</td>
		</tr>
	</table>
</fieldset>

<div id="outer"><div id="div_demo">[[DemoText]]</div></div>
<script>

var OxO98b9=["disabled","selectedIndex","cssText","style","textAlign","value","verticalAlign","textJustify","letterSpacing","length","options","lineHeight","textIndent","direction","writingMode",""]; function UpdateState(){ tb_letter[OxO98b9[0x0]]=sel_letter_unit[OxO98b9[0x0]]=(sel_letter[OxO98b9[0x1]]>0x0) ; tb_line[OxO98b9[0x0]]=sel_line_unit[OxO98b9[0x0]]=(sel_line[OxO98b9[0x1]]>0x0) ; div_demo[OxO98b9[0x3]][OxO98b9[0x2]]=element[OxO98b9[0x3]][OxO98b9[0x2]] ;}  ; function SyncToView(){ sel_align[OxO98b9[0x5]]=element[OxO98b9[0x3]][OxO98b9[0x4]] ; sel_valign[OxO98b9[0x5]]=element[OxO98b9[0x3]][OxO98b9[0x6]] ; sel_justify[OxO98b9[0x5]]=element[OxO98b9[0x3]][OxO98b9[0x7]] ; sel_letter[OxO98b9[0x5]]=element[OxO98b9[0x3]][OxO98b9[0x8]] ; sel_letter_unit[OxO98b9[0x1]]=0x0 ;if(sel_letter[OxO98b9[0x1]]==-0x1){if(ParseToString(element[OxO98b9[0x3]].letterSpacing)){ tb_letter[OxO98b9[0x5]]=ParseToString(element[OxO98b9[0x3]].letterSpacing) ;for(var i=0x0;i<sel_letter_unit[OxO98b9[0xa]][OxO98b9[0x9]];i++){var Ox5b=sel_letter_unit.options(i)[OxO98b9[0x5]];if(Ox5b&&element[OxO98b9[0x3]][OxO98b9[0x8]].indexOf(Ox5b)!=-0x1){ sel_letter_unit[OxO98b9[0x1]]=i ;break ;} ;} ;} ;} ; sel_line[OxO98b9[0x5]]=element[OxO98b9[0x3]][OxO98b9[0xb]] ; sel_line_unit[OxO98b9[0x1]]=0x0 ;if(sel_line[OxO98b9[0x1]]==-0x1){if(ParseToString(element[OxO98b9[0x3]].lineHeight)){ tb_line[OxO98b9[0x5]]=ParseToString(element[OxO98b9[0x3]].lineHeight) ;for(var i=0x0;i<sel_line_unit[OxO98b9[0xa]][OxO98b9[0x9]];i++){var Ox5b=sel_line_unit.options(i)[OxO98b9[0x5]];if(Ox5b&&element[OxO98b9[0x3]][OxO98b9[0xb]].indexOf(Ox5b)!=-0x1){ sel_line_unit[OxO98b9[0x1]]=i ;break ;} ;} ;} ;} ; sel_indent_unit[OxO98b9[0x1]]=0x0 ;if(ParseToString(element[OxO98b9[0x3]].textIndent)!=NaN){ tb_indent[OxO98b9[0x5]]=ParseToString(element[OxO98b9[0x3]].textIndent) ;for(var i=0x0;i<sel_indent_unit[OxO98b9[0xa]][OxO98b9[0x9]];i++){var Ox5b=sel_indent_unit.options(i)[OxO98b9[0x5]];if(Ox5b&&element[OxO98b9[0x3]][OxO98b9[0xc]].indexOf(Ox5b)!=-0x1){ sel_indent_unit[OxO98b9[0x1]]=i ;break ;} ;} ;} ; sel_direction[OxO98b9[0x5]]=element[OxO98b9[0x3]][OxO98b9[0xd]] ; sel_writingmode[OxO98b9[0x5]]=element[OxO98b9[0x3]][OxO98b9[0xe]] ;}  ; function SyncTo(element){ element[OxO98b9[0x3]][OxO98b9[0x4]]=sel_align[OxO98b9[0x5]] ; element[OxO98b9[0x3]][OxO98b9[0x6]]=sel_valign[OxO98b9[0x5]] ; element[OxO98b9[0x3]][OxO98b9[0x7]]=sel_justify[OxO98b9[0x5]] ;if(sel_letter[OxO98b9[0x1]]>0x0){ element[OxO98b9[0x3]][OxO98b9[0x8]]=sel_letter[OxO98b9[0x5]] ;} else {if(ParseToString(tb_letter.value)){ element[OxO98b9[0x3]][OxO98b9[0x8]]=ParseToString(tb_letter.value)+sel_letter_unit[OxO98b9[0x5]] ;} else { element[OxO98b9[0x3]][OxO98b9[0x8]]=OxO98b9[0xf] ;} ;} ;if(sel_line[OxO98b9[0x1]]>0x0){ element[OxO98b9[0x3]][OxO98b9[0xb]]=sel_line[OxO98b9[0x5]] ;} else {if(ParseToString(tb_line.value)){ element[OxO98b9[0x3]][OxO98b9[0xb]]=ParseToString(tb_line.value)+sel_line_unit[OxO98b9[0x5]] ;} else { element[OxO98b9[0x3]][OxO98b9[0xb]]=OxO98b9[0xf] ;} ;} ;if(ParseToString(tb_indent.value)){ element[OxO98b9[0x3]][OxO98b9[0xc]]=ParseToString(tb_indent.value)+sel_indent_unit[OxO98b9[0x5]] ;} else { element[OxO98b9[0x3]][OxO98b9[0xc]]=OxO98b9[0xf] ;} ; element[OxO98b9[0x3]][OxO98b9[0xd]]=sel_direction[OxO98b9[0x5]]||OxO98b9[0xf] ; element[OxO98b9[0x3]][OxO98b9[0xe]]=sel_writingmode[OxO98b9[0x5]]||OxO98b9[0xf] ;}  ;

</script>
