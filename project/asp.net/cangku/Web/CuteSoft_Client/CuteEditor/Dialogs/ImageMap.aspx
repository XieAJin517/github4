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
		<link rel="stylesheet" href='style.css'>
		<script src=dialog.js></script><script src=../_shared.js></script>		
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
						onmouseover="CuteEditor_ColorPicker_ButtonOver(this);">
						<IMG src="../images/link.gif" onclick="Addlink(this);" Alt="[[insertlink]]" class="dialogButton"
						onmouseover="CuteEditor_ColorPicker_ButtonOver(this);">				
						&nbsp;&nbsp;&nbsp;
						<IMG src="../images/zoom_in.gif" onclick="Zoom_In();" Alt="[[ZoomIn]]" class="dialogButton"
						onmouseover="CuteEditor_ColorPicker_ButtonOver(this);"> <IMG src="../images/zoom_out.gif" onclick="Zoom_Out();" Alt="[[ZoomOut]]" class="dialogButton"
						onmouseover="CuteEditor_ColorPicker_ButtonOver(this);"> <IMG src="../images/bestfit.gif" onclick="BestFit();" Alt="[[BestFit]]" class="dialogButton"
						onmouseover="CuteEditor_ColorPicker_ButtonOver(this);"> <IMG src="../images/Actualsize.gif" onclick="Actualsize();" Alt="[[ActualSize]]" class="dialogButton"
						onmouseover="CuteEditor_ColorPicker_ButtonOver(this);">						
				</td>
			</tr>
			<tr>
				<td valign="top" height="280">
					<iframe ID="iframe" MARGINHEIGHT="1" MARGINWIDTH="1" src="../template.aspx" width="100%" scrolling="yes" height="100%"></iframe>
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

var OxO86dc=["dialogArguments","editor","window","document","img","contentWindow","iframe","onload","unselectable","on","contentEditable","body","clearAttributes","marginTop","style","4","marginLeft","10","color","black","background","white","2D-Position","LiveResize","outerHTML","innerHTML","useMap","","MAP","length","name","#","areas","href","target","alt","coords",",","\x3Cimg id=\x27myIMAGE","\x27 border=1 src=\x27../images/space.gif\x27 alt=\x27[[AddLinktoImageMap]]\x27 style=\x27position:absolute;left:","px;top:","px;width:","px;height:","px;zIndex:","\x27\x3E","type","selection","Control","parentNode","tagName","IMG","id","dialogWidth:350px;dialogHeight:212px;help:no;scroll:no;status:no;resizable:0;","frameloaded","returnValue","keyCode","zoom","height","width","\x27  border=1 src=\x27../images/space.gif\x27 alt=\x27[[AddLinktoImageMap]]\x27 style=\x27position:absolute;zIndex:",";width:20;height:20;left:0;top:0\x27\x3E","wheelDelta","0%","myIMAGE","\x3Carea shape=\x27rect\x27 coords=\x27","\x27","href=\x27","\x27 ","target=\x27","alt=\x27","\x3E","PasteHTML","\x3Cmap name=\x27","\x3C/map\x3E","off","AutoMap"];var obj=top[OxO86dc[0x0]];var editor=obj[OxO86dc[0x1]];var editwin=obj[OxO86dc[0x2]];var editdoc=obj[OxO86dc[0x3]];var oImg=obj[OxO86dc[0x4]];var iframe=document.getElementById(OxO86dc[0x6])[OxO86dc[0x5]];var iframe_doc=iframe[OxO86dc[0x3]];var oMap=null;var aMapName= new Array();var aLeft= new Array();var aTop= new Array();var aWidth= new Array();var aHeight= new Array();var aHref= new Array();var aTarget= new Array();var aTitle= new Array();var aCoords= new Array(); window[OxO86dc[0x7]]=function (){ oImg[OxO86dc[0x8]]=OxO86dc[0x9] ; iframe[OxO86dc[0x3]][OxO86dc[0xb]][OxO86dc[0xa]]=true ; iframe[OxO86dc[0x3]][OxO86dc[0xb]][OxO86dc[0xc]] ; iframe[OxO86dc[0x3]][OxO86dc[0xb]][OxO86dc[0xe]][OxO86dc[0xd]]=OxO86dc[0xf] ; iframe[OxO86dc[0x3]][OxO86dc[0xb]][OxO86dc[0xe]][OxO86dc[0x10]]=OxO86dc[0x11] ; iframe[OxO86dc[0x3]][OxO86dc[0xb]][OxO86dc[0xe]][OxO86dc[0x12]]=OxO86dc[0x13] ; iframe[OxO86dc[0x3]][OxO86dc[0xb]][OxO86dc[0xe]][OxO86dc[0x14]]=OxO86dc[0x15] ; iframe[OxO86dc[0x3]].execCommand(OxO86dc[0x16],true,true) ; iframe[OxO86dc[0x3]].execCommand(OxO86dc[0x17],true,true) ; iframe.focus() ; iframe[OxO86dc[0x3]][OxO86dc[0xb]][OxO86dc[0x19]]=oImg[OxO86dc[0x18]] ;var Ox4a3=oImg[OxO86dc[0x1a]];if(Ox4a3!=OxO86dc[0x1b]){ Ox4a3=Ox4a3.toUpperCase() ;var Ox4a4=editdoc[OxO86dc[0xb]].getElementsByTagName(OxO86dc[0x1c]);for(var i=0x0;i<Ox4a4[OxO86dc[0x1d]];i++){ aMapName[i]=Ox4a4[i][OxO86dc[0x1e]].toUpperCase() ;if((OxO86dc[0x1f]+aMapName[i])==Ox4a3){ oMap=Ox4a4[i] ;} ;} ;} ;if(oMap){for(var i=0x0;i<oMap[OxO86dc[0x20]][OxO86dc[0x1d]];i++){ aHref[i]=oMap.areas(i)[OxO86dc[0x21]] ; aTarget[i]=oMap.areas(i)[OxO86dc[0x22]] ; aTitle[i]=oMap.areas(i)[OxO86dc[0x23]] ; aCoords[i]=oMap.areas(i)[OxO86dc[0x24]] ;var Ox147=aCoords[i].split(OxO86dc[0x25]); aLeft[i]=parseInt(Ox147[0x0]) ; aTop[i]=parseInt(Ox147[0x1]) ; aWidth[i]=parseInt(Ox147[0x2])-aLeft[i] ; aHeight[i]=parseInt(Ox147[0x3])-aTop[i] ; iframe[OxO86dc[0x3]][OxO86dc[0xb]][OxO86dc[0x19]]+=OxO86dc[0x26]+i+OxO86dc[0x27]+aLeft[i]+OxO86dc[0x28]+aTop[i]+OxO86dc[0x29]+aWidth[i]+OxO86dc[0x2a]+aHeight[i]+OxO86dc[0x2b]+(i+0x1)+OxO86dc[0x2c] ;} ;} ;}  ; function SearchSelectionElement(Ox131){if(iframe_doc[OxO86dc[0x2e]][OxO86dc[0x2d]]==OxO86dc[0x2f]){var Ox2f=iframe_doc[OxO86dc[0x2e]].createRange().item(0x0);} else {var Ox2f=iframe_doc[OxO86dc[0x2e]].createRange().parentElement();} ;for(var e=Ox2f;iframe_doc[OxO86dc[0xb]].contains(e);e=e[OxO86dc[0x30]]){if(e[OxO86dc[0x31]]==Ox131){return e;} ;} ;return null;}  ; function Addlink(){var Oxba=SearchSelectionElement(OxO86dc[0x32]);if(Oxba){var Ox4a7=Oxba[OxO86dc[0x33]];var Ox4a8=parseInt(Ox4a7.substr(0x7));var obj={href:aHref[Ox4a8],target:aTarget[Ox4a8],title:aTitle[Ox4a8]};var arr=showModalDialog('mapLink.aspx?<%= QUERY_STRING %>',obj,OxO86dc[0x34]);if(arr){ aHref[Ox4a8]=arr[0x0] ; aTarget[Ox4a8]=arr[0x1] ; aTitle[Ox4a8]=arr[0x2] ;} ;} ;return false;}  ;if(!top[OxO86dc[0x35]]){ top[OxO86dc[0x35]]=true ;} ; function do_cancel(){ top[OxO86dc[0x36]]=null ; top.close() ;}  ; function IsDigit(){return ((event[OxO86dc[0x37]]>=0x30)&&(event[OxO86dc[0x37]]<=0x39));}  ; function Zoom_In(){if(iframe_doc[OxO86dc[0xb]][OxO86dc[0xe]][OxO86dc[0x38]]!=0x0){ iframe_doc[OxO86dc[0xb]][OxO86dc[0xe]][OxO86dc[0x38]]*=1.2 ;} else { iframe_doc[OxO86dc[0xb]][OxO86dc[0xe]][OxO86dc[0x38]]=1.2 ;} ;}  ; function Zoom_Out(){if(iframe_doc[OxO86dc[0xb]][OxO86dc[0xe]][OxO86dc[0x38]]!=0x0){ iframe_doc[OxO86dc[0xb]][OxO86dc[0xe]][OxO86dc[0x38]]*=0.8 ;} else { iframe_doc[OxO86dc[0xb]][OxO86dc[0xe]][OxO86dc[0x38]]=0.8 ;} ;}  ; function BestFit(){if(!oImg){return ;} ;var Ox2d8=0x118;var Ox82=0x122; iframe_doc[OxO86dc[0xb]][OxO86dc[0xe]][OxO86dc[0x38]]=0x1/Math.max(oImg[OxO86dc[0x3a]]/Ox82,oImg[OxO86dc[0x39]]/Ox2d8) ;}  ; function Actualsize(){ iframe_doc[OxO86dc[0xb]][OxO86dc[0xe]][OxO86dc[0x38]]=0x1 ;}  ; function newMap(){var n=aHref[OxO86dc[0x1d]]; aHref[n]=OxO86dc[0x1b] ; aTarget[n]=OxO86dc[0x1b] ; aTitle[n]=OxO86dc[0x1b] ; iframe[OxO86dc[0x3]][OxO86dc[0xb]][OxO86dc[0x19]]+=OxO86dc[0x26]+n+OxO86dc[0x3b]+(n+0x1)+OxO86dc[0x3c] ; iframe.scrollBy(0x0,0x0) ; iframe.focus() ;}  ;var count=0xa; function Picture(Ox55c){if(event[OxO86dc[0x3d]]>=0x78){ count++ ;} else {if(event[OxO86dc[0x3d]]<=-0x78){ count-- ;} ;} ; Ox55c[OxO86dc[0xe]][OxO86dc[0x38]]=count+OxO86dc[0x3e] ;return false;}  ; function do_update(){var Ox12=false;for(var i=0x0;i<aHref[OxO86dc[0x1d]];i++){var obj=iframe[OxO86dc[0x3]].getElementById(OxO86dc[0x3f]+i);if(obj){ Ox12=true ;} ;} ;if(Ox12){var Oxb0=OxO86dc[0x1b];for(var i=0x0;i<aHref[OxO86dc[0x1d]];i++){var obj=iframe[OxO86dc[0x3]].getElementById(OxO86dc[0x3f]+i);if(obj){var Ox4ab=parseInt(obj[OxO86dc[0xe]].left);var Ox4ac=parseInt(obj[OxO86dc[0xe]].top);var Ox4ad=parseInt(obj[OxO86dc[0xe]].width);var Ox4ae=parseInt(obj[OxO86dc[0xe]].height);var Ox4af=Ox4ab+Ox4ad;var Ox4b0=Ox4ac+Ox4ae; Oxb0+=OxO86dc[0x40]+Ox4ab+OxO86dc[0x25]+Ox4ac+OxO86dc[0x25]+Ox4af+OxO86dc[0x25]+Ox4b0+OxO86dc[0x41] ;if(aHref[i]!=OxO86dc[0x1b]){ Oxb0+=OxO86dc[0x42]+aHref[i]+OxO86dc[0x43] ;} ;if((aTarget[i]!=OxO86dc[0x1b])&&aTarget[i]){ Oxb0+=OxO86dc[0x44]+aTarget[i]+OxO86dc[0x43] ;} ;if(aTitle[i]!=OxO86dc[0x1b]){ Oxb0+=OxO86dc[0x45]+aTitle[i]+OxO86dc[0x43] ;} ; Oxb0+=OxO86dc[0x46] ;} ;} ;if(oMap){ oMap[OxO86dc[0x19]]=Oxb0 ;} else { sUseMap=getAutoMapName() ; oImg[OxO86dc[0x1a]]=OxO86dc[0x1f]+sUseMap ; editor.ExecCommand(OxO86dc[0x47],false,OxO86dc[0x48]+sUseMap+OxO86dc[0x2c]+Oxb0+OxO86dc[0x49]) ;} ;} else {if(oMap){ oMap[OxO86dc[0x18]]=OxO86dc[0x1b] ;} ; oImg[OxO86dc[0x1a]]=OxO86dc[0x1b] ;} ; oImg[OxO86dc[0x8]]=OxO86dc[0x4a] ; oImg.removeAttribute(OxO86dc[0x8]) ; editor.InsertElement(oImg) ; window.close() ; top.close() ;}  ; function getAutoMapName(){var Ox12=true;var n=0x0;var Ox25=OxO86dc[0x1b];while(Ox12){ n++ ; Ox25=OxO86dc[0x4b]+n ;if(isValidMapName(Ox25)){ Ox12=false ;} ;} ;return Ox25;}  ; function isValidMapName(Ox1f){ Ox1f=Ox1f.toUpperCase() ;for(var i=0x0;i<aMapName[OxO86dc[0x1d]];i++){if(aMapName[i]==Ox1f){return false;} ;} ;return true;}  ; function do_cancel(){ oImg.removeAttribute(OxO86dc[0x8]) ; top.close() ;}  ;	


</script>
	</body>
</HTML>
