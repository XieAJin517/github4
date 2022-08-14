<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset>
	<legend>
	[[Cursor]]
	</legend>
	<select id=sel_cursor>
		<option value="">[[NotSet]]</option>
		<option value="Default">[[Default]]</option>
		<option value="Move">[[Move]]</option>
		<option value="Text">Text</option>
		<option value="Wait">Wait</option>
		<option value="Help">Help</option>
		<!-- x-resize -->
	</select>
</fieldset>

<fieldset>
	<legend>
	[[Filter]]
	</legend>
	<input type=text id=inp_filter style="width:240px"> <!--button filter builder-->
</fieldset>
<div id="outer"><div id="div_demo">[[DemoText]]</div></div>
<script>

var OxOfdfe=["cssText","style","cursor","value","filter"]; function UpdateState(){ div_demo[OxOfdfe[0x1]][OxOfdfe[0x0]]=element[OxOfdfe[0x1]][OxOfdfe[0x0]] ;}  ; function SyncToView(){ sel_cursor[OxOfdfe[0x3]]=element[OxOfdfe[0x1]][OxOfdfe[0x2]] ; inp_filter[OxOfdfe[0x3]]=element[OxOfdfe[0x1]][OxOfdfe[0x4]] ;}  ; function SyncTo(element){ element[OxOfdfe[0x1]][OxOfdfe[0x2]]=sel_cursor[OxOfdfe[0x3]] ; element[OxOfdfe[0x1]][OxOfdfe[0x4]]=inp_filter[OxOfdfe[0x3]] ;}  ;

</script>
