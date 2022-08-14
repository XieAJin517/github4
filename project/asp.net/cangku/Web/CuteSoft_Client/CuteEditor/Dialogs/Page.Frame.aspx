<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<html>
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)">
	<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)">
	<link rel=stylesheet href='style.css' >
	<script src=dialog.js></script><script src=../_shared.js></script>
	<body style="border:0px;padding-top:4px;padding-left:4px;padding-right:4px;;margin:0px;overflow:auto;">
		<table border="0" cellspacing="0" cellpadding="2" style="width:100%;">
			<tr>
				<td valign="top">
					<fieldset>
						<legend>[[DocumentPropertyPage]]</legend>
						<div style="height:12px"></div>
						<table border="0" cellpadding="3" cellspacing="0" style="border-collapse:collapse;" class="normal">
							<tr>
								<td>[[Title]]:</td>
								<td colspan="4">
									<input type="text" id="inp_title" style="width:320px">
								</td>
							</tr>
							<tr>
								<td>DOCTYPE:</td>
								<td colspan="4">
									<input type="text" id="inp_doctype" style="width:320px">
								</td>
							</tr>
							<tr>
								<td>[[Description]]:</td>
								<td colspan="4">
									<textarea id="inp_description" rows="3" style="width:320px"></textarea>
								</td>
							</tr>
							<tr>
								<td>[[Keywords]]:</td>
								<td colspan="4">
									<textarea id="inp_keywords" rows="3" style="width:320px"></textarea>
								</td>
							</tr>
							
							<tr>
								<td nowrap>[[PageLanguage]]:</td>
								<td colspan="4">
									<input type="text" id="PageLanguage" name="PageLanguage" size="15" style="WIDTH:320px">
								</td>
							</tr>
							<tr>
								<td nowrap>[[HTMLEncoding]]:</td>
								<td colspan="4">
									<input type="text" id="HTMLEncoding" name="HTMLEncoding" size="15" style="WIDTH:320px">
								</td>
							</tr>
							<tr>
								<td nowrap>[[Backgroundcolor]]:</td>
								<td>
									<input type="text" id="bgcolor" name="bgcolor" size="7" style="WIDTH:57px">
										<img id="bgcolor_Preview" src="../images/colorpicker.gif" align="absMiddle" style='BEHAVIOR:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'
											oncolorchange="bgcolor.value=this.selectedColor; bgcolor.style.backgroundColor=this.selectedColor; bgcolor_Preview.style.backgroundColor=this.selectedColor">
								</td>
								<td width="5"></td>
								<td nowrap>[[ForeColor]]:</td>
								<td>
									<input type="text" id="fontcolor" name="fontcolor" size="7" style="WIDTH:57px">
										<img id="fontcolor_Preview" src="../images/colorpicker.gif" align="absMiddle" style='BEHAVIOR:url(../ColorPicker.htc.aspx?culture=[[_culture_]]&[[DNN_Arg]])'
											oncolorchange="fontcolor.value=this.selectedColor; fontcolor.style.backgroundColor=this.selectedColor; fontcolor_Preview.style.backgroundColor=this.selectedColor">
								</td>
							</tr>
							
							<tr>
								<td>[[Backgroundimage]]:</td>
								<td colspan="4">
									<input type="text" id="Backgroundimage" style="width:250px"><button id="btnbrowse">[[Browse]]</button>
								</td>
							</tr>							
							<tr>
								<td nowrap>[[TopMargin]]:</td>
								<td>
									<input type="text" id="TopMargin" name="TopMargin" size="7" style="WIDTH:57px"> Pixels
								</td>
								<td width="5"></td>
								<td nowrap>[[BottomMargin]]:</td>
								<td>
									<input type="text" id="BottomMargin" name="BottomMargin" size="7" style="WIDTH:57px"> Pixels
								</td>
							</tr>
							<tr>
								<td nowrap>[[LeftMargin]]:</td>
								<td>
									<input type="text" id="LeftMargin" name="LeftMargin" size="7" style="WIDTH:57px"> Pixels
								</td>
								<td width="5"></td>
								<td nowrap>[[RightMargin]]:</td>
								<td>
									<input type="text" id="RightMargin" name="RightMargin" size="7" style="WIDTH:57px"> Pixels
								</td>
							</tr>
							<tr>
								<td nowrap>[[MarginWidth]]:</td>
								<td>
									<input type="text" id="MarginWidth" name="MarginWidth" size="7" style="WIDTH:57px"> Pixels
								</td>
								<td width="5"></td>
								<td nowrap>[[MarginHeight]]:</td>
								<td>
									<input type="text" id="MarginHeight" name="MarginHeight" size="7" style="WIDTH:57px"> Pixels
								</td>
							</tr>
						</table>
					</fieldset>
				</td>
			</tr>
			<tr>
				<td style="text-align:right;height:36px;padding-top:2px;padding-bottom:2px;padding-right:24px;">
					<button id="btnok" style='width:80px'>[[OK]]</button> &nbsp; <button id="btncc" style='width:80px'>
						[[Cancel]]</button>
				</td>
			</tr>
		</table>
	</body>
	<script>
	
	var OxO9cb4=["dialogArguments","editor","window","document","body","head","backgroundColor","style","color","background","title","innerHTML","","meta","length","name","keywords","content","description","httpEquiv","content-type","content-language","DOCTYPE","value","inp_doctype","inp_title","inp_description","inp_keywords","Backgroundimage","fontcolor","fontcolor_Preview","bgcolor","bgcolor_Preview","topMargin","TopMargin","bottomMargin","BottomMargin","leftMargin","LeftMargin","rightMargin","RightMargin","marginWidth","MarginWidth","marginHeight","MarginHeight","PageLanguage","HTMLEncoding","Please enter a valid number.","Please enter a valid color number.","lastChild","\x3CMETA ","=\x22","\x22 CONTENT=\x22","\x22\x3E","parentNode","http-equiv","Content-Type","Content-Language","SelectImage.Aspx?settinghash=[[_setting_]]\x26file=","\x26[[DNN_Arg]]","[[SelectFileDialogOption]]"];var obj=top[OxO9cb4[0x0]];var editor=obj[OxO9cb4[0x1]];var editwin=obj[OxO9cb4[0x2]];var editdoc=obj[OxO9cb4[0x3]];var body=editdoc.getElementsByTagName(OxO9cb4[0x4]).item(0x0);var head=obj[OxO9cb4[0x5]];var body_bgcolor=editdoc[OxO9cb4[0x4]][OxO9cb4[0x7]][OxO9cb4[0x6]];var body_fontcolor=editdoc[OxO9cb4[0x4]][OxO9cb4[0x7]][OxO9cb4[0x8]];var Backgroundimage=editdoc[OxO9cb4[0x4]][OxO9cb4[0x9]];var str_title=editdoc.getElementsByTagName(OxO9cb4[0xa])[0x0]; str_title=str_title?str_title[OxO9cb4[0xb]]:OxO9cb4[0xc] ;var str_keywords=OxO9cb4[0xc];var str_description=OxO9cb4[0xc];var str_HTMLEncoding=OxO9cb4[0xc];var str_PageLanguage=OxO9cb4[0xc];var str_BaseHref=OxO9cb4[0xc];var str_DOCTYPE=OxO9cb4[0xc];var metas=editdoc.getElementsByTagName(OxO9cb4[0xd]);for(var m=0x0;m<metas[OxO9cb4[0xe]];m++){if(metas[m][OxO9cb4[0xf]].toLowerCase()==OxO9cb4[0x10]){ str_keywords=metas[m][OxO9cb4[0x11]] ;} ;if(metas[m][OxO9cb4[0xf]].toLowerCase()==OxO9cb4[0x12]){ str_description=metas[m][OxO9cb4[0x11]] ;} ;if(metas[m][OxO9cb4[0x13]].toLowerCase()==OxO9cb4[0x14]){ str_HTMLEncoding=metas[m][OxO9cb4[0x11]] ;} ;if(metas[m][OxO9cb4[0x13]].toLowerCase()==OxO9cb4[0x15]){ str_PageLanguage=metas[m][OxO9cb4[0x11]] ;} ;} ; document.getElementById(OxO9cb4[0x18])[OxO9cb4[0x17]]=obj[OxO9cb4[0x16]] ; document.getElementById(OxO9cb4[0x19])[OxO9cb4[0x17]]=str_title ; document.getElementById(OxO9cb4[0x1a])[OxO9cb4[0x17]]=str_description ; document.getElementById(OxO9cb4[0x1b])[OxO9cb4[0x17]]=str_keywords ; document.getElementById(OxO9cb4[0x1c])[OxO9cb4[0x17]]=Backgroundimage ; document.getElementById(OxO9cb4[0x1d])[OxO9cb4[0x17]]=body_fontcolor ; document.getElementById(OxO9cb4[0x1e])[OxO9cb4[0x7]][OxO9cb4[0x6]]=body_fontcolor ; document.getElementById(OxO9cb4[0x1f])[OxO9cb4[0x17]]=body_bgcolor ; document.getElementById(OxO9cb4[0x20])[OxO9cb4[0x7]][OxO9cb4[0x6]]=body_bgcolor ;if(body[OxO9cb4[0x21]]){ document.getElementById(OxO9cb4[0x22])[OxO9cb4[0x17]]=body[OxO9cb4[0x21]] ;} ;if(body[OxO9cb4[0x23]]){ document.getElementById(OxO9cb4[0x24])[OxO9cb4[0x17]]=body[OxO9cb4[0x23]] ;} ;if(body[OxO9cb4[0x25]]){ document.getElementById(OxO9cb4[0x26])[OxO9cb4[0x17]]=body[OxO9cb4[0x25]] ;} ;if(body[OxO9cb4[0x27]]){ document.getElementById(OxO9cb4[0x28])[OxO9cb4[0x17]]=body[OxO9cb4[0x27]] ;} ;if(body[OxO9cb4[0x29]]){ document.getElementById(OxO9cb4[0x2a])[OxO9cb4[0x17]]=body[OxO9cb4[0x29]] ;} ;if(body[OxO9cb4[0x2b]]){ document.getElementById(OxO9cb4[0x2c])[OxO9cb4[0x17]]=body[OxO9cb4[0x2b]] ;} ; document.getElementById(OxO9cb4[0x2d])[OxO9cb4[0x17]]=str_PageLanguage ; document.getElementById(OxO9cb4[0x2e])[OxO9cb4[0x17]]=str_HTMLEncoding ; function btnok.onclick(){try{ body[OxO9cb4[0x21]]=document.getElementById(OxO9cb4[0x22])[OxO9cb4[0x17]] ; body[OxO9cb4[0x23]]=document.getElementById(OxO9cb4[0x24])[OxO9cb4[0x17]] ; body[OxO9cb4[0x25]]=document.getElementById(OxO9cb4[0x26])[OxO9cb4[0x17]] ; body[OxO9cb4[0x27]]=document.getElementById(OxO9cb4[0x28])[OxO9cb4[0x17]] ;if(document.getElementById(OxO9cb4[0x2a])[OxO9cb4[0x17]]){ body[OxO9cb4[0x29]]=document.getElementById(OxO9cb4[0x2a])[OxO9cb4[0x17]] ;} ;if(document.getElementById(OxO9cb4[0x2c])[OxO9cb4[0x17]]){ body[OxO9cb4[0x2b]]=document.getElementById(OxO9cb4[0x2c])[OxO9cb4[0x17]] ;} ;} catch(er){ alert(OxO9cb4[0x2f]) ;return ;} ; str_DOCTYPE=document.getElementById(OxO9cb4[0x18])[OxO9cb4[0x17]] ; body_fontcolor=document.getElementById(OxO9cb4[0x1d])[OxO9cb4[0x17]] ; body_bgcolor=document.getElementById(OxO9cb4[0x1f])[OxO9cb4[0x17]] ; str_title=document.getElementById(OxO9cb4[0x19])[OxO9cb4[0x17]] ; str_description=document.getElementById(OxO9cb4[0x1a])[OxO9cb4[0x17]] ; str_keywords=document.getElementById(OxO9cb4[0x1b])[OxO9cb4[0x17]] ; str_PageLanguage=document.getElementById(OxO9cb4[0x2d])[OxO9cb4[0x17]] ; str_HTMLEncoding=document.getElementById(OxO9cb4[0x2e])[OxO9cb4[0x17]] ; Backgroundimage=document.getElementById(OxO9cb4[0x1c])[OxO9cb4[0x17]] ;try{ editdoc[OxO9cb4[0x4]][OxO9cb4[0x7]][OxO9cb4[0x6]]=body_bgcolor ; editdoc[OxO9cb4[0x4]][OxO9cb4[0x7]][OxO9cb4[0x8]]=body_fontcolor ;if(Backgroundimage){ editdoc[OxO9cb4[0x4]][OxO9cb4[0x9]]=Backgroundimage ;} ;} catch(er){ alert(OxO9cb4[0x30]) ;return ;} ;var metas=head.getElementsByTagName(OxO9cb4[0xd]);var Ox529=null;var Ox52a=null;var Ox52b=null;var Ox52c=null;var Oxb2=head.getElementsByTagName(OxO9cb4[0xa])[0x0];if(Oxb2){while(node=Oxb2[OxO9cb4[0x31]]){ Oxb2.removeChild(node) ;} ;} else { Oxb2=editdoc.createElement(OxO9cb4[0xa]) ; head.appendChild(Oxb2) ;} ;if(str_title){ editdoc[OxO9cb4[0xa]]=str_title ;} else { editdoc[OxO9cb4[0xa]]=OxO9cb4[0xc] ;} ;for(var m=0x0;m<metas[OxO9cb4[0xe]];m++){if(metas[m][OxO9cb4[0xf]].toLowerCase()==OxO9cb4[0x10]){ Ox529=metas[m] ;} ;if(metas[m][OxO9cb4[0xf]].toLowerCase()==OxO9cb4[0x12]){ Ox52a=metas[m] ;} ;if(metas[m][OxO9cb4[0x13]].toLowerCase()==OxO9cb4[0x14]){ Ox52b=metas[m] ;} ;if(metas[m][OxO9cb4[0x13]].toLowerCase()==OxO9cb4[0x15]){ Ox52c=metas[m] ;} ;} ; function Ox52d(Oxb7,name,Ox45b){var Ox52e=editdoc.createElement(OxO9cb4[0x32]+Oxb7+OxO9cb4[0x33]+name+OxO9cb4[0x34]+Ox45b+OxO9cb4[0x35]); head.appendChild(Ox52e) ;}  ;if(Ox529){ Ox529[OxO9cb4[0x36]].removeChild(Ox529) ; Ox529=null ;} ;if(!Ox529&&str_keywords){ Ox52d(OxO9cb4[0xf],OxO9cb4[0x10],str_keywords) ;} ;if(Ox52a){ Ox52a[OxO9cb4[0x36]].removeChild(Ox52a) ; Ox52a=null ;} ;if(!Ox52a&&str_description){ Ox52d(OxO9cb4[0xf],OxO9cb4[0x12],str_description) ;} ;if(Ox52b){ Ox52b[OxO9cb4[0x36]].removeChild(Ox52b) ; Ox52b=null ;} ;if(!Ox52b&&str_HTMLEncoding){ Ox52d(OxO9cb4[0x37],OxO9cb4[0x38],str_HTMLEncoding) ;} ;if(Ox52c){ Ox52c[OxO9cb4[0x36]].removeChild(Ox52c) ; Ox52c=null ;} ;if(!Ox52c&&str_PageLanguage){ Ox52d(OxO9cb4[0x37],OxO9cb4[0x39],str_PageLanguage) ;} ; editor[OxO9cb4[0x16]]=str_DOCTYPE ; top.close() ;}  ; function btnbrowse.onclick(){var Ox74=showModalDialog(OxO9cb4[0x3a]+escape(document.getElementById(OxO9cb4[0x1c]).value)+OxO9cb4[0x3b],null,OxO9cb4[0x3c]);if(Ox74){ document.getElementById(OxO9cb4[0x1c])[OxO9cb4[0x17]]=Ox74 ;} ;}  ; function btncc.onclick(){ top.close() ;}  ;
	</script>
</html>
