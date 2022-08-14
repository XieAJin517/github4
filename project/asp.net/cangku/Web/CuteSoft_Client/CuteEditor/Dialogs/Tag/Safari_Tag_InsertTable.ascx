<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<fieldset><legend>[[TABLE]]</legend>
	<table class="normal">
		<tr>
			<td>[[Rows]]:</td>
			<td>
				<select id="sel_rows" style="WIDTH:80px" onChange="SyncToPreview()" NAME="rows">
					<option value="1" selected>1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
				</select>
			</td>
			<td>[[Columns]]:</td>
			<td>				
				<select id="sel_columns" style="WIDTH:80px" onChange="SyncToPreview()" NAME="rows">
					<option value="1" selected>1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td>[[CellSpacing]]:</td>
			<td><input type="text" id="inp_cellspacing" onChange="SyncToPreview()" onkeypress="return IsDigit(event);"></td>
			<td>[[CellPadding]]:</td>
			<td><input type="text" id="inp_cellpadding" onChange="SyncToPreview()" onkeypress="return IsDigit(event);"></td>
		</tr>
		<tr>
			<td>[[Border]]:</td>
			<td><input type="text" id="inp_border" onChange="SyncToPreview()" onkeypress="return IsDigit(event);"></td>
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
			<td colspan=2>
				[[Bordercolor]]:
				<input type="text" id="inp_borderColor" name="inp_borderColor" size="7" style="WIDTH:67px">
				<img id="inp_borderColor_Preview" src="../images/colorpicker.gif"   onclick="SelectColor('inp_borderColor','inp_borderColor_Preview');SyncToPreview();" >
			</td>
			<td colspan=2>[[Backgroundcolor]]:
				<input type="text" id="inp_shade" name="inp_shade" size="7" style="WIDTH:67px">
				<img id="inp_shade_Preview" src="../images/colorpicker.gif"  align="absMiddle" onclick="SelectColor('inp_shade','inp_shade_Preview');SyncToPreview();">
			</td>
		</tr>
		<tr>
			<td colspan=4><input type="checkbox" id="inp_collapse" onChange="SyncToPreview()" >
				<label for="inp_collapse">[[CollapseBorder]]</label>&nbsp;				
			</td>
		</tr>
		
	</table>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Summary]] :</td>
			<td>
				<textarea id="inp_summary" rows="3" style="width:320px" onChange="SyncToPreview()" ></textarea>
			</td>
		</tr>
	</table>
</fieldset>
<fieldset><legend>[[Common]]</legend>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[CssClass]]:</td>
			<td><input type="text" id="inp_class" style="width:120px" onChange="SyncToPreview()" ></td>
			<td>[[Width]]:</td>
			<td><input type="text" id="inp_width" value="400" style="width:60px" onChange="SyncToPreview()" ></td>
			<td>[[Height]]:</td>
			<td><input type="text" id="inp_height" style="width:60px" onChange="SyncToPreview()" ></td>
		</tr>
	</table>
	<table class="normal">
		<tr>
			<td style='width:60px'>[[Alignment]]:</td>
			<td><select id="sel_align" onChange="SyncToPreview()" >
					<option value="">[[NotSet]]</option>
					<option value="left">[[Left]]</option>
					<option value="center">[[Center]]</option>
					<option value="right">[[Right]]</option>
				</select></td>
			<td>
				[[Text-Align]] :</td>
			<td><select id="sel_textalign" onChange="SyncToPreview()" >
					<option value="">[[NotSet]]</option>
					<option value="left">[[Left]]</option>
					<option value="center">[[Center]]</option>
					<option value="right">[[Right]]</option>
					<option value="justify">[[Justify]]</option>
				</select></td>
			<td>[[Float]]:
			</td>
			<td><select id="sel_float" onChange="SyncToPreview()">
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
				<textarea id="inp_tooltip" rows="2" style="width:320px" onChange="SyncToPreview()"></textarea>
			</td>
		</tr>
	</table>
	<div style="BORDER: 1.5pt inset; VERTICAL-ALIGN: top; OVERFLOW: auto; WIDTH: 300px; HEIGHT: 120px; BACKGROUND-COLOR: white; TEXT-ALIGN: center">
		<div id="table_Prev"></div>
	</div>
</fieldset>

<script>

var OxOe96d=["inp_cellspacing","inp_cellpadding","inp_border","sel_rules","inp_collapse","inp_borderColor","inp_borderColor_Preview","inp_shade","inp_shade_Preview","inp_summary","inp_class","inp_width","inp_height","sel_align","sel_textalign","sel_float","inp_tooltip","sel_rows","sel_columns","table_Prev","specified","","nodeValue","cellSpacing","value","cellPadding","border","borderCollapse","style","checked","collapse","className","width","borderColor","backgroundColor","bgColor","height","align","styleFloat","textAlign","title","innerHTML","TABLE","TBODY","TR","TD","Cell","_","rules","summary","0","[[ValidNumber]]","class","vAlign","valign","cellpadding","cellspacing","Delete"];var inp_cellspacing=document.getElementById(OxOe96d[0x0]);var inp_cellpadding=document.getElementById(OxOe96d[0x1]);var inp_border=document.getElementById(OxOe96d[0x2]);var sel_rules=document.getElementById(OxOe96d[0x3]);var inp_collapse=document.getElementById(OxOe96d[0x4]);var borderColor=document.getElementById(OxOe96d[0x5]);var borderColor_Preview=document.getElementById(OxOe96d[0x6]);var inp_shade=document.getElementById(OxOe96d[0x7]);var inp_shade_Preview=document.getElementById(OxOe96d[0x8]);var inp_summary=document.getElementById(OxOe96d[0x9]);var inp_class=document.getElementById(OxOe96d[0xa]);var inp_width=document.getElementById(OxOe96d[0xb]);var inp_height=document.getElementById(OxOe96d[0xc]);var sel_align=document.getElementById(OxOe96d[0xd]);var sel_textalign=document.getElementById(OxOe96d[0xe]);var sel_float=document.getElementById(OxOe96d[0xf]);var inp_tooltip=document.getElementById(OxOe96d[0x10]);var inp_cellspacing=document.getElementById(OxOe96d[0x0]);var sel_rows=document.getElementById(OxOe96d[0x11]);var sel_columns=document.getElementById(OxOe96d[0x12]);var table_Prev=document.getElementById(OxOe96d[0x13]); function SyncToView(){}  ; function SyncToView2(){ function GetAttribute(Ox492){var attr=element.getAttributeNode(Ox492);if(attr==null||!attr[OxOe96d[0x14]]){return OxOe96d[0x15];} ;return attr[OxOe96d[0x16]];}  ; inp_cellspacing[OxOe96d[0x18]]=GetAttribute(OxOe96d[0x17]) ; inp_cellpadding[OxOe96d[0x18]]=GetAttribute(OxOe96d[0x19]) ; inp_border[OxOe96d[0x18]]=GetAttribute(OxOe96d[0x1a]) ; inp_collapse[OxOe96d[0x1d]]=element[OxOe96d[0x1c]][OxOe96d[0x1b]]==OxOe96d[0x1e] ; inp_class[OxOe96d[0x18]]=element[OxOe96d[0x1f]] ;if(GetAttribute(OxOe96d[0x20])){ inp_width[OxOe96d[0x18]]=GetAttribute(OxOe96d[0x20]) ;} else {if(element[OxOe96d[0x1c]][OxOe96d[0x20]]){ inp_width[OxOe96d[0x18]]=element[OxOe96d[0x1c]][OxOe96d[0x20]] ;} ;} ;if(GetAttribute(OxOe96d[0x21])){ borderColor[OxOe96d[0x18]]=GetAttribute(OxOe96d[0x21]) ; borderColor[OxOe96d[0x1c]][OxOe96d[0x22]]=GetAttribute(OxOe96d[0x21]) ; borderColor_Preview[OxOe96d[0x1c]][OxOe96d[0x22]]=GetAttribute(OxOe96d[0x21]) ;} else {if(element[OxOe96d[0x1c]][OxOe96d[0x21]]){ borderColor[OxOe96d[0x18]]=element[OxOe96d[0x1c]][OxOe96d[0x21]] ; borderColor[OxOe96d[0x1c]][OxOe96d[0x22]]=element[OxOe96d[0x1c]][OxOe96d[0x21]] ; borderColor_Preview[OxOe96d[0x1c]][OxOe96d[0x22]]=element[OxOe96d[0x1c]][OxOe96d[0x21]] ;} ;} ;if(GetAttribute(OxOe96d[0x23])){ inp_shade[OxOe96d[0x18]]=GetAttribute(OxOe96d[0x23]) ; inp_shade[OxOe96d[0x1c]][OxOe96d[0x22]]=GetAttribute(OxOe96d[0x23]) ; inp_shade_Preview[OxOe96d[0x1c]][OxOe96d[0x22]]=GetAttribute(OxOe96d[0x23]) ;} else {if(element[OxOe96d[0x1c]][OxOe96d[0x22]]){ inp_shade[OxOe96d[0x18]]=element[OxOe96d[0x1c]][OxOe96d[0x22]] ; inp_shade[OxOe96d[0x1c]][OxOe96d[0x22]]=element[OxOe96d[0x1c]][OxOe96d[0x22]] ; inp_shade_Preview[OxOe96d[0x1c]][OxOe96d[0x22]]=element[OxOe96d[0x1c]][OxOe96d[0x22]] ;} ;} ;if(GetAttribute(OxOe96d[0x24])){ inp_height[OxOe96d[0x18]]=GetAttribute(OxOe96d[0x24]) ;} else {if(element[OxOe96d[0x1c]][OxOe96d[0x24]]){ inp_height[OxOe96d[0x18]]=element[OxOe96d[0x1c]][OxOe96d[0x24]] ;} ;} ; sel_align[OxOe96d[0x18]]=element[OxOe96d[0x25]] ; sel_float[OxOe96d[0x18]]=element[OxOe96d[0x1c]][OxOe96d[0x26]] ; sel_textalign[OxOe96d[0x18]]=element[OxOe96d[0x1c]][OxOe96d[0x27]] ; inp_tooltip[OxOe96d[0x18]]=element[OxOe96d[0x28]] ;}  ; function SyncToPreview(){ table_Prev[OxOe96d[0x29]]=OxOe96d[0x15] ;var Ox355=document.createElement(OxOe96d[0x2a]);var Ox66e=sel_rows[OxOe96d[0x18]];var Ox66f=sel_columns[OxOe96d[0x18]];var Ox670=document.createElement(OxOe96d[0x2b]);for( i=0x0 ;i<Ox66e;i++){ row=document.createElement(OxOe96d[0x2c]) ;for( j=0x0 ;j<Ox66f;j++){ cell=document.createElement(OxOe96d[0x2d]) ;var Ox671=OxOe96d[0x2e]+i+OxOe96d[0x2f]+j;var Ox672=document.createTextNode(Ox671); cell.appendChild(Ox672) ; row.appendChild(cell) ;} ; Ox670.appendChild(row) ;} ; Ox355.appendChild(Ox670) ; Ox355[OxOe96d[0x20]]=0x1a3 ; Ox355[OxOe96d[0x1a]]=0x1 ; Ox355[OxOe96d[0x1c]][OxOe96d[0x1b]]=inp_collapse[OxOe96d[0x1d]]?OxOe96d[0x1e]:OxOe96d[0x15] ; Ox355[OxOe96d[0x30]]=sel_rules[OxOe96d[0x18]]||OxOe96d[0x15] ; Ox355[OxOe96d[0x31]]=inp_summary[OxOe96d[0x18]] ; Ox355[OxOe96d[0x1f]]=inp_class[OxOe96d[0x18]] ; Ox355[OxOe96d[0x17]]=inp_cellspacing[OxOe96d[0x18]] ; Ox355[OxOe96d[0x19]]=inp_cellpadding[OxOe96d[0x18]] ;if(inp_border[OxOe96d[0x18]]==OxOe96d[0x15]){ Ox355[OxOe96d[0x1a]]=OxOe96d[0x32] ;} else { Ox355[OxOe96d[0x1a]]=inp_border[OxOe96d[0x18]] ;} ;if(inp_width[OxOe96d[0x18]]==OxOe96d[0x15]){ Ox355.removeAttribute(OxOe96d[0x20]) ; Ox355[OxOe96d[0x1c]][OxOe96d[0x20]]=OxOe96d[0x15] ;} ;if(inp_height[OxOe96d[0x18]]==OxOe96d[0x15]){ Ox355.removeAttribute(OxOe96d[0x24]) ; Ox355[OxOe96d[0x1c]][OxOe96d[0x24]]=OxOe96d[0x15] ;} ;try{if(element[OxOe96d[0x1c]][OxOe96d[0x20]]){ Ox355[OxOe96d[0x1c]][OxOe96d[0x20]]=inp_width[OxOe96d[0x18]] ;} else { Ox355[OxOe96d[0x20]]=inp_width[OxOe96d[0x18]] ;} ;} catch(e){ alert(OxOe96d[0x33]) ;} ;try{if(element[OxOe96d[0x1c]][OxOe96d[0x24]]){ Ox355[OxOe96d[0x1c]][OxOe96d[0x24]]=inp_height[OxOe96d[0x18]] ;} else { Ox355[OxOe96d[0x24]]=inp_height[OxOe96d[0x18]] ;} ;} catch(e){ alert(OxOe96d[0x33]) ;} ;try{ Ox355[OxOe96d[0x1c]][OxOe96d[0x21]]=borderColor[OxOe96d[0x18]] ;} catch(e){} ;try{ Ox355[OxOe96d[0x1c]][OxOe96d[0x22]]=inp_shade[OxOe96d[0x18]] ;} catch(e){} ; Ox355[OxOe96d[0x25]]=sel_align[OxOe96d[0x18]] ; Ox355[OxOe96d[0x1c]][OxOe96d[0x26]]=sel_float[OxOe96d[0x18]] ; Ox355[OxOe96d[0x1c]][OxOe96d[0x27]]=sel_textalign[OxOe96d[0x18]] ; Ox355[OxOe96d[0x28]]=inp_tooltip[OxOe96d[0x18]] ;if(Ox355[OxOe96d[0x28]]==OxOe96d[0x15]){ Ox355.removeAttribute(OxOe96d[0x28]) ;} ;if(Ox355[OxOe96d[0x31]]==OxOe96d[0x15]){ Ox355.removeAttribute(OxOe96d[0x31]) ;} ;if(Ox355[OxOe96d[0x1f]]==OxOe96d[0x15]){ Ox355.removeAttribute(OxOe96d[0x34]) ;} ;if(Ox355[OxOe96d[0x25]]==OxOe96d[0x15]){ Ox355.removeAttribute(OxOe96d[0x25]) ;} ;if(Ox355[OxOe96d[0x35]]==OxOe96d[0x15]){ Ox355.removeAttribute(OxOe96d[0x36]) ;} ;if(Ox355[OxOe96d[0x20]]==OxOe96d[0x15]){ Ox355.removeAttribute(OxOe96d[0x20]) ;} ;if(Ox355[OxOe96d[0x24]]==OxOe96d[0x15]){ Ox355.removeAttribute(OxOe96d[0x24]) ;} ;if(Ox355[OxOe96d[0x30]]==OxOe96d[0x15]){ Ox355.removeAttribute(OxOe96d[0x30]) ;} ;if(Ox355[OxOe96d[0x19]]==OxOe96d[0x15]){ Ox355.removeAttribute(OxOe96d[0x37]) ;} ;if(Ox355[OxOe96d[0x17]]==OxOe96d[0x15]){ Ox355.removeAttribute(OxOe96d[0x38]) ;} ; table_Prev.appendChild(Ox355) ;}  ; function SyncTo(){try{ editdoc.execCommand(OxOe96d[0x39],false,OxOe96d[0x15]) ; editor.PasteHTML(table_Prev.innerHTML) ;} catch(e){} ; top.close() ;}  ;



</script>

