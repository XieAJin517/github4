<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Input]]</legend>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Name]]:</td>
			<td><input type="text" id="inp_name" style="width:80px"></td>
			<td style='width:30px'>[[ID]]:</td>
			<td><input type="text" id="inp_id" style="width:80px"></td>
			<td style='width:40px'>[[Size]]:</td>
			<td><input type="text" id="inp_size" style="width:60px"></td>
		</td>
	</table>
	<table class="normal">
		<tr>
			<td style='width:60px' valign="top">[[Items]]:</td>
			<td><select size="8" id="list_options" style="width:180px"></select></td>
			<td valign="top">
				<table class="normal">
					<tr>
						<td style='width:60px'>[[Text]]:</td>
						<td><input type="text" id="inp_item_text" style="width:100px"></td>
					</tr>
					<tr>
						<td style='width:60px'>[[Value]]:</td>
						<td><input type="text" id="inp_item_value" style="width:100px"></td>
					</tr>
				</table>
				<table class="normal">
					<tr>
						<td style='width:60px'>
							[[ForeColor]]</td>
						<td><input type="text" id="inp_item_forecolor" name="inp_item_forecolor" size="7" style="WIDTH:57px">
							<img src="../images/colorpicker.gif" align="absMiddle" style='BEHAVIOR:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'
								oncolorchange="inp_item_forecolor.value=this.selectedColor; inp_item_forecolor.style.backgroundColor=this.selectedColor; FireUIChanged()"></td>
					</tr>
					<tr>
						<td>[[BackColor]]</td>
						<td>
							<input type="text" id="inp_item_backcolor" name="inp_item_backcolor" size="7" style="WIDTH:57px">
							<img src="../images/colorpicker.gif" align="absMiddle" style='BEHAVIOR:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'
								oncolorchange="inp_item_backcolor.value=this.selectedColor; inp_item_backcolor.style.backgroundColor=this.selectedColor; FireUIChanged()"></td>
					</tr>
				</table>
				<div>
					<button id="btnInsertItem">[[Insert]]</button> <button id="btnUpdateItem">[[Update]]</button>
					<button id="btnDeleteItem">[[Delete]]</button>
				</div>
			</td>
		</tr>
	</table>
	<table class="normal">
		<tr>
		</tr>
	</table>
</fieldset>
<fieldset><legend>[[General]]</legend>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[CssClass]]:</td>
			<td><input type="text" id="inp_class" style="width:100px"></td>
			<td width="10" nowrap></td>
			<td>[[Width]] :</td>
			<td><input type="text" id="inp_width" style="width:60px"></td>
			<td>Height :</td>
			<td><input type="text" id="inp_height" style="width:60px"></td>
		</tr>
	</table>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Alignment]]:</td>
			<td style='width:70px'><select id="sel_align">
					<option value="">[[NotSet]]</option>
					<option value="left">[[Left]]</option>
					<option value="center">[[Center]]</option>
					<option value="right">[[Right]]</option>
				</select>
			</td>
			<td>
				[[Text-Align]]:</td>
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
			<td style='width:60px'>
				[[ForeColor]]</td>
			<td><input type="text" id="inp_forecolor" name="inp_forecolor" size="7" style="WIDTH:57px">
				<img src="../images/colorpicker.gif" align="absMiddle" style='BEHAVIOR:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'
					oncolorchange="inp_forecolor.value=this.selectedColor; inp_forecolor.style.backgroundColor=this.selectedColor; FireUIChanged()"></td>
			<td>[[BackColor]]</td>
			<td>
				<input type="text" id="inp_backcolor" name="inp_backcolor" size="7" style="WIDTH:57px">
				<img src="../images/colorpicker.gif" align="absMiddle" style='BEHAVIOR:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'
					oncolorchange="inp_backcolor.value=this.selectedColor; inp_backcolor.style.backgroundColor=this.selectedColor; FireUIChanged()"></td>
		</tr>
	</table>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[title]]:</td>
			<td>
				<textarea id="inp_tooltip" rows="3" style="width:320px"></textarea>
			</td>
		</tr>
	</table>
</fieldset>
<script>
var OxO5a67=["value","text","color","style","backgroundColor","options","selectedIndex","Please select an item first","length","OPTION","document","cssText","name","id","size","className","width","height","align","styleFloat","textAlign","title","Please enter a valid number."]; function SetOption(Ox73){ Ox73[OxO5a67[0x1]]=inp_item_text[OxO5a67[0x0]] ; Ox73[OxO5a67[0x0]]=inp_item_value[OxO5a67[0x0]] ; Ox73[OxO5a67[0x3]][OxO5a67[0x2]]=inp_item_forecolor[OxO5a67[0x0]] ; Ox73[OxO5a67[0x3]][OxO5a67[0x4]]=inp_item_backcolor[OxO5a67[0x0]] ;}  ; function btnInsertItem.onclick(){var Ox73= new Option(); SetOption(Ox73) ; list_options[OxO5a67[0x5]].add(Ox73) ; FireUIChanged() ;}  ; function btnUpdateItem.onclick(){if(list_options[OxO5a67[0x6]]==-0x1){ alert(OxO5a67[0x7]) ;return ;} ;var Ox73=list_options.options(list_options.selectedIndex); SetOption(Ox73) ; FireUIChanged() ;}  ; function btnDeleteItem.onclick(){if(list_options[OxO5a67[0x6]]==-0x1){ alert(OxO5a67[0x7]) ;return ;} ;var Ox693=list_options[OxO5a67[0x6]];var Ox73=list_options.options(list_options.selectedIndex); Ox73.removeNode(true) ;if(list_options[OxO5a67[0x5]][OxO5a67[0x8]]>Ox693){ list_options[OxO5a67[0x6]]=Ox693 ;} else {if(list_options[OxO5a67[0x5]][OxO5a67[0x8]]){ list_options[OxO5a67[0x6]]=list_options[OxO5a67[0x5]][OxO5a67[0x8]]-0x1 ;} ;} ; list_options.ondblclick() ; FireUIChanged() ;}  ; function list_options.ondblclick(){if(list_options[OxO5a67[0x6]]==-0x1){return ;} ;var Ox73=list_options.options(list_options.selectedIndex); inp_item_text[OxO5a67[0x0]]=Ox73[OxO5a67[0x1]] ; inp_item_value[OxO5a67[0x0]]=Ox73[OxO5a67[0x0]] ; inp_item_forecolor[OxO5a67[0x0]]=inp_item_forecolor[OxO5a67[0x3]][OxO5a67[0x4]]=Ox73[OxO5a67[0x3]][OxO5a67[0x2]] ; inp_item_backcolor[OxO5a67[0x0]]=inp_item_backcolor[OxO5a67[0x3]][OxO5a67[0x4]]=Ox73[OxO5a67[0x3]][OxO5a67[0x4]] ;}  ; function CopySelect(Ox695,Ox696){ Ox696[OxO5a67[0x5]][OxO5a67[0x8]]=0x0 ;for(var i=0x0;i<Ox695[OxO5a67[0x5]][OxO5a67[0x8]];i++){var Ox697=Ox695.options(i);var Ox698=Ox696[OxO5a67[0xa]].createElement(OxO5a67[0x9]); Ox698[OxO5a67[0x0]]=Ox697[OxO5a67[0x0]] ; Ox698[OxO5a67[0x1]]=Ox697[OxO5a67[0x1]] ; Ox698[OxO5a67[0x3]][OxO5a67[0xb]]=Ox697[OxO5a67[0x3]][OxO5a67[0xb]] ; Ox696[OxO5a67[0x5]].add(Ox698) ;} ; Ox696[OxO5a67[0x6]]=Ox695[OxO5a67[0x6]] ;}  ; function UpdateState(){}  ; function SyncToView(){ inp_name[OxO5a67[0x0]]=element[OxO5a67[0xc]] ; inp_id[OxO5a67[0x0]]=element[OxO5a67[0xd]] ; inp_size[OxO5a67[0x0]]=element[OxO5a67[0xe]] ; inp_class[OxO5a67[0x0]]=element[OxO5a67[0xf]] ; inp_width[OxO5a67[0x0]]=element[OxO5a67[0x3]][OxO5a67[0x10]] ; inp_height[OxO5a67[0x0]]=element[OxO5a67[0x3]][OxO5a67[0x11]] ; sel_align[OxO5a67[0x0]]=element[OxO5a67[0x12]] ; sel_float[OxO5a67[0x0]]=element[OxO5a67[0x3]][OxO5a67[0x13]] ; sel_textalign[OxO5a67[0x0]]=element[OxO5a67[0x3]][OxO5a67[0x14]] ; inp_tooltip[OxO5a67[0x0]]=element[OxO5a67[0x15]] ; inp_forecolor[OxO5a67[0x0]]=element[OxO5a67[0x3]][OxO5a67[0x2]] ; inp_backcolor[OxO5a67[0x0]]=element[OxO5a67[0x3]][OxO5a67[0x4]] ; CopySelect(element,list_options) ;}  ; function SyncTo(element){ element[OxO5a67[0xc]]=inp_name[OxO5a67[0x0]] ; element[OxO5a67[0xd]]=inp_id[OxO5a67[0x0]] ; element[OxO5a67[0xe]]=inp_size[OxO5a67[0x0]] ;if(inp_class[OxO5a67[0x0]]){ element[OxO5a67[0xf]]=inp_class[OxO5a67[0x0]] ;} ;try{ element[OxO5a67[0x3]][OxO5a67[0x10]]=inp_width[OxO5a67[0x0]] ; element[OxO5a67[0x3]][OxO5a67[0x11]]=inp_height[OxO5a67[0x0]] ;} catch(er){ alert(OxO5a67[0x16]) ;} ;if(sel_align[OxO5a67[0x0]]){ element[OxO5a67[0x12]]=sel_align[OxO5a67[0x0]] ;} ; element[OxO5a67[0x3]][OxO5a67[0x13]]=sel_float[OxO5a67[0x0]] ; element[OxO5a67[0x3]][OxO5a67[0x14]]=sel_textalign[OxO5a67[0x0]] ;if(inp_tooltip[OxO5a67[0x0]]){ element[OxO5a67[0x15]]=inp_tooltip[OxO5a67[0x0]] ;} ; element[OxO5a67[0x3]][OxO5a67[0x2]]=inp_forecolor[OxO5a67[0x0]] ; element[OxO5a67[0x3]][OxO5a67[0x4]]=inp_backcolor[OxO5a67[0x0]] ; CopySelect(list_options,element) ;}  ;

</script>
