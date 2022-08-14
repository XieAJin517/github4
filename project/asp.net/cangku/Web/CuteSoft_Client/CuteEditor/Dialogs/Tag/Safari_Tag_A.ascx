<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Hyperlink_Information]]</legend>
			<table class="normal">
				<tr>
					<td style="width:60px">[[Url]]:</td>
					<td><input type="text" id="inp_src" style="width:260px"></td>
					<td></td>
				</tr>
				<tr>
					<td>[[Target]]</td>
					<td><SELECT id="sel_target" NAME="sel_target">
							<OPTION value="">[[NotSet]]</OPTION>
							<OPTION value="_blank">[[Newwindow]]</OPTION>
							<OPTION value="_self">[[Samewindow]]</OPTION>
							<OPTION value="_top">[[Topmostwindow]]</OPTION>
							<OPTION value="_parent">[[Parentwindow]]</OPTION>
						</SELECT>
					</td>
				</tr>
				<tr>
					<td style="width:60px">[[Title]]:</td>
					<td><input type="text" id="inp_title" style="width:260px"></td>
				</tr>
				<tr>
					<td style="width:60px">[[CssClass]]:</td>
					<td><input type="text" id="inp_cssclass" style="width:260px"></td>
				</tr>
			</table>
		</fieldset>
<script>

	var OxO574c=["dialogArguments","innerHTML","href","value","inp_src","target","sel_target","className","inp_cssclass","title","inp_title","length","childNodes","selectedIndex"];var element=top[OxO574c[0x0]];var linkhtml; linkhtml=element[OxO574c[0x1]] ; function SyncToView(){if(element){try{if(element.getAttribute(OxO574c[0x2])){ document.getElementById(OxO574c[0x4])[OxO574c[0x3]]=element.getAttribute(OxO574c[0x2]) ;} ;} catch(e){} ;if(element[OxO574c[0x5]]){ document.getElementById(OxO574c[0x6])[OxO574c[0x3]]=element[OxO574c[0x5]] ;} ;if(element[OxO574c[0x7]]){ document.getElementById(OxO574c[0x8])[OxO574c[0x3]]=element[OxO574c[0x7]] ;} ;if(element[OxO574c[0x9]]){ document.getElementById(OxO574c[0xa])[OxO574c[0x3]]=element[OxO574c[0x9]] ;} ;} ;}  ; function SyncTo(element){ element[OxO574c[0x2]]=document.getElementById(OxO574c[0x4])[OxO574c[0x3]] ;if(element[OxO574c[0xc]][OxO574c[0xb]]==0x0||document.getElementById(OxO574c[0xa])[OxO574c[0x3]]){ element[OxO574c[0x1]]=linkhtml ;} ;if(document.getElementById(OxO574c[0xa])[OxO574c[0x3]]){ element[OxO574c[0x9]]=document.getElementById(OxO574c[0xa])[OxO574c[0x3]] ;} ;if(document.getElementById(OxO574c[0x8])[OxO574c[0x3]]){ element[OxO574c[0x7]]=document.getElementById(OxO574c[0x8])[OxO574c[0x3]] ;} ;if(document.getElementById(OxO574c[0x6])[OxO574c[0xd]]!=-0x1){ element[OxO574c[0x5]]=document.getElementById(OxO574c[0x6])[OxO574c[0x3]] ;} ;}  ;
</script>
