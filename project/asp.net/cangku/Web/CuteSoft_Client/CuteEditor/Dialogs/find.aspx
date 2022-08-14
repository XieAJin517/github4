<%@ Page Language="C#" ResponseEncoding="Unicode" Inherits="CuteEditor.EditorUtilityPage"  %>
<HTML>
	<head>
		<title>[[Find]] 
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
		<script src=dialog.js></script><script src=../_shared.js></script>
	</HEAD>
	<body>
		<form method="post">
			<table border="0" cellspacing="2" cellpadding="5" width="96%" align="center">
				<tr>
					<td class="normal" valign="top">
						<table border="0" cellspacing="2" cellpadding="5" width="100%"  class="normal" align="center">
							<tr>
								<td valign="top" nowrap>[[Find what]]: </td>
								<td valign="top"><INPUT TYPE=TEXT SIZE=30 NAME=stringSearch id="stringSearch" style="width : 180px;"></td>
							</tr>
							<tr>
								<td valign="top" nowrap>[[Replace with]]: </td>
								<td valign="top"><INPUT TYPE=TEXT SIZE=30 NAME=stringReplace id="stringReplace" style="width : 180px;"></td>
							</tr>
						</table> 
						<INPUT TYPE=Checkbox SIZE=40 NAME=MatchWholeWord id="MatchWholeWord">[[Match whole word]]<br>
						<INPUT TYPE=Checkbox SIZE=40 NAME=MatchCase id="MatchCase">[[Match case]]
					</td>
					<td valign="top" class="normal">
						<button name="Find" style="width:75px; height:22px;  margin-top:3px" onClick="FindTxt();">[[Find Next]]</button><br>
						<button name="Replace" style="width:75px; height:22px;  margin-top:7px" onClick="ReplaceTxt();">[[Replace]]</button><br>
						<button name="Replaceall" style="width:75px; height:22px;  margin-top:7px" onClick="ReplaceAllTxt();">[[Replace All]]</button><br>
						<button name="Cancel" style="width:75px; height:22px;  margin-top:7px" onClick="window.close();">[[Cancel]]</button><br>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
	
		<script language="javascript">
			
			var OxO4470=["dialogArguments","MatchCase","MatchWholeWord","stringSearch","stringReplace","selection","document","checked","length","value","Nothing to search.\x0APlease enter some text in the field labeled Find what:","Finished Searching the document. Would you like to start again from the top?","textedit","text","","Word not found. Nothing replaced."," word(s) were replaced."];var editwin=top[OxO4470[0x0]];var MatchCase=document.getElementById(OxO4470[0x1]);var MatchWholeWord=document.getElementById(OxO4470[0x2]);var stringSearch=document.getElementById(OxO4470[0x3]);var stringReplace=document.getElementById(OxO4470[0x4]);var TxtRange; TxtRange=editwin[OxO4470[0x6]][OxO4470[0x5]].createRange() ; function matchtype(){var Ox47e=0x0;var Ox47f=0x0;var Ox480=0x0;if(MatchCase[OxO4470[0x7]]){ Ox47f=0x4 ;} ;if(MatchWholeWord[OxO4470[0x7]]){ Ox480=0x2 ;} ; Ox47e=Ox47f+Ox480 ;return (Ox47e);}  ; function checkInputString(){if(stringSearch[OxO4470[0x9]][OxO4470[0x8]]<0x1){ alert(OxO4470[0xa]) ;return false;} else {return true;} ;}  ; function FindTxt(){if(checkInputString()){var Ox483=stringSearch[OxO4470[0x9]]; TxtRange.collapse(false) ;if(TxtRange.findText(Ox483,0x3b9aca00,matchtype())){ TxtRange.select() ;} else {var Ox484=confirm(OxO4470[0xb]);if(Ox484){ TxtRange.expand(OxO4470[0xc]) ; TxtRange.collapse() ; TxtRange.select() ; FindTxt() ;} ;} ;} ;}  ; function ReplaceTxt(){if(checkInputString()){if(MatchCase[OxO4470[0x7]]){if(TxtRange[OxO4470[0xd]]==stringSearch[OxO4470[0x9]]){ TxtRange[OxO4470[0xd]]=stringReplace[OxO4470[0x9]] ;} ;} else {if(TxtRange[OxO4470[0xd]].toLowerCase()==stringSearch[OxO4470[0x9]].toLowerCase()){ TxtRange[OxO4470[0xd]]=stringReplace[OxO4470[0x9]] ;} ;} ; FindTxt() ;} ;}  ; function ReplaceAllTxt(){if(checkInputString()){var Ox483=stringSearch[OxO4470[0x9]];var Ox487=0x0;var Ox1dd=OxO4470[0xe]; TxtRange.expand(OxO4470[0xc]) ; TxtRange.collapse() ; TxtRange.select() ;while(TxtRange.findText(Ox483,0x3b9aca00,matchtype())){ TxtRange.select() ; TxtRange[OxO4470[0xd]]=stringReplace[OxO4470[0x9]] ; Ox487++ ;} ;if(Ox487==0x0){ Ox1dd=OxO4470[0xf] ;} else { Ox1dd=Ox487+OxO4470[0x10] ;} ; alert(Ox1dd) ;} ;}  ;
		</script>