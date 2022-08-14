<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Input]]</legend>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Name]]:</td>
			<td><input type="text" id="inp_name" style="width:100px"></td>
			<td style='width:60px'>[[ID]]:</td>
			<td><input type="text" id="inp_id" style="width:100px"></td>
		</tr>
		<tr>
			<td style='width:60px'>[[Columns]]:</td>
			<td><input type="text" id="inp_cols" style="width:100px"></td>
			<td style='width:60px'>[[Rows]]:</td>
			<td><input type="text" id="inp_rows" style="width:100px"></td>
		</td>
		<tr>
			<td style='width:60px'>[[Value]]:</td>
			<td colspan="3"><textarea rows="4" style="width:300px" id="inp_value"></textarea></td>
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
				<img src="../images/colorpicker.gif"  align="absMiddle" style='BEHAVIOR:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'
					oncolorchange="inp_forecolor.value=this.selectedColor; inp_forecolor.style.backgroundColor=this.selectedColor; FireUIChanged()"></td>
			<td>[[BackColor]]</td>
			<td>
				<input type="text" id="inp_backcolor" name="inp_backcolor" size="7" style="WIDTH:57px">
				<img src="../images/colorpicker.gif"  align="absMiddle" style='BEHAVIOR:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'
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

var OxO9175=["name","value","id","cols","rows","className","width","style","height","align","styleFloat","textAlign","title","color","backgroundColor","Please enter a valid number."]; function UpdateState(){}  ; function SyncToView(){ inp_name[OxO9175[0x1]]=element[OxO9175[0x0]] ; inp_id[OxO9175[0x1]]=element[OxO9175[0x2]] ; inp_value[OxO9175[0x1]]=element[OxO9175[0x1]] ; inp_cols[OxO9175[0x1]]=element[OxO9175[0x3]] ; inp_rows[OxO9175[0x1]]=element[OxO9175[0x4]] ; inp_class[OxO9175[0x1]]=element[OxO9175[0x5]] ; inp_width[OxO9175[0x1]]=element[OxO9175[0x7]][OxO9175[0x6]] ; inp_height[OxO9175[0x1]]=element[OxO9175[0x7]][OxO9175[0x8]] ; sel_align[OxO9175[0x1]]=element[OxO9175[0x9]] ; sel_float[OxO9175[0x1]]=element[OxO9175[0x7]][OxO9175[0xa]] ; sel_textalign[OxO9175[0x1]]=element[OxO9175[0x7]][OxO9175[0xb]] ; inp_tooltip[OxO9175[0x1]]=element[OxO9175[0xc]] ; inp_forecolor[OxO9175[0x1]]=element[OxO9175[0x7]][OxO9175[0xd]] ; inp_forecolor[OxO9175[0x7]][OxO9175[0xe]]=element[OxO9175[0x7]][OxO9175[0xd]] ; inp_backcolor[OxO9175[0x1]]=element[OxO9175[0x7]][OxO9175[0xe]] ; inp_backcolor[OxO9175[0x7]][OxO9175[0xe]]=element[OxO9175[0x7]][OxO9175[0xe]] ;}  ; function SyncTo(element){ element[OxO9175[0x0]]=inp_name[OxO9175[0x1]] ; element[OxO9175[0x2]]=inp_id[OxO9175[0x1]] ; element[OxO9175[0x1]]=inp_value[OxO9175[0x1]] ; element[OxO9175[0x5]]=inp_class[OxO9175[0x1]] ;try{ element[OxO9175[0x7]][OxO9175[0x6]]=inp_width[OxO9175[0x1]] ; element[OxO9175[0x7]][OxO9175[0x8]]=inp_height[OxO9175[0x1]] ; element[OxO9175[0x3]]=inp_cols[OxO9175[0x1]] ; element[OxO9175[0x4]]=inp_rows[OxO9175[0x1]] ;} catch(er){ alert(OxO9175[0xf]) ;} ;if(sel_align[OxO9175[0x1]]){ element[OxO9175[0x9]]=sel_align[OxO9175[0x1]] ;} ;if(sel_float[OxO9175[0x1]]){ element[OxO9175[0x7]][OxO9175[0xa]]=sel_float[OxO9175[0x1]] ;} ;if(sel_textalign[OxO9175[0x1]]){ element[OxO9175[0x7]][OxO9175[0xb]]=sel_textalign[OxO9175[0x1]] ;} ;if(inp_tooltip[OxO9175[0x1]]){ element[OxO9175[0xc]]=inp_tooltip[OxO9175[0x1]] ;} ;if(inp_forecolor[OxO9175[0x1]]){ element[OxO9175[0x7]][OxO9175[0xd]]=inp_forecolor[OxO9175[0x1]] ;} ;if(inp_backcolor[OxO9175[0x1]]){ element[OxO9175[0x7]][OxO9175[0xe]]=inp_backcolor[OxO9175[0x1]] ;} ;}  ;

</script>
