<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[InsertForm]]</legend>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Name]]:</td>
			<td><input type="text" id="inp_name" style="width:200px"></td>
		</tr>
		<tr>
			<td style='width:60px'>[[ID]]:</td>
			<td><input type="text" id="inp_id" style="width:200px"></td>
		</tr>
		<tr>
			<td style='width:60px'>[[Action]]:</td>
			<td><input type="text" id="inp_action" style="width:200px"></td>
		</tr>
		<tr>
			<td>[[Method]]:</td>
			<td>
				<select id="sel_Method" style="width:200px">
					<option value="post">post</option>
					<option value="get">get</option>
				</select>
			</td>
		</tr>
	</table>
</fieldset>
<script>

var OxO3d19=["name","value","id","action","method"]; function UpdateState(){}  ; function SyncToView(){ inp_name[OxO3d19[0x1]]=element[OxO3d19[0x0]] ; inp_id[OxO3d19[0x1]]=element[OxO3d19[0x2]] ; inp_action[OxO3d19[0x1]]=element[OxO3d19[0x3]] ; sel_Method[OxO3d19[0x1]]=element[OxO3d19[0x4]] ;}  ; function SyncTo(element){if(inp_name[OxO3d19[0x1]]){ element[OxO3d19[0x0]]=inp_name[OxO3d19[0x1]] ;} ;if(inp_id[OxO3d19[0x1]]){ element[OxO3d19[0x2]]=inp_id[OxO3d19[0x1]] ;} ;if(inp_action[OxO3d19[0x1]]){ element[OxO3d19[0x3]]=inp_action[OxO3d19[0x1]] ;} ;if(sel_Method[OxO3d19[0x1]]){ element[OxO3d19[0x4]]=sel_Method[OxO3d19[0x1]] ;} ;}  ;

</script>
