<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Attributes]]</legend>
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

var OxOa84f=["className","value","width","style","height","align","styleFloat","textAlign","title","color","backgroundColor","Please enter a valid number."]; function UpdateState(){}  ; function SyncToView(){ inp_class[OxOa84f[0x1]]=element[OxOa84f[0x0]] ; inp_width[OxOa84f[0x1]]=element[OxOa84f[0x3]][OxOa84f[0x2]] ; inp_height[OxOa84f[0x1]]=element[OxOa84f[0x3]][OxOa84f[0x4]] ; sel_align[OxOa84f[0x1]]=element[OxOa84f[0x5]] ; sel_float[OxOa84f[0x1]]=element[OxOa84f[0x3]][OxOa84f[0x6]] ; sel_textalign[OxOa84f[0x1]]=element[OxOa84f[0x3]][OxOa84f[0x7]] ; inp_tooltip[OxOa84f[0x1]]=element[OxOa84f[0x8]] ; inp_forecolor[OxOa84f[0x1]]=element[OxOa84f[0x3]][OxOa84f[0x9]] ; inp_forecolor[OxOa84f[0x3]][OxOa84f[0xa]]=inp_forecolor[OxOa84f[0x1]] ; inp_backcolor[OxOa84f[0x1]]=element[OxOa84f[0x3]][OxOa84f[0xa]] ; inp_backcolor[OxOa84f[0x3]][OxOa84f[0xa]]=inp_backcolor[OxOa84f[0x1]] ;}  ; function SyncTo(element){ element[OxOa84f[0x0]]=inp_class[OxOa84f[0x1]] ;try{ element[OxOa84f[0x3]][OxOa84f[0x2]]=inp_width[OxOa84f[0x1]] ; element[OxOa84f[0x3]][OxOa84f[0x4]]=inp_height[OxOa84f[0x1]] ;} catch(er){ alert(OxOa84f[0xb]) ;} ; element[OxOa84f[0x5]]=sel_align[OxOa84f[0x1]] ; element[OxOa84f[0x3]][OxOa84f[0x6]]=sel_float[OxOa84f[0x1]] ; element[OxOa84f[0x3]][OxOa84f[0x7]]=sel_textalign[OxOa84f[0x1]] ; element[OxOa84f[0x8]]=inp_tooltip[OxOa84f[0x1]] ; element[OxOa84f[0x3]][OxOa84f[0x9]]=inp_forecolor[OxOa84f[0x1]] ; element[OxOa84f[0x3]][OxOa84f[0xa]]=inp_backcolor[OxOa84f[0x1]] ;}  ;

</script>
