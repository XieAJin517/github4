<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset>
<legend>[[Input]]</legend>
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
		<tr>
			<td>[[CssClass]]:</td>
			<td><input type="text" id="inp_class" style="width:100px"></td>
		</tr>
	</table>
</fieldset>
<script>

var OxOe3de=["inp_name","inp_id","inp_cols","inp_rows","inp_value","inp_class","name","value","id","cols","rows","className","Please enter a valid number."];var inp_name=document.getElementById(OxOe3de[0x0]);var inp_id=document.getElementById(OxOe3de[0x1]);var inp_cols=document.getElementById(OxOe3de[0x2]);var inp_rows=document.getElementById(OxOe3de[0x3]);var inp_value=document.getElementById(OxOe3de[0x4]);var inp_class=document.getElementById(OxOe3de[0x5]); function SyncToView(){ inp_name[OxOe3de[0x7]]=element[OxOe3de[0x6]] ; inp_id[OxOe3de[0x7]]=element[OxOe3de[0x8]] ; inp_value[OxOe3de[0x7]]=element[OxOe3de[0x7]] ; inp_cols[OxOe3de[0x7]]=element[OxOe3de[0x9]] ; inp_rows[OxOe3de[0x7]]=element[OxOe3de[0xa]] ; inp_class[OxOe3de[0x7]]=element[OxOe3de[0xb]] ;}  ; function SyncTo(){ element[OxOe3de[0x6]]=inp_name[OxOe3de[0x7]] ; element[OxOe3de[0x8]]=inp_id[OxOe3de[0x7]] ; element[OxOe3de[0x7]]=inp_value[OxOe3de[0x7]] ; element[OxOe3de[0xb]]=inp_class[OxOe3de[0x7]] ;try{ element[OxOe3de[0x9]]=inp_cols[OxOe3de[0x7]] ; element[OxOe3de[0xa]]=inp_rows[OxOe3de[0x7]] ;} catch(er){ alert(OxOe3de[0xc]) ;} ;}  ;

</script>
