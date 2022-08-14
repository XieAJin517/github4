<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[Hyperlink_Information]]</legend>
	<table class="normal">
		<tr>
			<td style="width:60px">[[Url]]:</td>
			<td><input type="text" id="inp_src" style="width:260px"></td>
			<td><button id="btnbrowse">[[Browse]]</button></td>
		</tr>
	</table>
	<table class="normal">
		<tr>
			<td style="width:60px">[[Type]]:</td>
			<td>
				<select id=sel_protocol onchange="sel_protocol_change()">
					<option value="http://">http://</option>
					<option value="https://">https://</option>
					<option value="ftp://">ftp://</option>
					<option value="news://">news://</option>
					<option value="mailto:">mailto:</option>
					<!-- last one : if move this to front , change the script too -->
					<option value="others">[[Other]]</option>
				</select>
			</td>
			<td>[[Color]]:</td>
			<td><input type="text" id="inp_color" style='behavior:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'
					oncolorpopup="this.selectedColor=value" oncolorchange="this.value=this.selectedColor;inp_color.style.backgroundColor=this.selectedColor;FireUIChanged()"></td>
		</tr>
	</table>
	<table class="normal">
		<tr>
			<td style="width:60px">[[Title]]:</td>
			<td><input type="text" id="inp_title" style="width:260px"></td>
		</tr>
		<tr>
			<td style="width:60px">[[CssClass]]:</td>
			<td><input type="text" id="inp_cssclass" style="width:260px"></td>
		</tr>
	</table>
	<table class="normal">
		<tr>
			<td style="width:60px">[[Target]]</td>
			<td><SELECT id="inp_target" NAME="inp_target">
					<OPTION value="">[[NotSet]]</OPTION>
					<OPTION value="_blank">[[Newwindow]]</OPTION>
					<OPTION value="_self">[[Samewindow]]</OPTION>
					<OPTION value="_top">[[Topmostwindow]]</OPTION>
					<OPTION value="_parent">[[Parentwindow]]</OPTION>
				</SELECT>
			</td>
		</tr>		
	</table>
</fieldset>
<script>


var OxO4794=["SelectFile.Aspx?settinghash=[[_setting_]]\x26type=gif,jpg,jpeg,png,bmp\x26file=","\x26[[DNN_Arg]]","[[SelectFileDialogOption]]","value","","length","options","://",":","others","selectedIndex","href","color","style","backgroundColor","className","title","target","innerHTML","\x3Cp\x3E\x26nbsp;\x3C/p\x3E","\x3Cp\x3E\x26#160;\x3C/p\x3E","\x3Cp\x3E\x3C/p\x3E","\x3Cdiv\x3E\x26#160;\x3C/div\x3E","\x3Cdiv\x3E\x26nbsp;\x3C/div\x3E","\x3Cdiv\x3E\x3C/div\x3E","$1"]; function btnbrowse.onclick(){var Ox74=showModalDialog(OxO4794[0x0]+escape(inp_src.value)+OxO4794[0x1],null,OxO4794[0x2]);if(Ox74){ inp_src[OxO4794[0x3]]=Ox74 ;} ;}  ; function sel_protocol_change(){var src=inp_src[OxO4794[0x3]].replace(/$\s*/,OxO4794[0x4]);for(var i=0x0;i<sel_protocol[OxO4794[0x6]][OxO4794[0x5]];i++){var Ox5b=sel_protocol.options(i)[OxO4794[0x3]];if(src.substr(0x0,Ox5b.length).toLowerCase()==Ox5b){ src=src.substr(Ox5b[OxO4794[0x5]],src[OxO4794[0x5]]-Ox5b.length) ;break ;} ;} ;var Ox5be=src.indexOf(OxO4794[0x7]);if(Ox5be!=-0x1){ src=src.substr(Ox5be+0x3,src[OxO4794[0x5]]-0x3-Ox5be) ;} ;var Ox5be=src.indexOf(OxO4794[0x8]);if(Ox5be!=-0x1){ src=src.substr(Ox5be+0x1,src[OxO4794[0x5]]-0x1-Ox5be) ;} ;var Ox5bf=sel_protocol[OxO4794[0x3]];if(Ox5bf==OxO4794[0x9]){ Ox5bf=OxO4794[0x4] ;} ; inp_src[OxO4794[0x3]]=Ox5bf+src ;}  ; function Update_sel_protocol(src){var Ox3e3=false;for(var i=0x0;i<sel_protocol[OxO4794[0x6]][OxO4794[0x5]];i++){var Ox5b=sel_protocol.options(i)[OxO4794[0x3]];if(src.substr(0x0,Ox5b.length).toLowerCase()==Ox5b){if(sel_protocol[OxO4794[0xa]]!=i){ sel_protocol[OxO4794[0xa]]=i ;} ; Ox3e3=true ;break ;} ;} ;if(!Ox3e3){ sel_protocol[OxO4794[0xa]]=sel_protocol[OxO4794[0x6]][OxO4794[0x5]]-0x1 ;} ;}  ; function UpdateState(){}  ; function SyncToView(){var src=element[OxO4794[0xb]].replace(/$\s*/,OxO4794[0x4]); Update_sel_protocol(src) ;if(UseRelativeLinks&&BaseHref){ src=RemoveServerNamesFromUrl(src,BaseHref) ;} ; inp_src[OxO4794[0x3]]=src ;if(element[OxO4794[0xd]][OxO4794[0xc]]){ inp_color[OxO4794[0x3]]=element[OxO4794[0xd]][OxO4794[0xc]] ; inp_color[OxO4794[0xd]][OxO4794[0xe]]=inp_color[OxO4794[0x3]] ;} ;if(element[OxO4794[0xf]]){ inp_cssclass[OxO4794[0x3]]=element[OxO4794[0xf]] ;} ;if(element[OxO4794[0x10]]){ inp_title[OxO4794[0x3]]=element[OxO4794[0x10]] ;} ;if(element[OxO4794[0x11]]){ inp_target[OxO4794[0x3]]=element[OxO4794[0x11]] ;} ;}  ; function SyncTo(element){ element[OxO4794[0xb]]=inp_src[OxO4794[0x3]] ; Update_sel_protocol(element[OxO4794[0xb]].replace(/$\s*/,OxO4794[0x4])) ;try{ element[OxO4794[0xd]][OxO4794[0xc]]=inp_color[OxO4794[0x3]]||OxO4794[0x4] ;} catch(x){ element[OxO4794[0xd]][OxO4794[0xc]]=OxO4794[0x4] ;} ; element[OxO4794[0xf]]=inp_cssclass[OxO4794[0x3]] ; element[OxO4794[0x11]]=inp_target[OxO4794[0x3]] ; element[OxO4794[0x10]]=inp_title[OxO4794[0x3]] ;if(element[OxO4794[0x10]]==OxO4794[0x4]){ element.removeAttribute(OxO4794[0x10]) ;} ;if(element[OxO4794[0x11]]==OxO4794[0x4]){ element.removeAttribute(OxO4794[0x11]) ;} ;if(element[OxO4794[0xf]]==OxO4794[0x4]){ element.removeAttribute(OxO4794[0xf]) ;} ;var Oxb0=element[OxO4794[0x12]];switch(Oxb0.toLowerCase()){case OxO4794[0x18]:case OxO4794[0x17]:case OxO4794[0x16]:case OxO4794[0x15]:case OxO4794[0x14]:case OxO4794[0x13]: element[OxO4794[0x12]]=OxO4794[0x4] ;break ;default:break ;;;;;;;;} ;}  ; function RemoveServerNamesFromUrl(Ox3e6,BaseHref){var Ox3e8=BaseHref; Ox3e8=Ox3e8.replace(/^(https?:\/\/[^\/]+)(.*)$/,OxO4794[0x19]) ; serverre= new RegExp(Ox3e8) ;return Ox3e6.replace(serverre,OxO4794[0x4]);}  ;

</script>
