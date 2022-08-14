<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<HTML>
	<head>
		<title>[[PasteText]] 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</title>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta name="content-type" content="text/html ;charset=Unicode">
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)">
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)">
		<link rel="stylesheet" href='style.css'>
		<script src=gecko_dialog.js></script><script src=../_shared.js></script>
		<script language="javascript">
			var OxO9564=["availWidth","availHeight","dialogArguments","value","htmlSource","length","checked","linebreaks","\x0D\x0A","ig","\x3Cbr /\x3E","\x0D","\x0A","returnValue"]; window.resizeTo(0x1c2,0x190) ; window.moveTo((screen[OxO9564[0x0]]-0x258)/0x2,(screen[OxO9564[0x1]]-0x190)/0x2) ;var editor=top[OxO9564[0x2]]; function insertContent(){var Ox45b=document.getElementById(OxO9564[0x4])[OxO9564[0x3]];if(Ox45b&&Ox45b[OxO9564[0x5]]>0x0){if(document.getElementById(OxO9564[0x7])[OxO9564[0x6]]){ Ox45b=Ox45b.replace(( new RegExp(OxO9564[0x8],OxO9564[0x9])),OxO9564[0xa]) ; Ox45b=Ox45b.replace(( new RegExp(OxO9564[0xb],OxO9564[0x9])),OxO9564[0xa]) ; Ox45b=Ox45b.replace(( new RegExp(OxO9564[0xc],OxO9564[0x9])),OxO9564[0xa]) ;} ; top[OxO9564[0xd]]=Ox45b ; top.close() ;} ;}  ;
		</script>
	</HEAD>
	<body>
		<table border="0" cellpadding="0" cellspacing="2" align="center">
        <tr>
            <td class="title">[[PasteText]]</td>
            <td align="right" nowrap="nowrap">
                <input type="checkbox" name="linebreaks" id="linebreaks" checked="checked" />[[KeepLinebreaks]]
            </td> 
        </tr>
        <tr>
            <td colspan="2">[[UseCtrl_VtoPaste]]</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <textarea name="htmlSource" id="htmlSource" rows="15" cols="100" style="width: 100%; height: 100%; font-family: 'Courier New',Courier,mono; font-size: 12px;" dir="ltr" wrap="soft"></textarea>
            </td>
        </tr>
        <tr>
			<td align=left><input type="button" value="[[CleanUpBox]]" onclick="document.getElementById('htmlSource').value='';" />
			</td>
            <td align=right>
            <input type="button" id="insert" name="insert" value="[[Insert]]" onclick="insertContent();" />&nbsp;&nbsp;&nbsp;
            <input type="button" value="[[Cancel]]" onclick="window.close();" /></td>
        </tr>
    </table>
</body>
</HTML>
