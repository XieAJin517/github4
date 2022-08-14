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
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doBorderStyle('')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border:none;height:10;width:85">[[NotSet]]</div>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)"  onclick="doBorderStyle('solid')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border-bottom:black solid;height:10;width:85" title="dotted"></div>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)"  onclick="doBorderStyle('dotted')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border-bottom:black dotted;height:10;width:85" title="dotted"></div>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doBorderStyle('dashed')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border-bottom:black dashed;height:10;width:85" title="dashed"></div>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doBorderStyle('double')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border-bottom:black dotted;height:10;width:85" title="double"></div>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doBorderStyle('groove')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border-style:groove;height:10;width:85" title="groove"></div>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doBorderStyle('ridge')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border-style:ridge;height:10;width:85" title="ridge"></div>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doBorderStyle('inset')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border-style:inset;height:10;width:85" title="inset"></div>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doBorderStyle('outset')" style="cursor:default;height:25;padding:4;border:white 1 solid;">
											<div style="border-style:outset;height:10;width:85" title="outset"></div>
										</td>
									</tr>
								</table>
							</div>
							<input type=hidden id="sel_style">
						</td>
						<td valign=top style="padding:3">
							<div style='overflow:auto;border:gray 1 solid;width:115;height:127'>
								<table id=tblBorderApplyTo cellpadding=5 cellspacing=0 width=100% style='table-layout:fixed;background:white'>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doWidth('1px')" style="height:25;padding:1;border:white 1 solid;" >
											<table width=100%><tr><td style="height:25" >1px</td><td valign=top width=100%> <table style='border-bottom:black 1px solid;height:16;' width=100%><tr><td></td></tr></table> </td></tr></table>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doWidth('2px')" style="height:25;padding:1;border:white 1 solid;" >
											<table width=100%><tr><td style="height:25" >2px</td><td valign=top width=100%> <table style='border-bottom:black 2px solid;height:16;' width=100%><tr><td></td></tr></table> </td></tr></table>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doWidth('3px')" style="height:25;padding:1;border:white 1 solid;" >
											<table width=100%><tr><td style="height:25" >3px</td><td valign=top width=100%> <table style='border-bottom:black 2px solid;height:16;' width=100%><tr><td></td></tr></table> </td></tr></table>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doWidth('4px')" style="height:25;padding:1;border:white 1 solid;" >
											<table width=100%><tr><td style="height:25" >4px</td><td valign=top width=100%> <table style='border-bottom:black 4px solid;height:16;' width=100%><tr><td></td></tr></table> </td></tr></table>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doWidth('5px')" style="height:25;padding:1;border:white 1 solid;" >
											<table width=100%><tr><td style="height:25" >5px</td><td valign=top width=100%> <table style='border-bottom:black 5px solid;height:16;' width=100%><tr><td></td></tr></table> </td></tr></table>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doWidth('6px')" style="height:25;padding:1;border:white 1 solid;" >
											<table width=100%><tr><td style="height:25" >6px</td><td valign=top width=100%> <table style='border-bottom:black 6px solid;height:16;' width=100%><tr><td></td></tr></table> </td></tr></table>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doWidth('7px')" style="height:25;padding:1;border:white 1 solid;" >
											<table width=100%><tr><td style="height:25" >7px</td><td valign=top width=100%> <table style='border-bottom:black 7px solid;height:16;' width=100%><tr><td></td></tr></table> </td></tr></table>
										</td>
									</tr>
								</table>
								<input type=hidden name=sel_border id=sel_border>
							</div>		
						</td>
						<td valign=top style="padding:3" nowrap>													
							<div style='overflow:auto;border:gray 1 solid;width:55;height:127'>
								<table id=tblBorderApplyTo cellpadding=5 cellspacing=0 width=100% style='table-layout:fixed;background:white'>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doPart('none')" style="height:30;padding:4;border:white 1 solid;" >
											<img src='../images/border_none.gif' alt='No Border'>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doPart('')" style="height:30;padding:4;border:white 1 solid;" >
											<img src='../images/border_outside.gif' alt='All'>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doPart('left')" style="height:30;padding:4;border:white 1 solid;" >
											<img src='../images/border_left.gif' alt='[[Left]]'>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doPart('top')" style="height:30;padding:4;border:white 1 solid;" >
											<img src='../images/border_top.gif' alt='[[Top]]'>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doPart('right')" style="height:30;padding:4;border:white 1 solid;" >
											<img src='../images/border_right.gif' alt='[[Right]]'>
										</td>
									</tr>
									<tr>
										<td valign=top onMouseOver="m_Check(this,1)" onMouseOut="m_Check(this,0)" onclick="doPart('bottom')" style="height:30;padding:4;border:white 1 solid;" >
											<img src='../images/border_bottom.gif' alt='[[Bottom]]'>
										</td>
									</tr>
								</table>
								<input type=hidden name=sel_part id=sel_part>
							</div>
						</td>
						<td valign=top style="padding:0 5px 3px 8px" nowrap>
							<table cellpadding=0 cellspacing=0 style="padding-bottom:10">								
								<tr>						
									<td nowrap>[[Bordercolor]]:<br>
										<input type="text" id="bordercolor" name="bordercolor" size="7" style="WIDTH:57px">
										<img id="bordercolor_Preview" src="../images/colorpicker.gif"  align="absMiddle" onclick="SelectColor('bordercolor',this);" >
									</td>
								</tr>
								<tr>
									<td nowrap>[[ForeColor]]:<br>
										<input type="text" id="inp_color" name="inp_color" size="7" style="WIDTH:57px">
										<img id="inp_color_Preview" src="../images/colorpicker.gif"  align="absMiddle"  onclick="SelectColor('inp_color',this);">
									</td>
								</tr>
								<tr>						
									<td nowrap>[[Shade]]:<br>
										<input type="text" id="inp_shade" name="inp_shade" size="7" style="WIDTH:57px">
										<img id="inp_shade_Preview" src="../images/colorpicker.gif"  align="absMiddle" onclick="SelectColor('inp_shade',this);">
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
								<td><input type="text" id="inp_MarginLeft" size=1 onkeypress="return IsDigit(event);"></td>
								<td> px</td>
								<td>&nbsp;&nbsp;</td>
								<td align=right><span>[[Right]]</span>:</td>
								<td><input type="text" id="inp_MarginRight" size=1 onkeypress="return IsDigit(event);"></td>
								<td> px</td>
								</tr>
								<tr>
								<td><span>[[Top]]</span>:</td>
								<td><input type="text" id="inp_MarginTop" size=1 onkeypress="return IsDigit(event);"></td>
								<td> px</td>
								<td>&nbsp;&nbsp;</td>
								<td align=right><span>[[Bottom]]</span>:</td>
								<td><input type="text" id="inp_MarginBottom" size=1 onkeypress="return IsDigit(event);"></td>
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
								<td><input type="text" id="inp_PaddingLeft" size=1 onkeypress="return IsDigit(event);"></td>
								<td> px</td>
								<td>&nbsp;&nbsp;</td>
								<td align=right><span>[[Right]]</span>:</td>
								<td><input type="text" id="inp_PaddingRight" size=1 onkeypress="return IsDigit(event);"></td>
								<td> px</td>
								</tr>
								<tr>
								<td><span>[[Top]]</span>:</td>
								<td><input type="text" id="inp_PaddingTop" size=1 onkeypress="return IsDigit(event);"></td>
								<td> px</td>
								<td>&nbsp;&nbsp;</td>
								<td align=right><span>[[Bottom]]</span>:</td>
								<td><input type="text" id="inp_PaddingBottom" size=1 onkeypress="return IsDigit(event);"></td>
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
											<input type="text" id="inp_width" style="width:42px" onkeypress="return IsDigit(event);">
											<select id="sel_width_unit">
												<option value="px">px</option>
												<option value="%">%</option>
											</select></nobr>
										</td>
										<td>[[Height]]:</td>
										<td><nobr>
											<input type="text" id="inp_height" style="width:42px" onkeypress="return IsDigit(event);">
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

var OxO18a9=["sel_style","sel_part","sel_border","inp_color","inp_shade","inp_MarginLeft","inp_MarginRight","inp_MarginTop","inp_MarginBottom","inp_PaddingLeft","inp_PaddingRight","inp_PaddingTop","inp_PaddingBottom","inp_class","inp_width","inp_height","sel_align","sel_textalign","sel_float","inp_tooltip","sel_width_unit","sel_height_unit","bordercolor","bordercolor_Preview","inp_color_Preview","inp_shade_Preview","value","borderColor","style","backgroundColor","color","className","width","height","length","inp_","sel_","_unit","selectedIndex","align","styleFloat","textAlign","title","border","borderBottomWidth","borderLeftWidth","borderRightWidth","borderTopWidth","borderBottomStyle","borderLeftStyle","borderRightStyle","borderTopStyle","none","-","red",""," ","paddingLeft","paddingRight","paddingTop","paddingBottom","marginLeft","marginRight","marginTop","marginBottom","1px solid #00107B","background","#F1EEE7","which","keyCode","preventDefault","../colorpicker.aspx","width=600,height=400,resizable=1,toolbars=0,menubar=0,status=0","returnValue"];var sel_style=document.getElementById(OxO18a9[0x0]);var sel_part=document.getElementById(OxO18a9[0x1]);var sel_border=document.getElementById(OxO18a9[0x2]);var inp_color=document.getElementById(OxO18a9[0x3]);var inp_shade=document.getElementById(OxO18a9[0x4]);var inp_MarginLeft=document.getElementById(OxO18a9[0x5]);var inp_MarginRight=document.getElementById(OxO18a9[0x6]);var inp_MarginTop=document.getElementById(OxO18a9[0x7]);var inp_MarginBottom=document.getElementById(OxO18a9[0x8]);var inp_PaddingLeft=document.getElementById(OxO18a9[0x9]);var inp_PaddingRight=document.getElementById(OxO18a9[0xa]);var inp_PaddingTop=document.getElementById(OxO18a9[0xb]);var inp_PaddingBottom=document.getElementById(OxO18a9[0xc]);var inp_class=document.getElementById(OxO18a9[0xd]);var inp_width=document.getElementById(OxO18a9[0xe]);var inp_height=document.getElementById(OxO18a9[0xf]);var sel_align=document.getElementById(OxO18a9[0x10]);var sel_textalign=document.getElementById(OxO18a9[0x11]);var sel_float=document.getElementById(OxO18a9[0x12]);var inp_tooltip=document.getElementById(OxO18a9[0x13]);var inp_width=document.getElementById(OxO18a9[0xe]);var sel_width_unit=document.getElementById(OxO18a9[0x14]);var inp_height=document.getElementById(OxO18a9[0xf]);var sel_height_unit=document.getElementById(OxO18a9[0x15]);var bordercolor=document.getElementById(OxO18a9[0x16]);var bordercolor_Preview=document.getElementById(OxO18a9[0x17]);var inp_color=document.getElementById(OxO18a9[0x3]);var inp_color_Preview=document.getElementById(OxO18a9[0x18]);var inp_shade=document.getElementById(OxO18a9[0x4]);var inp_shade_Preview=document.getElementById(OxO18a9[0x19]); function UpdateState(){}  ; function doBorderStyle(Ox25){ sel_style[OxO18a9[0x1a]]=Ox25 ;}  ; function doPart(Ox25){ sel_part[OxO18a9[0x1a]]=Ox25 ;}  ; function doWidth(Ox25){if(Ox25){ sel_border[OxO18a9[0x1a]]=Ox25 ;} ;}  ; function SyncToView(){ bordercolor[OxO18a9[0x1a]]=element[OxO18a9[0x1c]][OxO18a9[0x1b]] ; bordercolor[OxO18a9[0x1c]][OxO18a9[0x1d]]=element[OxO18a9[0x1c]][OxO18a9[0x1b]] ; bordercolor_Preview[OxO18a9[0x1c]][OxO18a9[0x1d]]=element[OxO18a9[0x1c]][OxO18a9[0x1b]] ; inp_color[OxO18a9[0x1a]]=element[OxO18a9[0x1c]][OxO18a9[0x1e]] ; inp_color[OxO18a9[0x1c]][OxO18a9[0x1d]]=element[OxO18a9[0x1c]][OxO18a9[0x1e]] ; inp_color_Preview[OxO18a9[0x1c]][OxO18a9[0x1d]]=element[OxO18a9[0x1c]][OxO18a9[0x1e]] ; inp_shade[OxO18a9[0x1a]]=element[OxO18a9[0x1c]][OxO18a9[0x1d]] ; inp_shade[OxO18a9[0x1c]][OxO18a9[0x1d]]=element[OxO18a9[0x1c]][OxO18a9[0x1d]] ; inp_shade_Preview[OxO18a9[0x1c]][OxO18a9[0x1d]]=element[OxO18a9[0x1c]][OxO18a9[0x1d]] ;if(ParseToString(element[OxO18a9[0x1c]].marginLeft)){ inp_MarginLeft[OxO18a9[0x1a]]=ParseToString(element[OxO18a9[0x1c]].marginLeft) ;} ;if(ParseToString(element[OxO18a9[0x1c]].marginRight)){ inp_MarginRight[OxO18a9[0x1a]]=ParseToString(element[OxO18a9[0x1c]].marginRight) ;} ;if(ParseToString(element[OxO18a9[0x1c]].marginTop)){ inp_MarginTop[OxO18a9[0x1a]]=ParseToString(element[OxO18a9[0x1c]].marginTop) ;} ;if(ParseToString(element[OxO18a9[0x1c]].marginBottom)){ inp_MarginBottom[OxO18a9[0x1a]]=ParseToString(element[OxO18a9[0x1c]].marginBottom) ;} ;if(ParseToString(element[OxO18a9[0x1c]].paddingLeft)){ inp_PaddingLeft[OxO18a9[0x1a]]=ParseToString(element[OxO18a9[0x1c]].paddingLeft) ;} ;if(ParseToString(element[OxO18a9[0x1c]].paddingRight)){ inp_PaddingRight[OxO18a9[0x1a]]=ParseToString(element[OxO18a9[0x1c]].paddingRight) ;} ;if(ParseToString(element[OxO18a9[0x1c]].paddingTop)){ inp_PaddingTop[OxO18a9[0x1a]]=ParseToString(element[OxO18a9[0x1c]].paddingTop) ;} ;if(ParseToString(element[OxO18a9[0x1c]].paddingBottom)){ inp_PaddingBottom[OxO18a9[0x1a]]=ParseToString(element[OxO18a9[0x1c]].paddingBottom) ;} ; inp_class[OxO18a9[0x1a]]=element[OxO18a9[0x1f]] ;var arr=[OxO18a9[0x20],OxO18a9[0x21]];for(var Oxd8=0x0;Oxd8<arr[OxO18a9[0x22]];Oxd8++){var n=arr[Oxd8];var e=document.getElementById(OxO18a9[0x23]+n);var Ox25=document.getElementById(OxO18a9[0x24]+n+OxO18a9[0x25]); Ox25[OxO18a9[0x26]]=0x0 ;if(ParseToString(element[OxO18a9[0x1c]][n])){ e[OxO18a9[0x1a]]=ParseToString(element[OxO18a9[0x1c]][n]) ;} ;} ; sel_align[OxO18a9[0x1a]]=element[OxO18a9[0x27]] ; sel_float[OxO18a9[0x1a]]=element[OxO18a9[0x1c]][OxO18a9[0x28]] ; sel_textalign[OxO18a9[0x1a]]=element[OxO18a9[0x1c]][OxO18a9[0x29]] ; inp_tooltip[OxO18a9[0x1a]]=element[OxO18a9[0x2a]] ;if(element[OxO18a9[0x1c]][OxO18a9[0x2b]]){ sel_border[OxO18a9[0x1a]]=element[OxO18a9[0x1c]][OxO18a9[0x2b]] ;} ;if(element[OxO18a9[0x1c]][OxO18a9[0x2d]]==element[OxO18a9[0x1c]][OxO18a9[0x2f]]&&element[OxO18a9[0x1c]][OxO18a9[0x2d]]==element[OxO18a9[0x1c]][OxO18a9[0x2e]]&&element[OxO18a9[0x1c]][OxO18a9[0x2d]]==element[OxO18a9[0x1c]][OxO18a9[0x2c]]){ sel_border[OxO18a9[0x1a]]=element[OxO18a9[0x1c]][OxO18a9[0x2d]] ;} ;if(element[OxO18a9[0x1c]][OxO18a9[0x31]]==element[OxO18a9[0x1c]][OxO18a9[0x33]]&&element[OxO18a9[0x1c]][OxO18a9[0x31]]==element[OxO18a9[0x1c]][OxO18a9[0x32]]&&element[OxO18a9[0x1c]][OxO18a9[0x31]]==element[OxO18a9[0x1c]][OxO18a9[0x30]]){ sel_style[OxO18a9[0x1a]]=element[OxO18a9[0x1c]][OxO18a9[0x31]] ;} ;}  ; function SyncTo(){var Ox639=sel_part[OxO18a9[0x1a]];if(Ox639==OxO18a9[0x34]){ element[OxO18a9[0x1c]][OxO18a9[0x2b]]=OxO18a9[0x34] ;} else {var Ox63a=Ox639?OxO18a9[0x35]+Ox639:Ox639;var Ox6b=OxO18a9[0x36];var Ox84=sel_style[OxO18a9[0x1a]]||OxO18a9[0x37];var Ox63b=sel_border[OxO18a9[0x1a]]; element[OxO18a9[0x1c]][OxO18a9[0x2b]]=OxO18a9[0x34] ;if(Ox63b||Ox84){ SetStyle(element[OxO18a9[0x1c]],OxO18a9[0x2b]+Ox63a,Ox63b+OxO18a9[0x38]+Ox84+OxO18a9[0x38]+Ox6b) ;} else { SetStyle(element[OxO18a9[0x1c]],OxO18a9[0x2b]+Ox63a,OxO18a9[0x37]) ;} ; SetStyle(element[OxO18a9[0x1c]],OxO18a9[0x2b]+Ox63a,Ox63b+OxO18a9[0x38]+Ox84+OxO18a9[0x38]+Ox6b) ;} ;try{ element[OxO18a9[0x1c]][OxO18a9[0x1e]]=inp_color[OxO18a9[0x1a]]||OxO18a9[0x37] ;} catch(x){ element[OxO18a9[0x1c]][OxO18a9[0x1e]]=OxO18a9[0x37] ;} ;try{ element[OxO18a9[0x1c]][OxO18a9[0x1d]]=inp_shade[OxO18a9[0x1a]]||OxO18a9[0x37] ;} catch(x){ element[OxO18a9[0x1c]][OxO18a9[0x1d]]=OxO18a9[0x37] ;} ;try{ element[OxO18a9[0x1c]][OxO18a9[0x1b]]=bordercolor[OxO18a9[0x1a]]||OxO18a9[0x37] ;} catch(x){ element[OxO18a9[0x1c]][OxO18a9[0x1b]]=OxO18a9[0x37] ;} ; element[OxO18a9[0x1c]][OxO18a9[0x39]]=inp_PaddingLeft[OxO18a9[0x1a]] ; element[OxO18a9[0x1c]][OxO18a9[0x3a]]=inp_PaddingRight[OxO18a9[0x1a]] ; element[OxO18a9[0x1c]][OxO18a9[0x3b]]=inp_PaddingTop[OxO18a9[0x1a]] ; element[OxO18a9[0x1c]][OxO18a9[0x3c]]=inp_PaddingBottom[OxO18a9[0x1a]] ; element[OxO18a9[0x1c]][OxO18a9[0x3d]]=inp_MarginLeft[OxO18a9[0x1a]] ; element[OxO18a9[0x1c]][OxO18a9[0x3e]]=inp_MarginRight[OxO18a9[0x1a]] ; element[OxO18a9[0x1c]][OxO18a9[0x3f]]=inp_MarginTop[OxO18a9[0x1a]] ; element[OxO18a9[0x1c]][OxO18a9[0x40]]=inp_MarginBottom[OxO18a9[0x1a]] ; element[OxO18a9[0x1f]]=inp_class[OxO18a9[0x1a]] ;var arr=[OxO18a9[0x20],OxO18a9[0x21]];for(var Oxd8=0x0;Oxd8<arr[OxO18a9[0x22]];Oxd8++){var n=arr[Oxd8];var e=document.getElementById(OxO18a9[0x23]+n);var Ox63c=document.getElementById(OxO18a9[0x24]+n+OxO18a9[0x25]);if(ParseToString(e.value)){ element[OxO18a9[0x1c]][n]=ParseToString(e.value)+Ox63c[OxO18a9[0x1a]] ;} else { element[OxO18a9[0x1c]][n]=OxO18a9[0x37] ;} ;} ; element[OxO18a9[0x27]]=sel_align[OxO18a9[0x1a]] ; element[OxO18a9[0x1c]][OxO18a9[0x28]]=sel_float[OxO18a9[0x1a]] ; element[OxO18a9[0x1c]][OxO18a9[0x29]]=sel_textalign[OxO18a9[0x1a]] ; element[OxO18a9[0x2a]]=inp_tooltip[OxO18a9[0x1a]] ;if(element[OxO18a9[0x2a]]==OxO18a9[0x37]){ element.removeAttribute(OxO18a9[0x2a]) ;} ;if(element[OxO18a9[0x1f]]==OxO18a9[0x37]){ element.removeAttribute(OxO18a9[0x1f]) ;} ;}  ; function m_Check(Ox20,n){if(n==0x1){ Ox20[OxO18a9[0x1c]][OxO18a9[0x2b]]=OxO18a9[0x41] ; Ox20[OxO18a9[0x1c]][OxO18a9[0x42]]=OxO18a9[0x43] ;} else { Ox20[OxO18a9[0x1c]][OxO18a9[0x2b]]=OxO18a9[0x37] ; Ox20[OxO18a9[0x1c]][OxO18a9[0x42]]=OxO18a9[0x37] ;} ;}  ; function IsDigit(e){var Ox17c=e[OxO18a9[0x45]]||e[OxO18a9[0x44]];if((Ox17c<0x30||Ox17c>0x39)&&Ox17c!=0x8&&(Ox17c<0x23||Ox17c>0x25)&&Ox17c!=0x27&&Ox17c!=0x2e){if(e[OxO18a9[0x46]]){ e.preventDefault() ;} ;return false; e[OxO18a9[0x45]]=0x0 ;} ;}  ; function SelectColor(Ox19b,Ox4df){var Ox4e0=OxO18a9[0x47]; openModalWindow(Ox4e0,null,OxO18a9[0x48],function (Ox2d9,Ox18e){if(Ox18e[OxO18a9[0x49]]){ document.getElementById(Ox19b)[OxO18a9[0x1a]]=Ox18e[OxO18a9[0x49]].toUpperCase() ; document.getElementById(Ox19b)[OxO18a9[0x1c]][OxO18a9[0x1d]]=Ox18e[OxO18a9[0x49]] ; Ox4df[OxO18a9[0x1c]][OxO18a9[0x1d]]=Ox18e[OxO18a9[0x49]] ;} ;} ) ;}  ;

</script>
