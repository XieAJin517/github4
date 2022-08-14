<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<html>
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)">
	<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)">
	<link rel=stylesheet href='Safari_style.css' >
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
	
	var OxO5eb8=["dialogArguments","editor","window","document","DOCTYPE","body","head","backgroundColor","style","color","base","title","innerHTML","","meta","length","name","keywords","content","description","httpEquiv","content-type","content-language","value","inp_doctype","inp_title","inp_description","inp_keywords","fontcolor","fontcolor_Preview","bgcolor","bgcolor_Preview","topMargin","TopMargin","bottomMargin","BottomMargin","leftMargin","LeftMargin","rightMargin","RightMargin","marginWidth","MarginWidth","marginHeight","MarginHeight","PageLanguage","HTMLEncoding","href","inp_htmlbase","Please enter a valid number.","Please enter a valid color number.","lastChild","META ","=\x22","\x22 CONTENT=\x22","\x22","\x3CBASE href=\x22","\x22 target=_blank\x3E","parentNode","http-equiv","Content-Type","Content-Language","returnValue","../colorpicker.aspx","width=600,height=400,resizable=1,toolbars=0,menubar=0,status=0"]; window.resizeTo(0x1ea,0x203) ;var obj=top[OxO5eb8[0x0]];var editor=obj[OxO5eb8[0x1]];var editwin=obj[OxO5eb8[0x2]];var editdoc=obj[OxO5eb8[0x3]];var DOCTYPE=obj[OxO5eb8[0x4]];var body=editdoc.getElementsByTagName(OxO5eb8[0x5]).item(0x0);var head=obj[OxO5eb8[0x6]];var body_bgcolor=editdoc[OxO5eb8[0x5]][OxO5eb8[0x8]][OxO5eb8[0x7]];var body_fontcolor=editdoc[OxO5eb8[0x5]][OxO5eb8[0x8]][OxO5eb8[0x9]];var htmlbase=editdoc.getElementsByTagName(OxO5eb8[0xa]).item(0x0);var str_title=editdoc.getElementsByTagName(OxO5eb8[0xb])[0x0]; str_title=str_title?str_title[OxO5eb8[0xc]]:OxO5eb8[0xd] ;var str_keywords=OxO5eb8[0xd];var str_description=OxO5eb8[0xd];var str_HTMLEncoding=OxO5eb8[0xd];var str_PageLanguage=OxO5eb8[0xd];var str_BaseHref=OxO5eb8[0xd];var str_DOCTYPE=OxO5eb8[0xd];var metas=editdoc.getElementsByTagName(OxO5eb8[0xe]);for(var m=0x0;m<metas[OxO5eb8[0xf]];m++){if(metas[m][OxO5eb8[0x10]].toLowerCase()==OxO5eb8[0x11]){ str_keywords=metas[m][OxO5eb8[0x12]] ;} ;if(metas[m][OxO5eb8[0x10]].toLowerCase()==OxO5eb8[0x13]){ str_description=metas[m][OxO5eb8[0x12]] ;} ;if(metas[m][OxO5eb8[0x14]].toLowerCase()==OxO5eb8[0x15]){ str_HTMLEncoding=metas[m][OxO5eb8[0x12]] ;} ;if(metas[m][OxO5eb8[0x14]].toLowerCase()==OxO5eb8[0x16]){ str_PageLanguage=metas[m][OxO5eb8[0x12]] ;} ;} ; document.getElementById(OxO5eb8[0x18])[OxO5eb8[0x17]]=obj[OxO5eb8[0x4]] ; document.getElementById(OxO5eb8[0x19])[OxO5eb8[0x17]]=str_title ; document.getElementById(OxO5eb8[0x1a])[OxO5eb8[0x17]]=str_description ; document.getElementById(OxO5eb8[0x1b])[OxO5eb8[0x17]]=str_keywords ; document.getElementById(OxO5eb8[0x1c])[OxO5eb8[0x17]]=body_fontcolor ; document.getElementById(OxO5eb8[0x1d])[OxO5eb8[0x8]][OxO5eb8[0x7]]=body_fontcolor ; document.getElementById(OxO5eb8[0x1e])[OxO5eb8[0x17]]=body_bgcolor ; document.getElementById(OxO5eb8[0x1f])[OxO5eb8[0x8]][OxO5eb8[0x7]]=body_bgcolor ;if(body[OxO5eb8[0x20]]){ document.getElementById(OxO5eb8[0x21])[OxO5eb8[0x17]]=body[OxO5eb8[0x20]] ;} ;if(body[OxO5eb8[0x22]]){ document.getElementById(OxO5eb8[0x23])[OxO5eb8[0x17]]=body[OxO5eb8[0x22]] ;} ;if(body[OxO5eb8[0x24]]){ document.getElementById(OxO5eb8[0x25])[OxO5eb8[0x17]]=body[OxO5eb8[0x24]] ;} ;if(body[OxO5eb8[0x26]]){ document.getElementById(OxO5eb8[0x27])[OxO5eb8[0x17]]=body[OxO5eb8[0x26]] ;} ;if(body[OxO5eb8[0x28]]){ document.getElementById(OxO5eb8[0x29])[OxO5eb8[0x17]]=body[OxO5eb8[0x28]] ;} ;if(body[OxO5eb8[0x2a]]){ document.getElementById(OxO5eb8[0x2b])[OxO5eb8[0x17]]=body[OxO5eb8[0x2a]] ;} ; document.getElementById(OxO5eb8[0x2c])[OxO5eb8[0x17]]=str_PageLanguage ; document.getElementById(OxO5eb8[0x2d])[OxO5eb8[0x17]]=str_HTMLEncoding ;if(htmlbase){ document.getElementById(OxO5eb8[0x2f])[OxO5eb8[0x17]]=htmlbase[OxO5eb8[0x2e]] ;} ; function btnok_click(){try{ body[OxO5eb8[0x20]]=document.getElementById(OxO5eb8[0x21])[OxO5eb8[0x17]] ; body[OxO5eb8[0x22]]=document.getElementById(OxO5eb8[0x23])[OxO5eb8[0x17]] ; body[OxO5eb8[0x24]]=document.getElementById(OxO5eb8[0x25])[OxO5eb8[0x17]] ; body[OxO5eb8[0x26]]=document.getElementById(OxO5eb8[0x27])[OxO5eb8[0x17]] ;if(document.getElementById(OxO5eb8[0x29])[OxO5eb8[0x17]]){ body[OxO5eb8[0x28]]=document.getElementById(OxO5eb8[0x29])[OxO5eb8[0x17]] ;} ;if(document.getElementById(OxO5eb8[0x2b])[OxO5eb8[0x17]]){ body[OxO5eb8[0x2a]]=document.getElementById(OxO5eb8[0x2b])[OxO5eb8[0x17]] ;} ;} catch(er){ alert(OxO5eb8[0x30]) ;return ;} ; str_DOCTYPE=document.getElementById(OxO5eb8[0x18])[OxO5eb8[0x17]] ; body_fontcolor=document.getElementById(OxO5eb8[0x1c])[OxO5eb8[0x17]] ; body_bgcolor=document.getElementById(OxO5eb8[0x1e])[OxO5eb8[0x17]] ; str_title=document.getElementById(OxO5eb8[0x19])[OxO5eb8[0x17]] ; str_description=document.getElementById(OxO5eb8[0x1a])[OxO5eb8[0x17]] ; str_keywords=document.getElementById(OxO5eb8[0x1b])[OxO5eb8[0x17]] ; str_PageLanguage=document.getElementById(OxO5eb8[0x2c])[OxO5eb8[0x17]] ; str_HTMLEncoding=document.getElementById(OxO5eb8[0x2d])[OxO5eb8[0x17]] ; str_BaseHref=document.getElementById(OxO5eb8[0x2f])[OxO5eb8[0x17]] ;try{ editdoc[OxO5eb8[0x5]][OxO5eb8[0x8]][OxO5eb8[0x7]]=body_bgcolor ; editdoc[OxO5eb8[0x5]][OxO5eb8[0x8]][OxO5eb8[0x9]]=body_fontcolor ;} catch(er){ alert(OxO5eb8[0x31]) ;return ;} ;var metas=head.getElementsByTagName(OxO5eb8[0xe]);var Ox529=null;var Ox52a=null;var Ox52b=null;var Ox52c=null;var Oxb2=head.getElementsByTagName(OxO5eb8[0xb])[0x0];if(Oxb2){while(node=Oxb2[OxO5eb8[0x32]]){ Oxb2.removeChild(node) ;} ;} else { Oxb2=editdoc.createElement(OxO5eb8[0xb]) ; head.appendChild(Oxb2) ;} ; Oxb2.appendChild(editdoc.createTextNode(str_title)) ;if(str_title){ editdoc[OxO5eb8[0xb]]=str_title ;} else { editdoc[OxO5eb8[0xb]]=OxO5eb8[0xd] ;} ;for(var m=0x0;m<metas[OxO5eb8[0xf]];m++){if(metas[m][OxO5eb8[0x10]].toLowerCase()==OxO5eb8[0x11]){ Ox529=metas[m] ;} ;if(metas[m][OxO5eb8[0x10]].toLowerCase()==OxO5eb8[0x13]){ Ox52a=metas[m] ;} ;if(metas[m][OxO5eb8[0x14]].toLowerCase()==OxO5eb8[0x15]){ Ox52b=metas[m] ;} ;if(metas[m][OxO5eb8[0x14]].toLowerCase()==OxO5eb8[0x16]){ Ox52c=metas[m] ;} ;} ; function Ox52d(Oxb7,name,Ox45b){var Ox52e=editdoc.createElement(OxO5eb8[0x33]+Oxb7+OxO5eb8[0x34]+name+OxO5eb8[0x35]+Ox45b+OxO5eb8[0x36]); head.appendChild(Ox52e) ;}  ;if(htmlbase){try{ head.removeChild(htmlbase) ;} catch(er){ alert(htmlbase.href) ;} ; htmlbase=null ;} ;if(!htmlbase&&str_BaseHref){var Ox31c=editdoc.createElement(OxO5eb8[0x37]+str_BaseHref+OxO5eb8[0x38]); head.appendChild(Ox31c) ;} ;if(Ox529){ Ox529[OxO5eb8[0x39]].removeChild(Ox529) ; Ox529=null ;} ;if(!Ox529&&str_keywords){ Ox52d(OxO5eb8[0x10],OxO5eb8[0x11],str_keywords) ;} ;if(Ox52a){ Ox52a[OxO5eb8[0x39]].removeChild(Ox52a) ; Ox52a=null ;} ;if(!Ox52a&&str_description){ Ox52d(OxO5eb8[0x10],OxO5eb8[0x13],str_description) ;} ;if(Ox52b){ Ox52b[OxO5eb8[0x39]].removeChild(Ox52b) ; Ox52b=null ;} ;if(!Ox52b&&str_HTMLEncoding){ Ox52d(OxO5eb8[0x3a],OxO5eb8[0x3b],str_HTMLEncoding) ;} ;if(Ox52c){ Ox52c[OxO5eb8[0x39]].removeChild(Ox52c) ; Ox52c=null ;} ;if(!Ox52c&&str_PageLanguage){ Ox52d(OxO5eb8[0x3a],OxO5eb8[0x3c],str_PageLanguage) ;} ; top[OxO5eb8[0x3d]]=str_DOCTYPE ; top.close() ;}  ; function btncc_click(){ top[OxO5eb8[0x3d]]=false ; top.close() ;}  ; function SelectColor(n){var Ox4e0=OxO5eb8[0x3e];if(n==0x1){ openModalWindow(Ox4e0,null,OxO5eb8[0x3f],function (Ox2d9,Ox18e){if(Ox18e[OxO5eb8[0x3d]]){ document.getElementById(OxO5eb8[0x1e])[OxO5eb8[0x17]]=Ox18e[OxO5eb8[0x3d]].toUpperCase() ; document.getElementById(OxO5eb8[0x1f])[OxO5eb8[0x8]][OxO5eb8[0x7]]=Ox18e[OxO5eb8[0x3d]] ;} ;} ) ;} else { openModalWindow(Ox4e0,null,OxO5eb8[0x3f],function (Ox2d9,Ox18e){if(Ox18e[OxO5eb8[0x3d]]){ document.getElementById(OxO5eb8[0x1c])[OxO5eb8[0x17]]=Ox18e[OxO5eb8[0x3d]].toUpperCase() ; document.getElementById(OxO5eb8[0x1d])[OxO5eb8[0x8]][OxO5eb8[0x7]]=Ox18e[OxO5eb8[0x3d]] ;} ;} ) ;} ;}  ;
	</script>
</html>
