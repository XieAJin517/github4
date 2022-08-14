<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<%@ Import Namespace="System.Xml"%>
<script runat="server">
public bool IsTagPattern(string tagname,string pattern)
{
	if(pattern=="*")return true;
	tagname=tagname.ToLower();
	pattern=pattern.ToLower();
	if(tagname==pattern)return true;
	foreach(string str in pattern.Split(",;|/".ToCharArray()))
	{
		if(str=="*")return true;
		if(str==tagname)return true;
		if(str=="-"+tagname)return false;
	}
	return false;
}
public string GetTagDisplayName(string tagname)
{
	switch(tagname.ToLower())
	{
		case "img":
			return "[[Image]]";
		case "object":
			return "[[ActiveXObject]]";
		case "table":
		case "inserttable":
			return "[["+tagname+"]]";
		default:
			return tagname;
	}
}
bool nocancel=false;
</script>
<%
	if(Context.Request.QueryString["NoCancel"]=="True")
		nocancel=true;
		
	string tagName=Context.Request.QueryString["Tag"];
	string tabName=Context.Request.QueryString["Tab"];
	XmlDocument doc=new XmlDocument();
	doc.Load(Server.MapPath("Gecko_tag.config"));
	string tabcontrol=null;
	string tabtext="";
%>
<html>
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)">
	<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)">
	<link rel="stylesheet" href='style.css'>
	<script src=Gecko_dialog.js></script>
	<%if(nocancel){%>
	<script>
	var OxOc1c7=[];var nocancel=true;
	</script>
	<%}else{%>
	<script>
	var OxOcda9=[];var nocancel=false;
	</script>
	<%}%>
	<script>
	var OxO49e6=["dialogArguments","element","editor","window","document","nocancel","changed",""];var arg=top[OxO49e6[0x0]];var element=arg[OxO49e6[0x1]];var editor=arg[OxO49e6[0x2]];var editwin=arg[OxO49e6[0x3]];var editdoc=arg[OxO49e6[0x4]]; top[OxO49e6[0x5]]=nocancel ; top[OxO49e6[0x6]]=top[OxO49e6[0x6]]||arg[OxO49e6[0x6]] ; function ParseToString(Ox1f){var Ox9=parseFloat(Ox1f);if(isNaN(Ox9)){return OxO49e6[0x7];} ;return Ox9+OxO49e6[0x7];}  ; function UpdateState(){}  ; function SyncTo(){}  ; function SyncToView(){}  ;
	</script>
	<body style="border-width:0px;padding-top:4px;padding-left:4px;padding-right:4px;;margin:0px;">
		<span style='font-size:12pt;font-weight:bold;TEXT-TRANSFORM: capitalize;'>
			<%=GetTagDisplayName(tagName)%>
		</span>
			<div id="controlparent" style="padding:10px">
			<table>
					<tr>
						<td id="menu">
						<%
							int index=0;
							foreach(XmlElement xe in doc.DocumentElement.SelectNodes("add"))
							{
								string tab=xe.GetAttribute("tab");
						
								if(IsTagPattern(tagName,xe.GetAttribute("pattern")))
								{
									bool isactive=(index==0&&(tabName==null||tabName==""))||(string.Compare(tab,tabName,true)==0);
									if(isactive)
									{
										tabcontrol=xe.GetAttribute("control");
										tabtext=xe.GetAttribute("text");
									}
									index++;
								}
							}	
						%>
						</td>
					</tr>
				</table>
				<br>
			<%
				if(tabcontrol!=null)
				{
					try
					{
						Control ctrl=LoadControl("Tag//Gecko_"+tabcontrol);
						holder1.Controls.Add(ctrl);
					}
					catch(Exception x)
					{
						if(Context.Request.QueryString["_err"]=="2")
							throw;
						%>
			<iframe style="width:378;height:333" src='<%=Context.Request.RawUrl+"&_err=2"%>'></iframe>
			<%
					}
				}
			%>
			<asp:PlaceHolder ID="holder1" Runat="server"></asp:PlaceHolder>
		<div style="text-align:right;padding-top:8px;padding-bottom:2px;padding-right:12px;">		
			<input type="button" id="btn_editinwin" value="[[EditHtml]]" style="width:80px" onclick="btn_editinwin_onclick()">&nbsp;&nbsp;&nbsp;
			<input type="button" id="btnok" value="[[OK]]" style="width:80px" onclick="btnok_onclick()">&nbsp;
			<input type="button" id="btncc" value="[[Cancel]]" style="width:80px" onclick="btncc_onclick()">
		</div>
		</div>
	</body>
	<script>
	
	
	var OxO88bb=["*","tags","all","prototype","btn_editinwin","btncc","btnok","controlparent","display","style","none","innerHTML","","ESC()","onkeydown","keyCode","returnValue","length","skipAutoFireChanged","isnotinput","1","tagName","SELECT","INPUT","TEXTAREA","OnPropertyChange(this)","onpropertychange","if(!syncingtoview)FireUIChanged()","onchange","onkeypress","onkeyup","propertyName","value","checked","changed","attachEvent","on","addEventListener","which","preventDefault","../colorpicker.aspx","width=505,height=330,resizable=0,toolbars=0,menubar=0,status=0","backgroundColor"];var allGetter=function (){var Ox147=this.getElementsByTagName(OxO88bb[0x0]);var Ox27f=this; Ox147[OxO88bb[0x1]]=function (Ox3ab){return Ox27f.getElementsByTagName(Ox3ab);}  ;return Ox147;} ; HTMLDocument[OxO88bb[0x3]].__defineGetter__(OxO88bb[0x2],allGetter) ;var btn_editinwin=document.getElementById(OxO88bb[0x4]);var btncc=document.getElementById(OxO88bb[0x5]);var btnok=document.getElementById(OxO88bb[0x6]);var controlparent=document.getElementById(OxO88bb[0x7]); btn_editinwin[OxO88bb[0x9]][OxO88bb[0x8]]=OxO88bb[0xa] ; function btn_editinwin_onclick(){var Oxb0=editor.EditInWindow(element.innerHTML,window);if(Oxb0!=null&&Oxb0!=false){ element[OxO88bb[0xb]]=Oxb0 ;} ;}  ; AttachDomEvent(document,OxO88bb[0xe], new Function(OxO88bb[0xc],OxO88bb[0xd])) ; function ESC(){if(event[OxO88bb[0xf]]==0x1b){ top[OxO88bb[0x10]]=false ; top.close() ;} ;}  ; function btnok_onclick(){ SyncTo() ; top[OxO88bb[0x10]]=true ; top.close() ;}  ; function btncc_onclick(){ top[OxO88bb[0x10]]=false ; top.close() ;}  ;if(nocancel){ btncc[OxO88bb[0x9]][OxO88bb[0x8]]=OxO88bb[0xa] ;} ;var syncingtoview=false;var coll=controlparent[OxO88bb[0x2]];if(coll){for(var i=0x0;i<coll[OxO88bb[0x11]];i++){var e=coll[i];if(e[OxO88bb[0x13]]==OxO88bb[0x14]||e.getAttribute(OxO88bb[0x12])){continue ;} ;if(e[OxO88bb[0x15]]==OxO88bb[0x16]||e[OxO88bb[0x15]]==OxO88bb[0x17]||e[OxO88bb[0x15]]==OxO88bb[0x18]){ AttachDomEvent(e,OxO88bb[0x1a], new Function(OxO88bb[0xc],OxO88bb[0x19])) ; AttachDomEvent(e,OxO88bb[0x1c], new Function(OxO88bb[0xc],OxO88bb[0x1b])) ; AttachDomEvent(e,OxO88bb[0x1d], new Function(OxO88bb[0xc],OxO88bb[0x1b])) ; AttachDomEvent(e,OxO88bb[0x1e], new Function(OxO88bb[0xc],OxO88bb[0x1b])) ;} ;} ;} ; SyncToViewInternal() ; setInterval(UpdateState,0x12c) ; function OnPropertyChange(Ox551){if(syncingtoview){return ;} ;if(event[OxO88bb[0x1f]]!=OxO88bb[0x20]&&event[OxO88bb[0x1f]]!=OxO88bb[0x21]){return ;} ; FireUIChanged() ;}  ; function FireUIChanged(){ top[OxO88bb[0x22]]=true ; SyncTo(element) ; UpdateState() ;}  ; function SyncToViewInternal(){ syncingtoview=true ;try{ SyncToView() ; UpdateState() ;} finally{ syncingtoview=false ;} ;}  ; function AttachDomEvent(obj,name,Ox1d6){if(obj[OxO88bb[0x23]]){ obj.attachEvent(OxO88bb[0x24]+name,Ox1d6) ;} ;if(obj[OxO88bb[0x25]]){ obj.addEventListener(name,Ox1d6,true) ;} ;}  ; function IsDigit(e){var Ox17c=e[OxO88bb[0xf]]||e[OxO88bb[0x26]];if((Ox17c<0x30||Ox17c>0x39)&&Ox17c!=0x8&&(Ox17c<0x23||Ox17c>0x25)&&Ox17c!=0x27&&Ox17c!=0x2e){if(e[OxO88bb[0x27]]){ e.preventDefault() ;} ;return false; e[OxO88bb[0xf]]=0x0 ;} ;}  ; function SelectColor(Ox19b,Ox4df){var Ox4e0=OxO88bb[0x28]; openModalWindow(Ox4e0,null,OxO88bb[0x29],function (Ox2d9,Ox18e){if(Ox18e[OxO88bb[0x10]]){ document.getElementById(Ox19b)[OxO88bb[0x20]]=Ox18e[OxO88bb[0x10]].toUpperCase() ; document.getElementById(Ox19b)[OxO88bb[0x9]][OxO88bb[0x2a]]=Ox18e[OxO88bb[0x10]] ; Ox4df[OxO88bb[0x9]][OxO88bb[0x2a]]=Ox18e[OxO88bb[0x10]] ;} ;} ) ;}  ;
	</script>
</html>
