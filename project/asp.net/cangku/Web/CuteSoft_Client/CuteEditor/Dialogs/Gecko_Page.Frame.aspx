<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<html>
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)">
	<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)">
	<link rel=stylesheet href='style.css' >
	<script src=Gecko_dialog.js></script><script src=../_shared.js></script>
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
								<td>[[HtmlBase]]:</td>
								<td colspan="4"><input type="text" id="inp_htmlbase" style="width:320px"></td>
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
									<img id="bgcolor_Preview" src="../images/colorpicker.gif" onclick="SelectColor(1);" align="absMiddle">
												
								</td>
								<td width="5"></td>
								<td nowrap>[[ForeColor]]:</td>
								<td>
									<input type="text" id="fontcolor" name="fontcolor" size="7" style="WIDTH:57px">
									<img id="fontcolor_Preview" src="../images/colorpicker.gif" onclick="SelectColor(2);" align="absMiddle">
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
		</table>
		
		<p align="center">
			<input class="inputbuttoninsert" type="button" value="[[Ok]]" onclick="btnok_click()"
						id="Button1" NAME="Button1">&nbsp;&nbsp;&nbsp; 
			<input class="inputbuttoncancel" type="button" value="[[Cancel]]" onclick="btncc_click()"
								id="Button2" NAME="Button2">
		</p>
	</body>
	<script>
	
	var OxOeee5=["dialogArguments","editor","window","document","DOCTYPE","body","head","backgroundColor","style","color","base","title","innerHTML","","meta","length","name","keywords","content","description","httpEquiv","content-type","content-language","value","inp_doctype","inp_title","inp_description","inp_keywords","fontcolor","fontcolor_Preview","bgcolor","bgcolor_Preview","topMargin","TopMargin","bottomMargin","BottomMargin","leftMargin","LeftMargin","rightMargin","RightMargin","marginWidth","MarginWidth","marginHeight","MarginHeight","PageLanguage","HTMLEncoding","href","inp_htmlbase","Please enter a valid number.","Please enter a valid color number.","lastChild","META ","=\x22","\x22 CONTENT=\x22","\x22","\x3CBASE href=\x22","\x22 target=_blank\x3E","parentNode","http-equiv","Content-Type","Content-Language","returnValue","../colorpicker.aspx"]; window.resizeTo(0x1ea,0x203) ;var obj=top[OxOeee5[0x0]];var editor=obj[OxOeee5[0x1]];var editwin=obj[OxOeee5[0x2]];var editdoc=obj[OxOeee5[0x3]];var DOCTYPE=obj[OxOeee5[0x4]];var body=editdoc.getElementsByTagName(OxOeee5[0x5]).item(0x0);var head=obj[OxOeee5[0x6]];var body_bgcolor=editdoc[OxOeee5[0x5]][OxOeee5[0x8]][OxOeee5[0x7]];var body_fontcolor=editdoc[OxOeee5[0x5]][OxOeee5[0x8]][OxOeee5[0x9]];var htmlbase=editdoc.getElementsByTagName(OxOeee5[0xa]).item(0x0);var str_title=editdoc.getElementsByTagName(OxOeee5[0xb])[0x0]; str_title=str_title?str_title[OxOeee5[0xc]]:OxOeee5[0xd] ;var str_keywords=OxOeee5[0xd];var str_description=OxOeee5[0xd];var str_HTMLEncoding=OxOeee5[0xd];var str_PageLanguage=OxOeee5[0xd];var str_BaseHref=OxOeee5[0xd];var str_DOCTYPE=OxOeee5[0xd];var metas=editdoc.getElementsByTagName(OxOeee5[0xe]);for(var m=0x0;m<metas[OxOeee5[0xf]];m++){if(metas[m][OxOeee5[0x10]].toLowerCase()==OxOeee5[0x11]){ str_keywords=metas[m][OxOeee5[0x12]] ;} ;if(metas[m][OxOeee5[0x10]].toLowerCase()==OxOeee5[0x13]){ str_description=metas[m][OxOeee5[0x12]] ;} ;if(metas[m][OxOeee5[0x14]].toLowerCase()==OxOeee5[0x15]){ str_HTMLEncoding=metas[m][OxOeee5[0x12]] ;} ;if(metas[m][OxOeee5[0x14]].toLowerCase()==OxOeee5[0x16]){ str_PageLanguage=metas[m][OxOeee5[0x12]] ;} ;} ; document.getElementById(OxOeee5[0x18])[OxOeee5[0x17]]=obj[OxOeee5[0x4]] ; document.getElementById(OxOeee5[0x19])[OxOeee5[0x17]]=str_title ; document.getElementById(OxOeee5[0x1a])[OxOeee5[0x17]]=str_description ; document.getElementById(OxOeee5[0x1b])[OxOeee5[0x17]]=str_keywords ; document.getElementById(OxOeee5[0x1c])[OxOeee5[0x17]]=body_fontcolor ; document.getElementById(OxOeee5[0x1d])[OxOeee5[0x8]][OxOeee5[0x7]]=body_fontcolor ; document.getElementById(OxOeee5[0x1e])[OxOeee5[0x17]]=body_bgcolor ; document.getElementById(OxOeee5[0x1f])[OxOeee5[0x8]][OxOeee5[0x7]]=body_bgcolor ;if(body[OxOeee5[0x20]]){ document.getElementById(OxOeee5[0x21])[OxOeee5[0x17]]=body[OxOeee5[0x20]] ;} ;if(body[OxOeee5[0x22]]){ document.getElementById(OxOeee5[0x23])[OxOeee5[0x17]]=body[OxOeee5[0x22]] ;} ;if(body[OxOeee5[0x24]]){ document.getElementById(OxOeee5[0x25])[OxOeee5[0x17]]=body[OxOeee5[0x24]] ;} ;if(body[OxOeee5[0x26]]){ document.getElementById(OxOeee5[0x27])[OxOeee5[0x17]]=body[OxOeee5[0x26]] ;} ;if(body[OxOeee5[0x28]]){ document.getElementById(OxOeee5[0x29])[OxOeee5[0x17]]=body[OxOeee5[0x28]] ;} ;if(body[OxOeee5[0x2a]]){ document.getElementById(OxOeee5[0x2b])[OxOeee5[0x17]]=body[OxOeee5[0x2a]] ;} ; document.getElementById(OxOeee5[0x2c])[OxOeee5[0x17]]=str_PageLanguage ; document.getElementById(OxOeee5[0x2d])[OxOeee5[0x17]]=str_HTMLEncoding ;if(htmlbase){ document.getElementById(OxOeee5[0x2f])[OxOeee5[0x17]]=htmlbase[OxOeee5[0x2e]] ;} ; function btnok_click(){try{ body[OxOeee5[0x20]]=document.getElementById(OxOeee5[0x21])[OxOeee5[0x17]] ; body[OxOeee5[0x22]]=document.getElementById(OxOeee5[0x23])[OxOeee5[0x17]] ; body[OxOeee5[0x24]]=document.getElementById(OxOeee5[0x25])[OxOeee5[0x17]] ; body[OxOeee5[0x26]]=document.getElementById(OxOeee5[0x27])[OxOeee5[0x17]] ;if(document.getElementById(OxOeee5[0x29])[OxOeee5[0x17]]){ body[OxOeee5[0x28]]=document.getElementById(OxOeee5[0x29])[OxOeee5[0x17]] ;} ;if(document.getElementById(OxOeee5[0x2b])[OxOeee5[0x17]]){ body[OxOeee5[0x2a]]=document.getElementById(OxOeee5[0x2b])[OxOeee5[0x17]] ;} ;} catch(er){ alert(OxOeee5[0x30]) ;return ;} ; str_DOCTYPE=document.getElementById(OxOeee5[0x18])[OxOeee5[0x17]] ; body_fontcolor=document.getElementById(OxOeee5[0x1c])[OxOeee5[0x17]] ; body_bgcolor=document.getElementById(OxOeee5[0x1e])[OxOeee5[0x17]] ; str_title=document.getElementById(OxOeee5[0x19])[OxOeee5[0x17]] ; str_description=document.getElementById(OxOeee5[0x1a])[OxOeee5[0x17]] ; str_keywords=document.getElementById(OxOeee5[0x1b])[OxOeee5[0x17]] ; str_PageLanguage=document.getElementById(OxOeee5[0x2c])[OxOeee5[0x17]] ; str_HTMLEncoding=document.getElementById(OxOeee5[0x2d])[OxOeee5[0x17]] ; str_BaseHref=document.getElementById(OxOeee5[0x2f])[OxOeee5[0x17]] ;try{ editdoc[OxOeee5[0x5]][OxOeee5[0x8]][OxOeee5[0x7]]=body_bgcolor ; editdoc[OxOeee5[0x5]][OxOeee5[0x8]][OxOeee5[0x9]]=body_fontcolor ;} catch(er){ alert(OxOeee5[0x31]) ;return ;} ;var metas=head.getElementsByTagName(OxOeee5[0xe]);var Ox529=null;var Ox52a=null;var Ox52b=null;var Ox52c=null;var Oxb2=head.getElementsByTagName(OxOeee5[0xb])[0x0];if(Oxb2){while(node=Oxb2[OxOeee5[0x32]]){ Oxb2.removeChild(node) ;} ;} else { Oxb2=editdoc.createElement(OxOeee5[0xb]) ; head.appendChild(Oxb2) ;} ; Oxb2.appendChild(editdoc.createTextNode(str_title)) ;if(str_title){ editdoc[OxOeee5[0xb]]=str_title ;} else { editdoc[OxOeee5[0xb]]=OxOeee5[0xd] ;} ;for(var m=0x0;m<metas[OxOeee5[0xf]];m++){if(metas[m][OxOeee5[0x10]].toLowerCase()==OxOeee5[0x11]){ Ox529=metas[m] ;} ;if(metas[m][OxOeee5[0x10]].toLowerCase()==OxOeee5[0x13]){ Ox52a=metas[m] ;} ;if(metas[m][OxOeee5[0x14]].toLowerCase()==OxOeee5[0x15]){ Ox52b=metas[m] ;} ;if(metas[m][OxOeee5[0x14]].toLowerCase()==OxOeee5[0x16]){ Ox52c=metas[m] ;} ;} ; function Ox52d(Oxb7,name,Ox45b){var Ox52e=editdoc.createElement(OxOeee5[0x33]+Oxb7+OxOeee5[0x34]+name+OxOeee5[0x35]+Ox45b+OxOeee5[0x36]); head.appendChild(Ox52e) ;}  ;if(htmlbase){try{ head.removeChild(htmlbase) ;} catch(er){ alert(htmlbase.href) ;} ; htmlbase=null ;} ;if(!htmlbase&&str_BaseHref){var Ox31c=editdoc.createElement(OxOeee5[0x37]+str_BaseHref+OxOeee5[0x38]); head.appendChild(Ox31c) ;} ;if(Ox529){ Ox529[OxOeee5[0x39]].removeChild(Ox529) ; Ox529=null ;} ;if(!Ox529&&str_keywords){ Ox52d(OxOeee5[0x10],OxOeee5[0x11],str_keywords) ;} ;if(Ox52a){ Ox52a[OxOeee5[0x39]].removeChild(Ox52a) ; Ox52a=null ;} ;if(!Ox52a&&str_description){ Ox52d(OxOeee5[0x10],OxOeee5[0x13],str_description) ;} ;if(Ox52b){ Ox52b[OxOeee5[0x39]].removeChild(Ox52b) ; Ox52b=null ;} ;if(!Ox52b&&str_HTMLEncoding){ Ox52d(OxOeee5[0x3a],OxOeee5[0x3b],str_HTMLEncoding) ;} ;if(Ox52c){ Ox52c[OxOeee5[0x39]].removeChild(Ox52c) ; Ox52c=null ;} ;if(!Ox52c&&str_PageLanguage){ Ox52d(OxOeee5[0x3a],OxOeee5[0x3c],str_PageLanguage) ;} ; top[OxOeee5[0x3d]]=str_DOCTYPE ; top.close() ;}  ; function btncc_click(){ top[OxOeee5[0x3d]]=false ; top.close() ;}  ; function SelectColor(n){var Ox4e0=OxOeee5[0x3e];if(n==0x1){ openModalWindow(Ox4e0,null,_colorpickerDialogFeature,function (Ox2d9,Ox18e){if(Ox18e[OxOeee5[0x3d]]){ document.getElementById(OxOeee5[0x1e])[OxOeee5[0x17]]=Ox18e[OxOeee5[0x3d]].toUpperCase() ; document.getElementById(OxOeee5[0x1f])[OxOeee5[0x8]][OxOeee5[0x7]]=Ox18e[OxOeee5[0x3d]] ;} ;} ) ;} else { openModalWindow(Ox4e0,null,_colorpickerDialogFeature,function (Ox2d9,Ox18e){if(Ox18e[OxOeee5[0x3d]]){ document.getElementById(OxOeee5[0x1c])[OxOeee5[0x17]]=Ox18e[OxOeee5[0x3d]].toUpperCase() ; document.getElementById(OxOeee5[0x1d])[OxOeee5[0x8]][OxOeee5[0x7]]=Ox18e[OxOeee5[0x3d]] ;} ;} ) ;} ;}  ;
	</script>
</html>
