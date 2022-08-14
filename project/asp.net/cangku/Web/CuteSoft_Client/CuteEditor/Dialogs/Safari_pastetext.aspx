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
		<link rel="stylesheet" href='Safari_style.css'>		
		<script language="javascript">	
			var OxOf837=["availWidth","availHeight","value","htmlSource","length","checked","linebreaks","\x0D\x0A","ig","\x3Cbr /\x3E","\x0D","\x0A","dialogArguments","opener","editor","editdoc","Delete",""]; window.resizeTo(0x1c2,0x190) ; window.moveTo((screen[OxOf837[0x0]]-0x258)/0x2,(screen[OxOf837[0x1]]-0x190)/0x2) ; window.focus() ; function insertContent(){var Ox45b=document.getElementById(OxOf837[0x3])[OxOf837[0x2]];if(Ox45b&&Ox45b[OxOf837[0x4]]>0x0){if(document.getElementById(OxOf837[0x6])[OxOf837[0x5]]){ Ox45b=Ox45b.replace(( new RegExp(OxOf837[0x7],OxOf837[0x8])),OxOf837[0x9]) ; Ox45b=Ox45b.replace(( new RegExp(OxOf837[0xa],OxOf837[0x8])),OxOf837[0x9]) ; Ox45b=Ox45b.replace(( new RegExp(OxOf837[0xb],OxOf837[0x8])),OxOf837[0x9]) ;} ;var obj=window[OxOf837[0xd]][OxOf837[0xc]];var editor=obj[OxOf837[0xe]];var editdoc=obj[OxOf837[0xf]]; editdoc.execCommand(OxOf837[0x10],false,OxOf837[0x11]) ; editor.PasteHTML(Ox45b) ; window[OxOf837[0xd]].focus() ; window.close() ;} ;}  ;
		</script>
	</HEAD>
	<body>
		<table border="0" cellpadding="0" cellspacing="2" align="center" width="100%">
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
                <textarea name="htmlSource" id="htmlSource"  rows="15" cols="100" style="width: 430; height: 250; font-family: 'Courier New',Courier,mono; font-size: 12px;" dir="ltr" wrap="soft"></textarea>
            </td>
        </tr>
        <tr>
			<td align=left>
				<input type="button" value="[[CleanUpBox]]" onclick="document.getElementById('htmlSource').value='';" />
			</td>
            <td align=right>
				<input type="button" id="insert" name="insert" value="[[Insert]]" onclick="insertContent();" />&nbsp;&nbsp;&nbsp;
				<input type="button" value="[[Cancel]]" onclick="window.close();" />
			</td>
        </tr>
    </table>
</body>
</HTML>

