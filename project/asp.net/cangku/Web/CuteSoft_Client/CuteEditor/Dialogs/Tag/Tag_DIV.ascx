<%@ Control Inherits="CuteEditor.EditorUtilityCtrl" Language="c#" AutoEventWireup="false" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
	<table width=100% align=center cellpadding=0 cellspacing=0>
		<tr>
			<td valign=top style="padding:5;padding-bottom:0;height:100%">
				<table>
					<tr>
						<td valign=top style="padding:3">
							<div style="overflow:auto;border:gray 1 solid;width:115;height:127;">
								<table id=tblBorderStyle cellpadding=5 cellspacing=0 width=100% style="table-layout:fixed;background:white">
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border:none;height:10;width:100%">[[NotSet]]</div>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('solid')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border-bottom:black 1 solid;height:10;width:100%" title="solid"></div>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('dotted')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border-bottom:black dotted;height:10;width:100%" title="dotted"></div>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('dashed')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border-bottom:black dashed;height:10;width:100%" title="dashed"></div>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('double')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border-bottom:black dotted;height:10;width:100%" title="double"></div>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('groove')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border-style:groove;height:10;width:100%" title="groove"></div>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('ridge')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border-style:ridge;height:10;width:100%" title="ridge"></div>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('inset')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border-style:inset;height:10;width:100%" title="inset"></div>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doBorderStyle('outset')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border-style:outset;height:10;width:100%" title="outset"></div>
										</td>
									</tr>
								</table>
							</div>
							<input type=hidden name="sel_style" id="sel_style">
						</td>
						<td valign=top style="padding:3">
							<div style='overflow:auto;border:gray 1 solid;width:115;height:127'>
								<table id=tblBorderApplyTo cellpadding=5 cellspacing=0 width=100% style='table-layout:fixed;background:white'>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doWidth('1px')" style="height:25;padding:1;border:white 1 solid;" >
											<table width=100%><tr><td style="height:25" >1px</td><td valign=top width=100%> <table style='border-bottom:black 1px solid;height:16;' width=100%><tr><td></td></tr></table> </td></tr></table>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doWidth('2px')" style="height:25;padding:1;border:white 1 solid;" >
											<table width=100%><tr><td style="height:25" >2px</td><td valign=top width=100%> <table style='border-bottom:black 2px solid;height:16;' width=100%><tr><td></td></tr></table> </td></tr></table>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doWidth('3px')" style="height:25;padding:1;border:white 1 solid;" >
											<table width=100%><tr><td style="height:25" >3px</td><td valign=top width=100%> <table style='border-bottom:black 2px solid;height:16;' width=100%><tr><td></td></tr></table> </td></tr></table>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doWidth('4px')" style="height:25;padding:1;border:white 1 solid;" >
											<table width=100%><tr><td style="height:25" >4px</td><td valign=top width=100%> <table style='border-bottom:black 4px solid;height:16;' width=100%><tr><td></td></tr></table> </td></tr></table>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doWidth('5px')" style="height:25;padding:1;border:white 1 solid;" >
											<table width=100%><tr><td style="height:25" >5px</td><td valign=top width=100%> <table style='border-bottom:black 5px solid;height:16;' width=100%><tr><td></td></tr></table> </td></tr></table>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doWidth('6px')" style="height:25;padding:1;border:white 1 solid;" >
											<table width=100%><tr><td style="height:25" >6px</td><td valign=top width=100%> <table style='border-bottom:black 6px solid;height:16;' width=100%><tr><td></td></tr></table> </td></tr></table>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doWidth('7px')" style="height:25;padding:1;border:white 1 solid;" >
											<table width=100%><tr><td style="height:25" >7px</td><td valign=top width=100%> <table style='border-bottom:black 7px solid;height:16;' width=100%><tr><td></td></tr></table> </td></tr></table>
										</td>
									</tr>
								</table>
								<input type=hidden name=sel_border id="sel_border">
							</div>		
						</td>
						<td valign=top style="padding:3" nowrap>													
							<div style='overflow:auto;border:gray 1 solid;width:55;height:127'>
								<table id=tblBorderApplyTo cellpadding=5 cellspacing=0 width=100% style='table-layout:fixed;background:white'>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doPart('none')" style="height:30;padding:4;border:white 1 solid;" >
											<img src='../images/border_none.gif' alt='No Border'>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doPart('')" style="height:30;padding:4;border:white 1 solid;" >
											<img src='../images/border_outside.gif' alt='All'>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doPart('left')" style="height:30;padding:4;border:white 1 solid;" >
											<img src='../images/border_left.gif' alt='[[Left]]'>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doPart('top')" style="height:30;padding:4;border:white 1 solid;" >
											<img src='../images/border_top.gif' alt='[[Top]]'>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doPart('right')" style="height:30;padding:4;border:white 1 solid;" >
											<img src='../images/border_right.gif' alt='[[Right]]'>
										</td>
									</tr>
									<tr>
										<td valign=top onmouseover="CuteEditor_ColorPicker_ButtonOver(this);" onclick="doPart('bottom')" style="height:30;padding:4;border:white 1 solid;" >
											<img src='../images/border_bottom.gif' alt='[[Bottom]]'>
										</td>
									</tr>
								</table>
								<input type=hidden name=sel_part id="sel_part">
							</div>
						</td>
						<td valign=top style="padding:0 5px 3px 8px" nowrap>
							<table cellpadding=0 cellspacing=0 style="padding-bottom:10">								
								<tr>						
									<td nowrap>[[Bordercolor]]:<br>
										<input type="text" id="bordercolor" name="bordercolor" size="7" style="WIDTH:57px">
										<img id="bordercolor_Preview" src="../images/colorpicker.gif"  align="absMiddle" style='BEHAVIOR:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'
												oncolorchange="bordercolor.value=this.selectedColor; bordercolor.style.backgroundColor=this.selectedColor">
									</td>
								</tr>
								<tr>
									<td nowrap>[[ForeColor]]:<br>
										<input type="text" id="inp_color" name="inp_color" size="7" style="WIDTH:57px">
										<img id="inp_color_Preview" src="../images/colorpicker.gif"  align="absMiddle" style='BEHAVIOR:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'
												oncolorchange="inp_color.value=this.selectedColor; inp_color.style.backgroundColor=this.selectedColor">
									</td>
								</tr>
								<tr>						
									<td nowrap>[[Shade]]:<br>
										<input type="text" id="inp_shade" name="inp_shade" size="7" style="WIDTH:57px">
										<img id="inp_shade_Preview" src="../images/colorpicker.gif"  align="absMiddle" style='BEHAVIOR:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'
												oncolorchange="inp_shade.value=this.selectedColor; inp_shade.style.backgroundColor=this.selectedColor">
									</td>
								</tr>				
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td nowrap style="padding-left:8; padding-top:10">
				
				<table cellpadding=0 cellspacing=0>
					<tr>
						<td>
							<table cellpadding=2 cellspacing=0>
								<tr><td colspan=7>[[Margin]]:</td></tr>
								<tr>
								<td><span>[[Left]]</span>:</td>
								<td><input type="text" id="inp_MarginLeft" size=1 onkeypress="event.returnValue=IsDigit();"></td>
								<td> px</td>
								<td>&nbsp;&nbsp;</td>
								<td align=right><span>[[Right]]</span>:</td>
								<td><input type="text" id="inp_MarginRight" size=1 onkeypress="event.returnValue=IsDigit();"></td>
								<td> px</td>
								</tr>
								<tr>
								<td><span>[[Top]]</span>:</td>
								<td><input type="text" id="inp_MarginTop" size=1 onkeypress="event.returnValue=IsDigit();"></td>
								<td> px</td>
								<td>&nbsp;&nbsp;</td>
								<td align=right><span>[[Bottom]]</span>:</td>
								<td><input type="text" id="inp_MarginBottom" size=1 onkeypress="event.returnValue=IsDigit();"></td>
								<td> px</td>
								</tr>
							</table>
						</td>
						<td>
							<div style="margin:5;height:55;border-left:lightgrey 1 solid"></div>
						</td>
						<td style="padding-bottom:5">				
							<table cellpadding=2 cellspacing=0>
								<tr><td colspan=7>[[Padding]]:</td></tr>
								<tr>
								<td><span>[[Left]]</span>:</td>
								<td><input type="text" id="inp_PaddingLeft" size=1 onkeypress="event.returnValue=IsDigit();"></td>
								<td> px</td>
								<td>&nbsp;&nbsp;</td>
								<td align=right><span>[[Right]]</span>:</td>
								<td><input type="text" id="inp_PaddingRight" size=1 onkeypress="event.returnValue=IsDigit();"></td>
								<td> px</td>
								</tr>
								<tr>
								<td><span>[[Top]]</span>:</td>
								<td><input type="text" id="inp_PaddingTop" size=1 onkeypress="event.returnValue=IsDigit();"></td>
								<td> px</td>
								<td>&nbsp;&nbsp;</td>
								<td align=right><span>[[Bottom]]</span>:</td>
								<td><input type="text" id="inp_PaddingBottom" size=1 onkeypress="event.returnValue=IsDigit();"></td>
								<td> px</td>
								</tr>
							</table>					
						</td>
					</tr>
					<tr>
						<td colspan=3 style="padding-top:3;padding-bottom:5;border-top:lightgrey 1 solid">						
							<fieldset><legend>[[Common]]</legend>
								<table class="normal">
									<tr>
										<td style='width:60px'>[[CssClass]]:</td>
										<td><input type="text" id="inp_class" style="width:70px"></td>
										<td>[[Width]]:</td>
										<td><nobr>
											<input type="text" id="inp_width" style="width:42px" onkeypress="event.returnValue=IsDigit();">
											<select id="sel_width_unit">
												<option value="px">px</option>
												<option value="%">%</option>
											</select></nobr>
										</td>
										<td>[[Height]]:</td>
										<td><nobr>
											<input type="text" id="inp_height" style="width:42px" onkeypress="event.returnValue=IsDigit();">
											<select id="sel_height_unit">
												<option value="px">px</option>
												<option value="%">%</option>
											</select></nobr>
										</td>
									</tr>
								</table>
								<table class="normal">
									<tr>
										<td style='width:60px'>[[Alignment]]:</td>
										<td><select id="sel_align">
												<option value="">[[NotSet]]</option>
												<option value="left">[[Left]]</option>
												<option value="center">[[Center]]</option>
												<option value="right">[[Right]]</option>
											</select></td>
										<td>
											[[Text-Align]] :</td>
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
										<td style='width:60px'>[[Title]] :</td>
										<td>
											<textarea id="inp_tooltip" rows="2" style="width:320px"></textarea>
										</td>
									</tr>
								</table>
							</fieldset>
						</td>
					</tr>		
				</table>
			</td>
		</tr>
	</table>

<script>

var OxO97cd=["sel_style","sel_part","sel_border","inp_color","inp_shade","inp_MarginLeft","inp_MarginRight","inp_MarginTop","inp_MarginBottom","inp_PaddingLeft","inp_PaddingRight","inp_PaddingTop","inp_PaddingBottom","inp_class","inp_width","inp_height","sel_align","sel_textalign","sel_float","inp_tooltip","value","borderColor","style","backgroundColor","color","className","width","height","length","inp_","sel_","_unit","selectedIndex","options","align","styleFloat","textAlign","title","border","borderBottomWidth","borderLeftWidth","borderRightWidth","borderTopWidth","borderBottomStyle","borderLeftStyle","borderRightStyle","borderTopStyle","none","-","red",""," ","paddingLeft","paddingRight","paddingTop","paddingBottom","marginLeft","marginRight","marginTop","marginBottom","keyCode"];var sel_style=document.getElementById(OxO97cd[0x0]);var sel_part=document.getElementById(OxO97cd[0x1]);var sel_border=document.getElementById(OxO97cd[0x2]);var inp_color=document.getElementById(OxO97cd[0x3]);var inp_shade=document.getElementById(OxO97cd[0x4]);var inp_MarginLeft=document.getElementById(OxO97cd[0x5]);var inp_MarginRight=document.getElementById(OxO97cd[0x6]);var inp_MarginTop=document.getElementById(OxO97cd[0x7]);var inp_MarginBottom=document.getElementById(OxO97cd[0x8]);var inp_PaddingLeft=document.getElementById(OxO97cd[0x9]);var inp_PaddingRight=document.getElementById(OxO97cd[0xa]);var inp_PaddingTop=document.getElementById(OxO97cd[0xb]);var inp_PaddingBottom=document.getElementById(OxO97cd[0xc]);var inp_class=document.getElementById(OxO97cd[0xd]);var inp_width=document.getElementById(OxO97cd[0xe]);var inp_height=document.getElementById(OxO97cd[0xf]);var sel_align=document.getElementById(OxO97cd[0x10]);var sel_textalign=document.getElementById(OxO97cd[0x11]);var sel_float=document.getElementById(OxO97cd[0x12]);var inp_tooltip=document.getElementById(OxO97cd[0x13]); function UpdateState(){}  ; function doBorderStyle(Ox25){ sel_style[OxO97cd[0x14]]=Ox25 ;}  ; function doPart(Ox25){ sel_part[OxO97cd[0x14]]=Ox25 ;}  ; function doWidth(Ox25){ sel_border[OxO97cd[0x14]]=Ox25 ;}  ; function SyncToView(){ bordercolor[OxO97cd[0x14]]=element[OxO97cd[0x16]][OxO97cd[0x15]] ; bordercolor[OxO97cd[0x16]][OxO97cd[0x17]]=element[OxO97cd[0x16]][OxO97cd[0x15]] ; bordercolor_Preview[OxO97cd[0x16]][OxO97cd[0x17]]=element[OxO97cd[0x16]][OxO97cd[0x15]] ; inp_color[OxO97cd[0x14]]=element[OxO97cd[0x16]][OxO97cd[0x18]] ; inp_color[OxO97cd[0x16]][OxO97cd[0x17]]=element[OxO97cd[0x16]][OxO97cd[0x18]] ; inp_color_Preview[OxO97cd[0x16]][OxO97cd[0x17]]=element[OxO97cd[0x16]][OxO97cd[0x18]] ; inp_shade[OxO97cd[0x14]]=element[OxO97cd[0x16]][OxO97cd[0x17]] ; inp_shade[OxO97cd[0x16]][OxO97cd[0x17]]=element[OxO97cd[0x16]][OxO97cd[0x17]] ; inp_shade_Preview[OxO97cd[0x16]][OxO97cd[0x17]]=element[OxO97cd[0x16]][OxO97cd[0x17]] ; inp_MarginLeft[OxO97cd[0x14]]=ParseToString(element[OxO97cd[0x16]].marginLeft) ; inp_MarginRight[OxO97cd[0x14]]=ParseToString(element[OxO97cd[0x16]].marginRight) ; inp_MarginTop[OxO97cd[0x14]]=ParseToString(element[OxO97cd[0x16]].marginTop) ; inp_MarginBottom[OxO97cd[0x14]]=ParseToString(element[OxO97cd[0x16]].marginBottom) ; inp_PaddingLeft[OxO97cd[0x14]]=ParseToString(element[OxO97cd[0x16]].paddingLeft) ; inp_PaddingRight[OxO97cd[0x14]]=ParseToString(element[OxO97cd[0x16]].paddingRight) ; inp_PaddingTop[OxO97cd[0x14]]=ParseToString(element[OxO97cd[0x16]].paddingTop) ; inp_PaddingBottom[OxO97cd[0x14]]=ParseToString(element[OxO97cd[0x16]].paddingBottom) ; inp_class[OxO97cd[0x14]]=element[OxO97cd[0x19]] ;var arr=[OxO97cd[0x1a],OxO97cd[0x1b]];for(var Oxd8=0x0;Oxd8<arr[OxO97cd[0x1c]];Oxd8++){var n=arr[Oxd8];var e=document.getElementById(OxO97cd[0x1d]+n);var Ox25=document.getElementById(OxO97cd[0x1e]+n+OxO97cd[0x1f]); Ox25[OxO97cd[0x20]]=0x0 ;if(ParseToString(element[OxO97cd[0x16]][n])){ e[OxO97cd[0x14]]=ParseToString(element[OxO97cd[0x16]][n]) ;for(var i=0x0;i<Ox25[OxO97cd[0x21]][OxO97cd[0x1c]];i++){var Ox5b=Ox25.options(i)[OxO97cd[0x14]];if(Ox5b&&element[OxO97cd[0x16]][n].indexOf(Ox5b)!=-0x1){ Ox25[OxO97cd[0x20]]=i ;break ;} ;} ;} ;} ; sel_align[OxO97cd[0x14]]=element[OxO97cd[0x22]] ; sel_float[OxO97cd[0x14]]=element[OxO97cd[0x16]][OxO97cd[0x23]] ; sel_textalign[OxO97cd[0x14]]=element[OxO97cd[0x16]][OxO97cd[0x24]] ; inp_tooltip[OxO97cd[0x14]]=element[OxO97cd[0x25]] ; sel_border[OxO97cd[0x14]]=element[OxO97cd[0x16]][OxO97cd[0x26]] ;if(element[OxO97cd[0x16]][OxO97cd[0x28]]==element[OxO97cd[0x16]][OxO97cd[0x2a]]&&element[OxO97cd[0x16]][OxO97cd[0x28]]==element[OxO97cd[0x16]][OxO97cd[0x29]]&&element[OxO97cd[0x16]][OxO97cd[0x28]]==element[OxO97cd[0x16]][OxO97cd[0x27]]){ sel_border[OxO97cd[0x14]]=element[OxO97cd[0x16]][OxO97cd[0x28]] ;} ;if(element[OxO97cd[0x16]][OxO97cd[0x2c]]==element[OxO97cd[0x16]][OxO97cd[0x2e]]&&element[OxO97cd[0x16]][OxO97cd[0x2c]]==element[OxO97cd[0x16]][OxO97cd[0x2d]]&&element[OxO97cd[0x16]][OxO97cd[0x2c]]==element[OxO97cd[0x16]][OxO97cd[0x2b]]){ sel_style[OxO97cd[0x14]]=element[OxO97cd[0x16]][OxO97cd[0x2c]] ;} ;}  ; function SyncTo(element){var Ox639=sel_part[OxO97cd[0x14]];if(Ox639==OxO97cd[0x2f]){ element[OxO97cd[0x16]][OxO97cd[0x26]]=OxO97cd[0x2f] ;} else {var Ox63a=Ox639?OxO97cd[0x30]+Ox639:Ox639;var Ox6b=OxO97cd[0x31];var Ox84=sel_style[OxO97cd[0x14]]||OxO97cd[0x32];var Ox63b=sel_border[OxO97cd[0x14]]; element[OxO97cd[0x16]][OxO97cd[0x26]]=OxO97cd[0x2f] ;if(Ox63b||Ox84){ SetStyle(element[OxO97cd[0x16]],OxO97cd[0x26]+Ox63a,Ox63b+OxO97cd[0x33]+Ox84+OxO97cd[0x33]+Ox6b) ;} else { SetStyle(element[OxO97cd[0x16]],OxO97cd[0x26]+Ox63a,OxO97cd[0x32]) ;} ; SetStyle(element[OxO97cd[0x16]],OxO97cd[0x26]+Ox63a,Ox63b+OxO97cd[0x33]+Ox84+OxO97cd[0x33]+Ox6b) ;} ;try{ element[OxO97cd[0x16]][OxO97cd[0x18]]=inp_color[OxO97cd[0x14]]||OxO97cd[0x32] ;} catch(x){ element[OxO97cd[0x16]][OxO97cd[0x18]]=OxO97cd[0x32] ;} ;try{ element[OxO97cd[0x16]][OxO97cd[0x17]]=inp_shade[OxO97cd[0x14]]||OxO97cd[0x32] ;} catch(x){ element[OxO97cd[0x16]][OxO97cd[0x17]]=OxO97cd[0x32] ;} ;try{ element[OxO97cd[0x16]][OxO97cd[0x15]]=bordercolor[OxO97cd[0x14]]||OxO97cd[0x32] ;} catch(x){ element[OxO97cd[0x16]][OxO97cd[0x15]]=OxO97cd[0x32] ;} ; element[OxO97cd[0x16]][OxO97cd[0x34]]=inp_PaddingLeft[OxO97cd[0x14]] ; element[OxO97cd[0x16]][OxO97cd[0x35]]=inp_PaddingRight[OxO97cd[0x14]] ; element[OxO97cd[0x16]][OxO97cd[0x36]]=inp_PaddingTop[OxO97cd[0x14]] ; element[OxO97cd[0x16]][OxO97cd[0x37]]=inp_PaddingBottom[OxO97cd[0x14]] ; element[OxO97cd[0x16]][OxO97cd[0x38]]=inp_MarginLeft[OxO97cd[0x14]] ; element[OxO97cd[0x16]][OxO97cd[0x39]]=inp_MarginRight[OxO97cd[0x14]] ; element[OxO97cd[0x16]][OxO97cd[0x3a]]=inp_MarginTop[OxO97cd[0x14]] ; element[OxO97cd[0x16]][OxO97cd[0x3b]]=inp_MarginBottom[OxO97cd[0x14]] ; element[OxO97cd[0x19]]=inp_class[OxO97cd[0x14]] ;var arr=[OxO97cd[0x1a],OxO97cd[0x1b]];for(var Oxd8=0x0;Oxd8<arr[OxO97cd[0x1c]];Oxd8++){var n=arr[Oxd8];var e=document.getElementById(OxO97cd[0x1d]+n);var Ox63c=document.getElementById(OxO97cd[0x1e]+n+OxO97cd[0x1f]);if(ParseToString(e.value)){ element[OxO97cd[0x16]][n]=ParseToString(e.value)+Ox63c[OxO97cd[0x14]] ;} else { element[OxO97cd[0x16]][n]=OxO97cd[0x32] ;} ;} ; element[OxO97cd[0x22]]=sel_align[OxO97cd[0x14]] ; element[OxO97cd[0x16]][OxO97cd[0x23]]=sel_float[OxO97cd[0x14]] ; element[OxO97cd[0x16]][OxO97cd[0x24]]=sel_textalign[OxO97cd[0x14]] ; element[OxO97cd[0x25]]=inp_tooltip[OxO97cd[0x14]] ;if(element[OxO97cd[0x25]]==OxO97cd[0x32]){ element.removeAttribute(OxO97cd[0x25]) ;} ;if(element[OxO97cd[0x19]]==OxO97cd[0x32]){ element.removeAttribute(OxO97cd[0x19]) ;} ;}  ; function IsDigit(){return ((event[OxO97cd[0x3c]]>=0x30)&&(event[OxO97cd[0x3c]]<=0x39));}  ;
</script>
