<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[TABLE]]</legend>
	<table class="normal">
		<tr>
			<td>[[CellSpacing]]:</td>
			<td><input type="text" id="inp_cellspacing"  onkeypress="event.returnValue=IsDigit();"></td>
			<td>[[CellPadding]]:</td>
			<td><input type="text" id="inp_cellpadding"  onkeypress="event.returnValue=IsDigit();"></td>
		</tr>
		<tr>
			<td>[[Border]]:</td>
			<td><input type="text" id="inp_border"  onkeypress="event.returnValue=IsDigit();"></td>
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
			<td align="right"><input type="checkbox" id="inp_collapse"></td>
			<td><label for="inp_collapse">[[CollapseBorder]]</label></td>
			<td>[[BorderColor]]:</td>
			<td><input type="text" id="inp_bordercolor" oncolorpopup="this.selectedColor=value" style='behavior:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'
					oncolorchange='value=selectedColor'></td>
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
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Caption]] :</td>
			<td><button id="btn_editcaption">[[Insert]]</button><button id="btn_delcaption">[[Delete]]</button></td>
			<td>&nbsp;</td>
			<td>[[THEAD]]:</td>
			<td><button id="btn_insthead">[[Insert]]</button></td>
			
			<td>&nbsp;</td>
			<td>[[TFOOT]]:</td>
			<td><button id="btn_instfoot">[[Insert]]</button></td>
			<td width="5"></td>
			<td><img src="../images/Accessibility.gif"  align="absMiddle" hspace="5"></td>
		</tr>
	</table>
</fieldset>
<fieldset><legend>[[Common]]</legend>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[CssClass]]:</td>
			<td><input type="text" id="inp_class" style="width:80px"></td>
			<td>[[Width]]:</td>
			<td><nobr>
				<input type="text" id="inp_width" style="width:42px">
				<select id="sel_width_unit">
					<option value="px">px</option>
					<option value="%">%</option>
				</select></nobr>
			</td>
			<td>[[Height]]:</td>
			<td><nobr>
				<input type="text" id="inp_height" style="width:42px">
				<select id="sel_height_unit">
					<option value="px">px</option>
					<option value="%">%</option>
				</select></nobr>
			</td>
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

var OxO5bc7=["tHead","tFoot","caption","innerHTML","innerText","[[Caption]]","Unable to delete the caption. Please remove it in HTML source.","[[Delete]]","[[Insert]]","[[Edit]]","display","style","none","disabled","","specified","nodeValue","cellSpacing","value","cellPadding","border","borderColor","borderCollapse","checked","collapse","rules","summary","className","width","length","options","selectedIndex","height","align","styleFloat","textAlign","title","0","%"]; function insertOneRow(Ox6ac,count){var Oxc4=Ox6ac.insertRow();for(var i=0x0;i<count;i++){ Oxc4.insertCell() ;} ;}  ; function btn_insthead.onclick(){if(element[OxO5bc7[0x0]]){ element.deleteTHead() ;} else {var Ox6ad=Table_GetColCount(element);var Ox6ae=element.createTHead(); insertOneRow(Ox6ae,Ox6ad) ;} ;}  ; function btn_instfoot.onclick(){if(element[OxO5bc7[0x1]]){ element.deleteTFoot() ;} else {var Ox6ad=Table_GetColCount(element);var Ox6af=element.createTFoot(); insertOneRow(Ox6af,Ox6ad) ;} ;}  ; function btn_editcaption.onclick(){var Ox6b0=element[OxO5bc7[0x2]];if(Ox6b0!=null){var Oxb0=editor.EditInWindow(Ox6b0.innerHTML,window);if(Oxb0!=null&&Oxb0!=false){ Ox6b0[OxO5bc7[0x3]]=Oxb0 ;} ;} else {var Ox6b0=element.createCaption(); Ox6b0[OxO5bc7[0x4]]=OxO5bc7[0x5] ;} ;}  ; function btn_delcaption.onclick(){if(element[OxO5bc7[0x2]]!=null){ alert(OxO5bc7[0x6]) ;} ;}  ; function UpdateState(){ btn_insthead[OxO5bc7[0x4]]=element[OxO5bc7[0x0]]?OxO5bc7[0x7]:OxO5bc7[0x8] ; btn_instfoot[OxO5bc7[0x4]]=element[OxO5bc7[0x1]]?OxO5bc7[0x7]:OxO5bc7[0x8] ;if(element[OxO5bc7[0x2]]!=null){ btn_editcaption[OxO5bc7[0x4]]=OxO5bc7[0x9] ; btn_editcaption[OxO5bc7[0xb]][OxO5bc7[0xa]]=OxO5bc7[0xc] ; btn_delcaption[OxO5bc7[0xd]]=false ;} else { btn_editcaption[OxO5bc7[0x4]]=OxO5bc7[0x8] ; btn_delcaption[OxO5bc7[0xd]]=true ;} ;}  ;var t_inp_width=OxO5bc7[0xe];var t_inp_height=OxO5bc7[0xe]; function SyncToView(){ function GetAttribute(Ox492){var attr=element.getAttributeNode(Ox492);if(attr==null||!attr[OxO5bc7[0xf]]){return OxO5bc7[0xe];} ;return attr[OxO5bc7[0x10]];}  ; inp_cellspacing[OxO5bc7[0x12]]=GetAttribute(OxO5bc7[0x11]) ; inp_cellpadding[OxO5bc7[0x12]]=GetAttribute(OxO5bc7[0x13]) ; inp_border[OxO5bc7[0x12]]=GetAttribute(OxO5bc7[0x14]) ; inp_bordercolor[OxO5bc7[0x12]]=GetAttribute(OxO5bc7[0x15]) ; inp_collapse[OxO5bc7[0x17]]=element[OxO5bc7[0xb]][OxO5bc7[0x16]]==OxO5bc7[0x18] ; sel_rules[OxO5bc7[0x12]]=GetAttribute(OxO5bc7[0x19]) ; inp_summary[OxO5bc7[0x12]]=GetAttribute(OxO5bc7[0x1a]) ; inp_class[OxO5bc7[0x12]]=element[OxO5bc7[0x1b]] ;if(GetAttribute(OxO5bc7[0x1c])){ t_inp_width=GetAttribute(OxO5bc7[0x1c]) ;} else {if(element[OxO5bc7[0xb]][OxO5bc7[0x1c]]){ t_inp_width=element[OxO5bc7[0xb]][OxO5bc7[0x1c]] ;} ;} ;if(t_inp_width){ inp_width[OxO5bc7[0x12]]=ParseToString(t_inp_width) ;for(var i=0x0;i<sel_width_unit[OxO5bc7[0x1e]][OxO5bc7[0x1d]];i++){var Ox5b=sel_width_unit.options(i)[OxO5bc7[0x12]];if(Ox5b&&t_inp_width.indexOf(Ox5b)!=-0x1){ sel_width_unit[OxO5bc7[0x1f]]=i ;break ;} ;} ;} ;if(GetAttribute(OxO5bc7[0x20])){ t_inp_height=GetAttribute(OxO5bc7[0x20]) ;} else {if(element[OxO5bc7[0xb]][OxO5bc7[0x20]]){ t_inp_height=element[OxO5bc7[0xb]][OxO5bc7[0x20]] ;} ;} ;if(t_inp_height){ inp_height[OxO5bc7[0x12]]=ParseToString(t_inp_height) ;for(var i=0x0;i<sel_height_unit[OxO5bc7[0x1e]][OxO5bc7[0x1d]];i++){var Ox5b=sel_height_unit.options(i)[OxO5bc7[0x12]];if(Ox5b&&t_inp_height.indexOf(Ox5b)!=-0x1){ sel_height_unit[OxO5bc7[0x1f]]=i ;break ;} ;} ;} ; sel_align[OxO5bc7[0x12]]=element[OxO5bc7[0x21]] ; sel_float[OxO5bc7[0x12]]=element[OxO5bc7[0xb]][OxO5bc7[0x22]] ; sel_textalign[OxO5bc7[0x12]]=element[OxO5bc7[0xb]][OxO5bc7[0x23]] ; inp_tooltip[OxO5bc7[0x12]]=element[OxO5bc7[0x24]] ;}  ; function SyncTo(element){ element[OxO5bc7[0x15]]=inp_bordercolor[OxO5bc7[0x12]] ; element[OxO5bc7[0xb]][OxO5bc7[0x16]]=inp_collapse[OxO5bc7[0x17]]?OxO5bc7[0x18]:OxO5bc7[0xe] ; element[OxO5bc7[0x19]]=sel_rules[OxO5bc7[0x12]]||OxO5bc7[0xe] ; element[OxO5bc7[0x1a]]=inp_summary[OxO5bc7[0x12]] ; element[OxO5bc7[0x1b]]=inp_class[OxO5bc7[0x12]] ; element[OxO5bc7[0x11]]=inp_cellspacing[OxO5bc7[0x12]] ; element[OxO5bc7[0x13]]=inp_cellpadding[OxO5bc7[0x12]] ;if(inp_border[OxO5bc7[0x12]]==OxO5bc7[0xe]){ element[OxO5bc7[0x14]]=OxO5bc7[0x25] ;} else { element[OxO5bc7[0x14]]=inp_border[OxO5bc7[0x12]] ;} ;if(inp_width[OxO5bc7[0x12]]==OxO5bc7[0xe]){ element.removeAttribute(OxO5bc7[0x1c]) ; element[OxO5bc7[0xb]][OxO5bc7[0x1c]]=OxO5bc7[0xe] ;} else { t_inp_width=inp_width[OxO5bc7[0x12]] ;if(sel_width_unit[OxO5bc7[0x12]]==OxO5bc7[0x26]){ t_inp_width=inp_width[OxO5bc7[0x12]]+sel_width_unit[OxO5bc7[0x12]] ;} ;if(element[OxO5bc7[0xb]][OxO5bc7[0x1c]]&&element[OxO5bc7[0x1c]]){ element[OxO5bc7[0xb]][OxO5bc7[0x1c]]=t_inp_width ; element[OxO5bc7[0x1c]]=t_inp_width ;} else {if(element[OxO5bc7[0xb]][OxO5bc7[0x1c]]){ element[OxO5bc7[0xb]][OxO5bc7[0x1c]]=t_inp_width ;} else { element[OxO5bc7[0x1c]]=t_inp_width ;} ;} ;} ;if(inp_height[OxO5bc7[0x12]]==OxO5bc7[0xe]){ element.removeAttribute(OxO5bc7[0x20]) ; element[OxO5bc7[0xb]][OxO5bc7[0x20]]=OxO5bc7[0xe] ;} else { t_inp_height=inp_height[OxO5bc7[0x12]] ;if(sel_height_unit[OxO5bc7[0x12]]==OxO5bc7[0x26]){ t_inp_height=inp_height[OxO5bc7[0x12]]+sel_height_unit[OxO5bc7[0x12]] ;} ; t_inp_height=inp_height[OxO5bc7[0x12]]+sel_height_unit[OxO5bc7[0x12]] ;if(element[OxO5bc7[0xb]][OxO5bc7[0x20]]&&element[OxO5bc7[0x20]]){ element[OxO5bc7[0xb]][OxO5bc7[0x20]]=t_inp_height ; element[OxO5bc7[0x20]]=t_inp_height ;} else {if(element[OxO5bc7[0xb]][OxO5bc7[0x20]]){ element[OxO5bc7[0xb]][OxO5bc7[0x20]]=t_inp_height ;} else { element[OxO5bc7[0x20]]=t_inp_height ;} ;} ;} ; element[OxO5bc7[0x21]]=sel_align[OxO5bc7[0x12]] ; element[OxO5bc7[0xb]][OxO5bc7[0x22]]=sel_float[OxO5bc7[0x12]] ; element[OxO5bc7[0xb]][OxO5bc7[0x23]]=sel_textalign[OxO5bc7[0x12]] ; element[OxO5bc7[0x24]]=inp_tooltip[OxO5bc7[0x12]] ;if(element[OxO5bc7[0x24]]==OxO5bc7[0xe]){ element.removeAttribute(OxO5bc7[0x24]) ;} ;if(element[OxO5bc7[0x1a]]==OxO5bc7[0xe]){ element.removeAttribute(OxO5bc7[0x1a]) ;} ;if(element[OxO5bc7[0x1b]]==OxO5bc7[0xe]){ element.removeAttribute(OxO5bc7[0x1b]) ;} ;}  ;

</script>
