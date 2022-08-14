<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<%
	string QUERY_STRING=Request.ServerVariables["QUERY_STRING"];
%>
<HTML>
	<HEAD>
		<title>[[ImageMap]] 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</title>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)">
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)">
		<link rel="stylesheet" href='Safari_style.css'>
		<script src=gecko_dialog.js></script><script src=../_shared.js></script>		
		<style>
		.row { HEIGHT: 22px }
		.cb { VERTICAL-ALIGN: middle }
		.itemimg { VERTICAL-ALIGN: middle }
		.editimg { VERTICAL-ALIGN: middle }
		.cell1 { VERTICAL-ALIGN: middle }
		.cell2 { VERTICAL-ALIGN: middle }
		.cell3 { PADDING-RIGHT: 4px; VERTICAL-ALIGN: middle; TEXT-ALIGN: right }
		.cb { }
		</style>
	</HEAD>
	<body unselectable="on">
		<table border="0" cellspacing="0" cellpadding="5" width="100%" align="center"  unselectable="on">
			<tr>
				<td style="padding:4px 0 1px 4px">						
						&nbsp;&nbsp;&nbsp;
						<IMG src="../images/ImageMap.gif" onclick="newMap();" Alt="[[AddHotSpot]]" class="dialogButton"
						onMouseOver="Check(this,1)" onMouseOut="Check(this,0)">
						<IMG src="../images/link.gif" onclick="Addlink(this);" Alt="[[insertlink]]" class="dialogButton"
						onMouseOver="Check(this,1)" onMouseOut="Check(this,0)">								
				</td>
			</tr>
			<tr>
				<td valign="top" height="280">
					<iframe id="iframe" MARGINHEIGHT="1" MARGINWIDTH="1" width="100%" src="../template.aspx"  scrolling="yes" height="100%"></iframe>
				</td>
			</tr>
			<tr>
				<td class="dialogFooter" vAlign="top" align="right" style="PADDING-RIGHT: 13px; PADDING-LEFT: 13px; PADDING-BOTTOM: 7px; PADDING-TOP: 7px">
					<table cellSpacing="0" cellPadding="1">
						<tbody>
							<tr>
								<td>
									<input type="button" value="[[Update]]" onclick="do_update()">&nbsp;&nbsp;
									<input type="button" value="[[Cancel]]" onclick="do_cancel()">&nbsp;
								</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</table>			
		

<script src="addvars.js"></script>
<script>

var OxO77dd=["dialogArguments","editor","window","document","img","contentWindow","iframe","onload","designMode","on","contentEditable","body","fontFamily","style","Tahoma","fontSize","11px","color","black","background","white","padding","10px","unselectable","innerHTML","useMap","","MAP","length","name","#","areas","href","target","alt","coords",",","\x3Cimg id=\x27myIMAGE","\x27 border=1 src=\x27../images/space.gif\x27 alt=\x27[[AddLinktoImageMap]]\x27 style=\x27position:absolute;left:","px;top:","px;width:","px;height:","px;zIndex:","\x27\x3E","parentNode","tagName","startOffset","endOffset","startContainer","endContainer","nodeType","childNodes","IMG","myIMAGE","id","width=350,height=212,resizable=0,toolbars=0,menubar=0,status=0","returnValue","frameloaded","keyCode","\x27  border=1 src=\x27../images/space.gif\x27 alt=\x27[[AddLinktoImageMap]]\x27 style=\x27position:absolute;zIndex:",";width:40;height:40;left:10;top:10\x27\x3E","\x3Carea shape=\x27rect\x27 coords=\x27","\x27","href=\x27","\x27 ","target=\x27","alt=\x27","\x3E","\x3Cmap name=\x27","\x3C/map\x3E","off","AutoMap","nodeName","\x3C","attributes","nodeValue"," ","=\x22","\x22","\x3C![CDATA[","]]\x3E","\x26",";","\x3C!--","--\x3E","HR","BR","INPUT"];var obj=top[OxO77dd[0x0]];var editor=obj[OxO77dd[0x1]];var editwin=obj[OxO77dd[0x2]];var editdoc=obj[OxO77dd[0x3]];var oImg=obj[OxO77dd[0x4]];var oMap=null;var aMapName= new Array();var aLeft= new Array();var aTop= new Array();var aWidth= new Array();var aHeight= new Array();var aHref= new Array();var aTarget= new Array();var aTitle= new Array();var aCoords= new Array();var iframe=document.getElementById(OxO77dd[0x6])[OxO77dd[0x5]]; window[OxO77dd[0x7]]=function (){ iframe[OxO77dd[0x3]][OxO77dd[0x8]]=OxO77dd[0x9] ; iframe[OxO77dd[0x3]][OxO77dd[0xb]][OxO77dd[0xa]]=true ; iframe[OxO77dd[0x3]][OxO77dd[0xb]][OxO77dd[0xd]][OxO77dd[0xc]]=OxO77dd[0xe] ; iframe[OxO77dd[0x3]][OxO77dd[0xb]][OxO77dd[0xd]][OxO77dd[0xf]]=OxO77dd[0x10] ; iframe[OxO77dd[0x3]][OxO77dd[0xb]][OxO77dd[0xd]][OxO77dd[0x11]]=OxO77dd[0x12] ; iframe[OxO77dd[0x3]][OxO77dd[0xb]][OxO77dd[0xd]][OxO77dd[0x13]]=OxO77dd[0x14] ; iframe[OxO77dd[0x3]][OxO77dd[0xb]][OxO77dd[0xd]][OxO77dd[0x15]]=OxO77dd[0x16] ; oImg[OxO77dd[0x17]]=OxO77dd[0x9] ; iframe.focus() ; iframe[OxO77dd[0x3]][OxO77dd[0xb]][OxO77dd[0x18]]=getOuterHTML(oImg) ;var Ox4a3=oImg[OxO77dd[0x19]];if(Ox4a3!=OxO77dd[0x1a]){ Ox4a3=Ox4a3.toUpperCase() ;var Ox4a4=editdoc[OxO77dd[0xb]].getElementsByTagName(OxO77dd[0x1b]);for(var i=0x0;i<Ox4a4[OxO77dd[0x1c]];i++){ aMapName[i]=Ox4a4[i][OxO77dd[0x1d]].toUpperCase() ;if((OxO77dd[0x1e]+aMapName[i])==Ox4a3){ oMap=Ox4a4[i] ;} ;} ;} ;if(oMap){for(var i=0x0;i<oMap[OxO77dd[0x1f]][OxO77dd[0x1c]];i++){ aHref[i]=oMap[OxO77dd[0x1f]][i][OxO77dd[0x20]] ; aTarget[i]=oMap[OxO77dd[0x1f]][i][OxO77dd[0x21]] ; aTitle[i]=oMap[OxO77dd[0x1f]][i][OxO77dd[0x22]] ; aCoords[i]=oMap[OxO77dd[0x1f]][i][OxO77dd[0x23]] ;var Ox147=aCoords[i].split(OxO77dd[0x24]); aLeft[i]=parseInt(Ox147[0x0]) ; aTop[i]=parseInt(Ox147[0x1]) ; aWidth[i]=parseInt(Ox147[0x2])-aLeft[i] ; aHeight[i]=parseInt(Ox147[0x3])-aTop[i] ; iframe[OxO77dd[0x3]][OxO77dd[0xb]][OxO77dd[0x18]]+=OxO77dd[0x25]+i+OxO77dd[0x26]+aLeft[i]+OxO77dd[0x27]+aTop[i]+OxO77dd[0x28]+aWidth[i]+OxO77dd[0x29]+aHeight[i]+OxO77dd[0x2a]+(i+0x1)+OxO77dd[0x2b] ;} ;} ;}  ; function SearchSelectionElement(Ox131){var sel=iframe.getSelection();var r=sel.getRangeAt(0x0);var Ox2f=Range_GetParentElement(r);for(var e=Ox2f;e!=null&&e!=iframe[OxO77dd[0x3]][OxO77dd[0xb]];e=e[OxO77dd[0x2c]]){if(e[OxO77dd[0x2d]]==Ox131){return e;} ;} ;return null;}  ; function Range_GetParentElement(Ox176){var Ox32a=Ox176[OxO77dd[0x2e]];var Ox32b=Ox176[OxO77dd[0x2f]];var Ox32c=Ox176[OxO77dd[0x30]];var Ox32d=Ox176[OxO77dd[0x31]];if(Ox32a==Ox32b&&Ox32c==Ox32d){if(Ox32c[OxO77dd[0x32]]==0x3){return Ox32c[OxO77dd[0x2c]];} ;return Ox32c;} ;if(Ox32b-Ox32a==0x1&&Ox32c==Ox32d){return Ox32c[OxO77dd[0x33]][Ox32a];} ;var Ox330=[];for(var Ox331=Ox32c;Ox331!=null;Ox331=Ox331[OxO77dd[0x2c]]){ Ox330[Ox330[OxO77dd[0x1c]]]=Ox331 ;} ; Ox330.reverse() ;var Ox332=[];for(var Ox331=Ox32c;Ox331!=null;Ox331=Ox331[OxO77dd[0x2c]]){ Ox332[Ox332[OxO77dd[0x1c]]]=Ox331 ;} ; Ox332.reverse() ;var Ox333=null;var Ox195=Math.min(Ox330[OxO77dd[0x1c]],Ox332.length);for(var i=0x0;i<Ox195;i++){if(Ox330[i]==Ox332[i]){ Ox333=Ox330[i] ;} else {break ;} ;} ;if(Ox333[OxO77dd[0x32]]==0x3){ Ox333=Ox333[OxO77dd[0x2c]] ;} ;return Ox333;}  ; function Addlink(){var Oxba=SearchSelectionElement(OxO77dd[0x34]);if(Oxba){if((Oxba[OxO77dd[0x36]]).indexOf(OxO77dd[0x35])==-0x1){return ;} ;var Ox4a7=Oxba[OxO77dd[0x36]];var Ox4a8=parseInt(Ox4a7.substr(0x7));var obj={href:aHref[Ox4a8],target:aTarget[Ox4a8],title:aTitle[Ox4a8]}; openModalWindow('Gecko_ mapLink.aspx?<%= QUERY_STRING %>',obj,OxO77dd[0x37],function (Ox2d9,Ox18e){if(Ox18e[OxO77dd[0x38]]){var arr=Ox18e[OxO77dd[0x38]];if(arr){ aHref[Ox4a8]=arr[0x0] ; aTarget[Ox4a8]=arr[0x1] ; aTitle[Ox4a8]=arr[0x2] ;} ;} ;} ) ;} ;return false;}  ;if(!top[OxO77dd[0x39]]){ top[OxO77dd[0x39]]=true ;} ; function do_cancel(){ top[OxO77dd[0x38]]=null ; top.close() ;}  ; function IsDigit(){return ((event[OxO77dd[0x3a]]>=0x30)&&(event[OxO77dd[0x3a]]<=0x39));}  ; function newMap(){var n=aHref[OxO77dd[0x1c]]; aHref[n]=OxO77dd[0x1a] ; aTarget[n]=OxO77dd[0x1a] ; aTitle[n]=OxO77dd[0x1a] ; iframe[OxO77dd[0x3]][OxO77dd[0xb]][OxO77dd[0x18]]+=OxO77dd[0x25]+n+OxO77dd[0x3b]+(n+0x1)+OxO77dd[0x3c] ; iframe.scrollBy(0x0,0x0) ; iframe.focus() ;}  ; function do_update(){var Ox12=false;for(var i=0x0;i<aHref[OxO77dd[0x1c]];i++){var obj=iframe[OxO77dd[0x3]].getElementById(OxO77dd[0x35]+i);if(obj){ Ox12=true ;} ;} ;if(Ox12){var Oxb0=OxO77dd[0x1a];for(var i=0x0;i<aHref[OxO77dd[0x1c]];i++){var obj=iframe[OxO77dd[0x3]].getElementById(OxO77dd[0x35]+i);if(obj){var Ox4ab=parseInt(obj[OxO77dd[0xd]].left);var Ox4ac=parseInt(obj[OxO77dd[0xd]].top);var Ox4ad=parseInt(obj[OxO77dd[0xd]].width);var Ox4ae=parseInt(obj[OxO77dd[0xd]].height);var Ox4af=Ox4ab+Ox4ad;var Ox4b0=Ox4ac+Ox4ae; Oxb0+=OxO77dd[0x3d]+Ox4ab+OxO77dd[0x24]+Ox4ac+OxO77dd[0x24]+Ox4af+OxO77dd[0x24]+Ox4b0+OxO77dd[0x3e] ;if(aHref[i]!=OxO77dd[0x1a]){ Oxb0+=OxO77dd[0x3f]+aHref[i]+OxO77dd[0x40] ;} ;if(aTarget[i]!=OxO77dd[0x1a]&&aTarget[i]){ Oxb0+=OxO77dd[0x41]+aTarget[i]+OxO77dd[0x40] ;} ;if(aTitle[i]!=OxO77dd[0x1a]){ Oxb0+=OxO77dd[0x42]+aTitle[i]+OxO77dd[0x40] ;} ; Oxb0+=OxO77dd[0x43] ;} ;} ;if(oMap){ oMap[OxO77dd[0x18]]=Oxb0 ;} else { sUseMap=getAutoMapName() ; oImg[OxO77dd[0x19]]=OxO77dd[0x1e]+sUseMap ; editor.PasteHTML(OxO77dd[0x44]+sUseMap+OxO77dd[0x2b]+Oxb0+OxO77dd[0x45]) ;} ;} else {if(oMap){} ; oImg[OxO77dd[0x19]]=OxO77dd[0x1a] ;} ; oImg[OxO77dd[0x17]]=OxO77dd[0x46] ; oImg.removeAttribute(OxO77dd[0x17]) ; window[OxO77dd[0x38]]=oImg ; window.close() ; top.close() ;}  ; function getAutoMapName(){var Ox12=true;var n=0x0;var Ox25=OxO77dd[0x1a];while(Ox12){ n++ ; Ox25=OxO77dd[0x47]+n ;if(isValidMapName(Ox25)){ Ox12=false ;} ;} ;return Ox25;}  ; function isValidMapName(Ox1f){ Ox1f=Ox1f.toUpperCase() ;for(var i=0x0;i<aMapName[OxO77dd[0x1c]];i++){if(aMapName[i]==Ox1f){return false;} ;} ;return true;}  ; function do_cancel(){ oImg.removeAttribute(OxO77dd[0x17]) ; top[OxO77dd[0x38]]=null ; top.close() ;}  ; function getOuterHTML(Ox27f){var Ox1f=OxO77dd[0x1a];switch(Ox27f[OxO77dd[0x32]]){case 0x1: Ox1f+=OxO77dd[0x49]+Ox27f[OxO77dd[0x48]] ;for(var i=0x0;i<Ox27f[OxO77dd[0x4a]][OxO77dd[0x1c]];i++){if(Ox27f[OxO77dd[0x4a]].item(i)[OxO77dd[0x4b]]!=null){ Ox1f+=OxO77dd[0x4c] ; Ox1f+=Ox27f[OxO77dd[0x4a]].item(i)[OxO77dd[0x48]] ; Ox1f+=OxO77dd[0x4d] ; Ox1f+=Ox27f[OxO77dd[0x4a]].item(i)[OxO77dd[0x4b]] ; Ox1f+=OxO77dd[0x4e] ;} ;} ;if(Ox27f[OxO77dd[0x33]][OxO77dd[0x1c]]==0x0&&leafElems[Ox27f[OxO77dd[0x48]]]){ Ox1f+=OxO77dd[0x43] ;} else { Ox1f+=OxO77dd[0x43] ; Ox1f+=getInnerHTML(Ox27f) ; Ox1f+=OxO77dd[0x49]+Ox27f[OxO77dd[0x48]]+OxO77dd[0x43] ;} ;break ;case 0x3: Ox1f+=Ox27f[OxO77dd[0x4b]] ;break ;case 0x4: Ox1f+=OxO77dd[0x4f]+Ox27f[OxO77dd[0x4b]]+OxO77dd[0x50] ;break ;case 0x5: Ox1f+=OxO77dd[0x51]+Ox27f[OxO77dd[0x48]]+OxO77dd[0x52] ;break ;case 0x8: Ox1f+=OxO77dd[0x53]+Ox27f[OxO77dd[0x4b]]+OxO77dd[0x54] ;break ;;;;;;} ;return Ox1f;}  ;var _leafElems=[OxO77dd[0x34],OxO77dd[0x55],OxO77dd[0x56],OxO77dd[0x57]];var leafElems={};for(var i=0x0;i<_leafElems[OxO77dd[0x1c]];i++){ leafElems[_leafElems[i]]=true ;} ;
</script>
	</body>
</HTML>
