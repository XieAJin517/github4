<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Input]]</legend>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Name]]:</td>
			<td><input type="text" id="inp_name" style="width:100px"></td>
			<td style='width:60px'>[[ID]]:</td>
			<td><input type="text" id="inp_id" style="width:100px"></td>
		</td>
	</table>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Type]]:</td>
			<td><input type="text" id="inp_type" readonly="true" disabled="true" style="width:100px"></td>
			<td style='width:60px'><label for="inp_checked">[[Checked]]</label>:</td>
			<td><input type="checkbox" id="inp_checked"><label for="inp_checked">[[Checked]]</label></td>
		</td>
	</table>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Value]]:</td>
			<td><input type="text" id="inp_value" style="width:268px"></td>
			<td></td>
		</tr>
	</table>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Src]]:</td>
			<td><input type="text" id="inp_src" style="width:268px"></td>
			<td><button id="btnbrowse">[[Browse]]</button></td>
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

var OxO7ab2=["SelectImage.Aspx?settinghash=[[_setting_]]\x26type=gif,jpg,jpeg,png,bmp\x26file=","\x26[[DNN_Arg]]","[[SelectFileDialogOption]]","value","name","id","src","type","checked","className","width","style","height","align","styleFloat","textAlign","title","color","backgroundColor","Please enter a valid number."]; function btnbrowse.onclick(){var Ox74=showModalDialog(OxO7ab2[0x0]+escape(inp_src.value)+OxO7ab2[0x1],null,OxO7ab2[0x2]);if(Ox74){ inp_src[OxO7ab2[0x3]]=Ox74 ;} ;}  ; function UpdateState(){}  ; function SyncToView(){ inp_name[OxO7ab2[0x3]]=element[OxO7ab2[0x4]] ; inp_id[OxO7ab2[0x3]]=element[OxO7ab2[0x5]] ; inp_value[OxO7ab2[0x3]]=element[OxO7ab2[0x3]] ; inp_src[OxO7ab2[0x3]]=element[OxO7ab2[0x6]] ; inp_type[OxO7ab2[0x3]]=element[OxO7ab2[0x7]] ; inp_checked[OxO7ab2[0x8]]=element[OxO7ab2[0x8]] ; inp_class[OxO7ab2[0x3]]=element[OxO7ab2[0x9]] ; inp_width[OxO7ab2[0x3]]=element[OxO7ab2[0xb]][OxO7ab2[0xa]] ; inp_height[OxO7ab2[0x3]]=element[OxO7ab2[0xb]][OxO7ab2[0xc]] ; sel_align[OxO7ab2[0x3]]=element[OxO7ab2[0xd]] ; sel_float[OxO7ab2[0x3]]=element[OxO7ab2[0xb]][OxO7ab2[0xe]] ; sel_textalign[OxO7ab2[0x3]]=element[OxO7ab2[0xb]][OxO7ab2[0xf]] ; inp_tooltip[OxO7ab2[0x3]]=element[OxO7ab2[0x10]] ; inp_forecolor[OxO7ab2[0x3]]=element[OxO7ab2[0xb]][OxO7ab2[0x11]] ; inp_backcolor[OxO7ab2[0x3]]=element[OxO7ab2[0xb]][OxO7ab2[0x12]] ;}  ; function SyncTo(element){ element[OxO7ab2[0x4]]=inp_name[OxO7ab2[0x3]] ; element[OxO7ab2[0x5]]=inp_id[OxO7ab2[0x3]] ;if(inp_value[OxO7ab2[0x3]]){ element[OxO7ab2[0x3]]=inp_value[OxO7ab2[0x3]] ;} ;if(inp_src[OxO7ab2[0x3]]){ element[OxO7ab2[0x6]]=inp_src[OxO7ab2[0x3]] ;} ; element[OxO7ab2[0x8]]=inp_checked[OxO7ab2[0x8]] ;if(inp_class[OxO7ab2[0x3]]){ element[OxO7ab2[0x9]]=inp_class[OxO7ab2[0x3]] ;} ;try{ element[OxO7ab2[0xb]][OxO7ab2[0xa]]=inp_width[OxO7ab2[0x3]] ; element[OxO7ab2[0xb]][OxO7ab2[0xc]]=inp_height[OxO7ab2[0x3]] ;} catch(er){ alert(OxO7ab2[0x13]) ;} ;if(sel_align[OxO7ab2[0x3]]){ element[OxO7ab2[0xd]]=sel_align[OxO7ab2[0x3]] ;} ; element[OxO7ab2[0xb]][OxO7ab2[0xe]]=sel_float[OxO7ab2[0x3]] ; element[OxO7ab2[0xb]][OxO7ab2[0xf]]=sel_textalign[OxO7ab2[0x3]] ;if(inp_tooltip[OxO7ab2[0x3]]){ element[OxO7ab2[0x10]]=inp_tooltip[OxO7ab2[0x3]] ;} ; element[OxO7ab2[0xb]][OxO7ab2[0x11]]=inp_forecolor[OxO7ab2[0x3]] ; element[OxO7ab2[0xb]][OxO7ab2[0x12]]=inp_backcolor[OxO7ab2[0x3]] ;}  ;

</script>
