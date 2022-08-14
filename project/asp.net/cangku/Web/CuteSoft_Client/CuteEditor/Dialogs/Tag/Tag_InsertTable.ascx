<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<div id="templates" style='display:none'>
	<table summary="[[Table layout]]" class="normal">
		<tr>
			<td>1</td>
			<td>2</td>
		</tr>
		<tr>
			<td>3</td>
			<td>4</td>
		</tr>
	</table>
	<table summary="No Layout" class="normal">
		<tr>
			<td height="24"></td>
		</tr>
	</table>
	<table summary="Header, Left, Top Right, and Body" class="normal">
		<tr>
			<td valign="top" colspan="2" height="6"></td>
		</tr>
		<tr>
			<td valign="top" rowspan="2" height="12"></td>
			<td valign="top" height="6"></td>
		</tr>
		<tr>
			<td valign="top" height="12"></td>
		</tr>
	</table>
	<table summary="Header, Right, Top Left, and Body" class="normal">
		<tr>
			<td valign="top" colspan="2" height="6"></td>
		</tr>
		<tr>
			<td valign="top" height="6"></td>
			<td valign="top" rowspan="2"></td>
		</tr>
		<tr>
			<td valign="top" height="12"></td>
		</tr>
	</table>
	<table summary="Header, Footer, and 3 Columns" class="normal">
		<tr>
			<td valign="top" colspan="3" height="6"></td>
		</tr>
		<tr>
			<td valign="top" height="12"></td>
			<td valign="top" height="12"></td>
			<td valign="top" height="12"></td>
		</tr>
		<tr>
			<td valign="top" colspan="3" height="6"></td>
		</tr>
	</table>
	<table summary="Header, Footer, Left, Right, Top Centered, and Two Columns" class="normal">
		<tr>
			<td valign="top" colspan="4" height="6"></td>
		</tr>
		<tr>
			<td valign="top" rowspan="2" height="12"></td>
			<td valign="top" colspan="2" height="12"></td>
			<td valign="top" rowspan="2" height="12"></td>
		</tr>
		<tr>
			<td valign="top" height="12"></td>
			<td valign="top" height="12"></td>
		</tr>
		<tr>
			<td valign="top" height="6" colspan="4"></td>
		</tr>
	</table>
	<table summary="Header, Footer, Left, Right, and Four Rows" class="normal">
		<tr>
			<td valign="top" colspan="3" height="6"></td>
		</tr>
		<tr>
			<td valign="top" rowspan="4"></td>
			<td valign="top" height="6"></td>
			<td valign="top" rowspan="4"></td>
		</tr>
		<tr>
			<td valign="top" height="6"></td>
		</tr>
		<tr>
			<td valign="top" height="6"></td>
		</tr>
		<tr>
			<td valign="top" height="6"></td>
		</tr>
		<tr>
			<td valign="top" colspan="3" height="6"></td>
		</tr>
	</table>
</div>
<div style="padding:4px;padding-left:32px;margin-bottom:5px">
	<span id="sel_template" RenderItemBorder="true" Command="PasteText" onchange="sel_template_change()"
		RichHideFirstItem="true" style="width:320px;height:32px;behavior:url(../DropDown.htc.aspx?[[DNN_Arg]]);">
	</span>
</div>
<style>
.addsub
{
	width:21px;
	font-family:fixedsys;
}
</style>
<div style="padding:4px;">
	<table border="1" cellspacing="0" cellpadding="2" style="border-collapse:collapse" class="normal">
		<caption>[[Table Designer]]</caption>
		<tr>
			<td align="center">
				[[EditCell]]
			</td>
			<td align="center">
				Columns : <button id="subcolumns" class="addsub">-</button> <button id="addcolumns" class="addsub">
					+</button> ColSpan : <button id="subcolspan" class="addsub">-</button> <button id="addcolspan" class="addsub">
					+</button>
			</td>
			<td></td>
		</tr>
		<tr>
			<td valign="top">
				<table class="normal">
					<tr>
						<td colspan="2" align="center">
							<input type="button" id="btn_row_dialog" value="[[EditRow]]"></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="button" id="btn_cell_dialog" value="[[EditCell]]"></td>
					</tr>
					<tr>
						<td>[[Width]]</td>
						<td><input type="text" id="inp_cell_width" style="width:60"></td>
					</tr>
					<tr>
						<td>[[Height]]:</td>
						<td><input type="text" id="inp_cell_height" style="width:60"></td>
					</tr>
					<!-- //TODO: add more cell useful properties here -->
					<tr>
						<td colspan="2" align="center">
							<input type="button" id="btn_cell_editcell" value="[[EditHtml]]"></td>
					</tr>
				</table>
				<br>
			</td>
			<td>
				<div style="border:1px solid gray;padding:1px;">
					<table id="tabledesign" border="1" bordercolor='orange' cellspacing="" style='background-color:white;width:210px;height:210px;border-collapse:collapse'
						class="normal" align="center">
					</table>
				</div>
			</td>
			<td align="center">
				R<br>
				o<br>
				w<br>
				s<br>
				<button id="subrows" class="addsub">-</button><br>
				<button id="addrows" class="addsub">+</button>
				<br>
				S<br>
				p<br>
				a<br>
				n<br>
				<button id="subrowspan" class="addsub">-</button><br>
				<button id="addrowspan" class="addsub">+</button>
			</td>
		</tr>
	</table>
</div>

<script>
	var OxOedba=["display","style","none","disabled","width","value","height","Please enter a valid number.","selectedIndex","DIV","innerHTML","length","rows","cells","","backgroundColor","currentStyle","body","bgColor","onmouseover","onmouseout","onclick","ondblclick","highlight","parentNode","cssText","runtimeStyle","background-color:gray","rowSpan","colSpan","children","border-collapse:collapse;display:inline;","border","borderColor","blue","cellSpacing","ceppPadding","SPAN","summary","outerHTML","html","\x3Ctable width=300 class=normal\x3E\x3Ctr\x3E\x3Ctd\x3E","\x3C/td\x3E\x3Ctd\x3E","\x3C/td\x3E\x3C/tr\x3E\x3C/table\x3E","options"]; btn_cell_editcell[OxOedba[0x1]][OxOedba[0x0]]=OxOedba[0x2] ; function UpdateState(){ btn_cell_editcell[OxOedba[0x3]]=btn_row_dialog[OxOedba[0x3]]=btn_cell_dialog[OxOedba[0x3]]=GetElementCell()==null ;}  ; function SyncToView(){var Ox67e=GetElementCell();if(Ox67e){ inp_cell_width[OxOedba[0x5]]=Ox67e[OxOedba[0x4]] ; inp_cell_height[OxOedba[0x5]]=Ox67e[OxOedba[0x6]] ;} ;}  ; function SyncTo(element){var Ox67e=GetElementCell();if(Ox67e){try{ Ox67e[OxOedba[0x4]]=inp_cell_width[OxOedba[0x5]] ; Ox67e[OxOedba[0x6]]=inp_cell_height[OxOedba[0x5]] ;} catch(er){ alert(OxOedba[0x7]) ;} ;} ;}  ; function subcolumns.onclick(){ Table_SubCol(GetElementCell()) ; Table_SubCol(currentcell) ; HandleTableChanged() ;}  ; function addcolumns.onclick(){ Table_AddCol(GetElementCell()) ; Table_AddCol(currentcell) ; HandleTableChanged() ;}  ; function subrows.onclick(){ Table_SubRow(GetElementCell()) ; Table_SubRow(currentcell) ; HandleTableChanged() ;}  ; function addrows.onclick(){ Table_AddRow(currentcell) ; Table_AddRow(GetElementCell()) ; HandleTableChanged() ;}  ; function subcolspan.onclick(){ Table_SubColSpan(GetElementCell()) ; Table_SubColSpan(currentcell) ; HandleTableChanged() ;}  ; function addcolspan.onclick(){ Table_AddColSpan(GetElementCell()) ; Table_AddColSpan(currentcell) ; HandleTableChanged() ;}  ; function subrowspan.onclick(){ Table_SubRowSpan(GetElementCell()) ; Table_SubRowSpan(currentcell) ; HandleTableChanged() ;}  ; function addrowspan.onclick(){ Table_AddRowSpan(GetElementCell()) ; Table_AddRowSpan(currentcell) ; HandleTableChanged() ;}  ; function sel_template_change(){var Ox1f1=sel_template[OxOedba[0x5]]; sel_template[OxOedba[0x8]]=0x0 ;var div=document.createElement(OxOedba[0x9]); div[OxOedba[0xa]]=Ox1f1 ;var table=div.children(0x0); ApplyTable(table,element) ; ApplyTable(table,tabledesign) ; HandleTableChanged() ;}  ; function InitDesignTableCells(){for(var r=0x0;r<tabledesign[OxOedba[0xc]][OxOedba[0xb]];r++){var Oxc4=tabledesign.rows(r);for(var Oxc5=0x0;Oxc5<Oxc4[OxOedba[0xd]][OxOedba[0xb]];Oxc5++){var Oxc6=Oxc4.cells(Oxc5); Oxc6.removeAttribute(OxOedba[0x4]) ; Oxc6.removeAttribute(OxOedba[0x6]) ; Oxc6[OxOedba[0x4]]=OxOedba[0xe] ; Oxc6[OxOedba[0x6]]=OxOedba[0xe] ; Oxc6[OxOedba[0x12]]=document[OxOedba[0x11]][OxOedba[0x10]][OxOedba[0xf]] ; Oxc6[OxOedba[0x13]]=cell_mouseover ; Oxc6[OxOedba[0x14]]=cell_mouseout ; Oxc6[OxOedba[0x15]]=cell_click ; Oxc6[OxOedba[0x16]]=cell_dblclick ;} ;} ;}  ; function HandleTableChanged(){if(!tabledesign.contains(currentcell)){ SetCurrentCell(tabledesign.rows(0x0).cells(0x0)) ;} ; InitDesignTableCells() ; UpdateButtonStates() ;}  ; function cell_mouseover(){var Oxc6=this; Oxc6[OxOedba[0x1]][OxOedba[0xf]]=OxOedba[0x17] ;}  ; function cell_mouseout(){var Oxc6=this; Oxc6[OxOedba[0x1]][OxOedba[0xf]]=document[OxOedba[0x11]][OxOedba[0x10]][OxOedba[0xf]] ;}  ; function cell_click(){var Oxc6=this; SetCurrentCell(Oxc6) ;}  ; function cell_dblclick(){var Oxc6=this; SetCurrentCell(Oxc6) ;var Oxc6=GetElementCell();var Oxb0=editor.EditInWindow(Oxc6.innerHTML,window);if(Oxb0!=null&&Oxb0!=false){ Oxc6[OxOedba[0xa]]=Oxb0 ;} ;}  ; function btn_cell_editcell.onclick(){var Oxc6=GetElementCell();var Oxb0=editor.EditInWindow(Oxc6.innerHTML,window);if(Oxb0!=null&&Oxb0!=false){ Oxc6[OxOedba[0xa]]=Oxb0 ;} ;}  ; function btn_cell_dialog.onclick(){ editor.ShowTagDialogWithNoCancellable(GetElementCell()) ;}  ; function btn_row_dialog.onclick(){ editor.ShowTagDialogWithNoCancellable(GetElementCell().parentNode) ;}  ;var currentcell=null; function GetElementCell(){if(currentcell==null){return null;} ;return element.rows(currentcell[OxOedba[0x18]].rowIndex).cells(currentcell.cellIndex);}  ; function SetCurrentCell(Oxc6){if(currentcell!=null){ currentcell[OxOedba[0x1a]][OxOedba[0x19]]=OxOedba[0xe] ;} ; currentcell=Oxc6 ; currentcell[OxOedba[0x1a]][OxOedba[0x19]]=OxOedba[0x1b] ; UpdateButtonStates() ; SyncToViewInternal() ;}  ; function UpdateButtonStates(){ subcolspan[OxOedba[0x3]]=!Table_CanSubColSpan(currentcell) ; addcolspan[OxOedba[0x3]]=!Table_CanAddColSpan(currentcell) ; subrowspan[OxOedba[0x3]]=!Table_CanSubRowSpan(currentcell) ; addrowspan[OxOedba[0x3]]=!Table_CanAddRowSpan(currentcell) ; subrows[OxOedba[0x3]]=Table_GetRowCount(currentcell)<0x2 ; subcolumns[OxOedba[0x3]]=Table_GetColCount(currentcell)<0x2 ;}  ; function ApplyTable(src,Ox68b){for(var r=Ox68b[OxOedba[0xc]][OxOedba[0xb]]-0x1;r>=0x0;r--){ Ox68b.rows(r).removeNode(true) ;} ;for(var r=0x0;r<src[OxOedba[0xc]][OxOedba[0xb]];r++){var Ox68c=src.rows(r);var Oxd5=Ox68b.insertRow(); Oxd5[OxOedba[0x1]][OxOedba[0x19]]=Ox68c[OxOedba[0x1]][OxOedba[0x19]] ;for(var Oxc5=0x0;Oxc5<Ox68c[OxOedba[0xd]][OxOedba[0xb]];Oxc5++){var Ox68d=Ox68c.cells(Oxc5);var Ox68e=Oxd5.insertCell(); Ox68e[OxOedba[0x1c]]=Ox68d[OxOedba[0x1c]] ; Ox68e[OxOedba[0x1d]]=Ox68d[OxOedba[0x1d]] ; Ox68e[OxOedba[0x1]][OxOedba[0x19]]=Ox68d[OxOedba[0x1]][OxOedba[0x19]] ;} ;} ;}  ; function window.onload(){for(var i=0x0;i<templates[OxOedba[0x1e]][OxOedba[0xb]];i++){var Ox68f=templates.children(i).cloneNode(true); Ox68f[OxOedba[0x1]][OxOedba[0x19]]=OxOedba[0x1f] ; Ox68f[OxOedba[0x20]]=0x1 ; Ox68f[OxOedba[0x21]]=OxOedba[0x22] ; Ox68f[OxOedba[0x23]]=0x1 ; Ox68f[OxOedba[0x24]]=0x1 ; Ox68f[OxOedba[0x4]]=0x20 ;var Ox73=document.createElement(OxOedba[0x25]); Ox73[OxOedba[0x28]]=OxOedba[0x29]+Ox68f[OxOedba[0x27]]+OxOedba[0x2a]+Ox68f[OxOedba[0x26]]+OxOedba[0x2b] ; Ox73[OxOedba[0x5]]=Ox68f[OxOedba[0x27]] ; sel_template[OxOedba[0x2c]].add(Ox73) ;} ; sel_template[OxOedba[0x8]]=0x0 ; ApplyTable(element,tabledesign) ; InitDesignTableCells() ; SetCurrentCell(tabledesign.rows(0x0).cells(0x0)) ;}  ;

</script>
