var OxO4957=["ExecImageCommand","ExecCommand","[[EditorIsNotReady]]","Edit","Code","View","Upper","Lower","startOffset","startContainer","nodeType","length","childNodes","tagName","IMG","parentNode","BODY","position","style","absolute","relative","height","justifyleft","ForeColor","style.backgroundColor","[[_CuteEditorResource_]]ColorPicker.Aspx?culture=[[_culture_]]","\x26[[ResourceArguments]]","returnValue","backgroundColor","BackColor","[[_CuteEditorResource_]]Dialogs/Gecko_InsertChars.aspx?settinghash=[[_setting_]]","[[_CuteEditorResource_]]Dialogs/Gecko_InsertEmotion.aspx?settinghash=[[_setting_]]","[[_CuteEditorResource_]]Dialogs/Gecko_InsertTemplate.aspx?settinghash=[[_setting_]]","Gallery","Image","Media","Flash","Document","PrintFullWebPage","value","_PostBackHandlerID","PostBackScript","tempid","A","ResourceDir","/Dialogs/Gecko_Insertlinks.aspx?settinghash=[[_setting_]]","type","selection","None","/SpellCheck.aspx","className","style.cssText",";","","Left","Right","Top","Bottom","\x3Cdiv class=\x22ToggleBorder\x22 style=\x22POSITION: absolute\x22\x3E[[TypeTextHere]]\x3C/div\x3E","Title","\x3Cbr/\x3E","\x3Cp\x3E\x3C/p\x3E","HelpUrl","helpwin","http://cutesoft.net/ASP.NET+WYSIWYG+Editor/Menus+and+Toolbars/default.aspx","form","TEXTAREA","rows","cols","Select","width","120px","size","8","SELECT","input","radio","checkbox","insertcheckbox","insertradiobox","insertinputhidden","insertinputpassword","insertinputbutton","insertinputreset","insertinputsubmit","insertinputimage","insertinputtext","insertdropdown","insertlistbox","inserttextbox","insertform","help","fromfullpage","tofullpage","fullpage","insertdate","inserttime","insertparagraph","break","insertfieldset","inserttext","versplitcell","horsplitcell","mergebottom","mergeright","deletecell","insertcell","deletecolumn","deleterow","insertrowbottom","insertbottomrow","insertrow","insertrowtop","inserttoprow","insertcolumnright","insertrightcolumn","insertcolumn","insertcolumnleft","insertleftcolumn","inserttable","tabledropdown","cssstyle","cssclass","netspell","insertlink","redo","undo","postback","pasteword","pastetext","pastehtml","print","documentpropertypage","inserttemplate","insertdocument","insertflash","insertmedia","insertimage","imagegallerybybrowsing","insertemotion","insertchars","setbackcolor","setforecolor","backcolor","forecolor","justifynone","sizeplus","sizeminus","bringbackward","bringforward","absoluteposition","toggleborder","lcase","ucase","delete","paste","copy","cut","tabview","tabcode","tabedit","Command "," Is not supported!\x0A","QueryCommandSupportEnable","QueryCommandEnable","QueryCommandSupportActive","QueryCommandActive","FullPage","TableDropDown","TR","rowIndex","TABLE","cells","%","innerHTML","\x26nbsp;","colSpan","TD","cellIndex","rowSpan"]; editor[OxO4957[0x0]]=function (Ox194,Oxa0,Ox5b){return editor.ExecCommand(Ox194,Oxa0,Ox5b);}  ; editor[OxO4957[0x1]]=function (Ox194,Oxa0,Ox5b){if(!isready){ alert(OxO4957[0x2]) ;return ;} ; editor.FocusDocument() ;var Ox2d6=lastmodalwindowtime;try{switch((Ox194+OxO4957[0x35]).toLowerCase()){case OxO4957[0xa0]: editor.SetActiveTab(OxO4957[0x3]) ;break ;case OxO4957[0x9f]: editor.SetActiveTab(OxO4957[0x4]) ;break ;case OxO4957[0x9e]: editor.SetActiveTab(OxO4957[0x5]) ;break ;case OxO4957[0x9d]: editwin.getSelection().getRangeAt(0x0).deleteContents() ;break ;case OxO4957[0x9c]: ExecCommand_Copy(Oxa0,Ox5b) ;break ;case OxO4957[0x9b]: ExecCommand_Paste(Oxa0,Ox5b) ;break ;case OxO4957[0x9a]: editwin.getSelection().getRangeAt(0x0).deleteContents() ;break ;case OxO4957[0x99]: ExecCommand_Case(OxO4957[0x6]) ;break ;case OxO4957[0x98]: ExecCommand_Case(OxO4957[0x7]) ;break ;case OxO4957[0x97]: ExecCommand_ToggleBorder(true) ;break ;case OxO4957[0x96]:var sel=editwin.getSelection();var r=sel.getRangeAt(0x0); sel.removeAllRanges() ;var Ox85=r[OxO4957[0x8]];var Ox2ce=r[OxO4957[0x9]]; df=r.cloneContents() ;var Ox2d7=Ox2ce;if(Ox2ce[OxO4957[0xa]]!=0x3){if(df[OxO4957[0xc]][OxO4957[0xb]]==0x1){try{ Ox2d7=df[OxO4957[0xc]][0x0] ;} catch(e){} ;if(Ox2d7[OxO4957[0xd]]!=OxO4957[0xe]){ Ox2d7=Ox2ce ;} ;} ;} else { Ox2d7=Ox2ce[OxO4957[0xf]] ;} ;if(Ox2d7[OxO4957[0xd]].toUpperCase()!=OxO4957[0x10]){if(Ox2d7[OxO4957[0x12]][OxO4957[0x11]]!=OxO4957[0x13]){ Ox2d7[OxO4957[0x12]][OxO4957[0x11]]=OxO4957[0x13] ;if(Ox2d7[OxO4957[0xd]]==OxO4957[0xe]){ r.deleteContents() ; Ox2ce.insertBefore(Ox2d7,Ox2ce[OxO4957[0xc]][Ox85]) ;} ;} else { Ox2d7[OxO4957[0x12]][OxO4957[0x11]]=OxO4957[0x14] ;if(Ox2d7[OxO4957[0xd]]==OxO4957[0xe]){ r.deleteContents() ; Ox2ce.appendChild(Ox2d7) ;} ;} ;} ;break ;case OxO4957[0x95]: ExecCommand_BringZIndex(0x1) ;break ;case OxO4957[0x94]: ExecCommand_BringZIndex(-0x1) ;break ;case OxO4957[0x93]:var Ox2d8=parseInt(editor.offsetHeight);if(Ox2d8-0x64>0x0){ editor[OxO4957[0x12]][OxO4957[0x15]]=Ox2d8-0x64 ;} ;break ;case OxO4957[0x92]:var Ox2d8=parseInt(editor.offsetHeight); editor[OxO4957[0x12]][OxO4957[0x15]]=Ox2d8+0x64 ;break ;case OxO4957[0x91]: editdoc.execCommand(OxO4957[0x16],false,null) ;break ;case OxO4957[0x90]: editdoc.execCommand(OxO4957[0x17],Oxa0,Ox5b) ;break ;case OxO4957[0x8f]: ExecCommand_CtrlAttr(OxO4957[0x18],Oxa0,Ox5b) ;break ;case OxO4957[0x8e]: openModalWindow(OxO4957[0x19]+OxO4957[0x1a],null,_colorpickerDialogFeature,function (Ox2d9,Ox18e){if(Ox18e[OxO4957[0x1b]]){ editor.ExecCommand(OxO4957[0x17],Oxa0,Ox18e.returnValue) ; Ox5b[OxO4957[0x12]][OxO4957[0x1c]]=Ox18e[OxO4957[0x1b]] ;} ;} ) ;break ;case OxO4957[0x8d]: openModalWindow(OxO4957[0x19]+OxO4957[0x1a],null,_colorpickerDialogFeature,function (Ox2d9,Ox18e){if(Ox18e[OxO4957[0x1b]]){ editor.ExecCommand(OxO4957[0x1d],Oxa0,Ox18e.returnValue) ;} ; Ox5b[OxO4957[0x12]][OxO4957[0x1c]]=Ox18e[OxO4957[0x1b]] ;} ) ;break ;case OxO4957[0x8c]: openModalWindow(OxO4957[0x1e]+OxO4957[0x1a],null,_charDialogFeature,function (Ox2d9,Ox18e){if(Ox18e[OxO4957[0x1b]]){ ExecCommand_PasteHTML(false,Ox18e.returnValue) ;} ;} ) ;break ;case OxO4957[0x8b]: openModalWindow(OxO4957[0x1f]+OxO4957[0x1a],null,_emotionDialogFeature,function (Ox2d9,Ox18e){if(Ox18e[OxO4957[0x1b]]){ ExecCommand_PasteHTML(false,Ox18e.returnValue) ;} ;} ) ;break ;case OxO4957[0x85]: openModalWindow(OxO4957[0x20]+OxO4957[0x1a],null,_templateDialogFeature,function (Ox2d9,Ox18e){if(Ox18e[OxO4957[0x1b]]){ ExecCommand_PasteHTML(false,Ox18e.returnValue) ;} ;} ) ;break ;case OxO4957[0x8a]: ExecCommand_Insert(OxO4957[0x21]) ;break ;case OxO4957[0x89]: ExecCommand_Insert(OxO4957[0x22]) ;break ;case OxO4957[0x88]: ExecCommand_Insert(OxO4957[0x23]) ;break ;case OxO4957[0x87]: ExecCommand_Insert(OxO4957[0x24]) ;break ;case OxO4957[0x86]: ExecCommand_Insert(OxO4957[0x25]) ;break ;case OxO4957[0x85]: ExecCommand_InsertTemplate() ;break ;case OxO4957[0x84]: ExecCommand_DocumentPropertyPage() ;break ;case OxO4957[0x83]:if(ToBoolean(editor.getAttribute(OxO4957[0x26]))){ window.print() ;} else { editwin.print() ;} ;break ;case OxO4957[0x82]: ExecCommand_PasteHTML(false,Ox5b) ;break ;case OxO4957[0x81]: ExecCommand_PasteText(false,Ox5b) ;break ;case OxO4957[0x80]: ExecCommand_PasteWord(false,Ox5b) ;break ;case OxO4957[0x7f]: GetElementById(editor.getAttribute(OxO4957[0x28]))[OxO4957[0x27]]=Ox5b ; SyncToHidden() ; eval(editor.getAttribute(OxO4957[0x29])) ;break ;case OxO4957[0x7e]:if(Log_CanUndo()){ Log_Undo() ;var Oxa8=Log_GetSavePoint(); RestoreSavePoint(Oxa8) ; Log_SetSavePoint(GetSavePoint()) ;} ;break ;case OxO4957[0x7d]:if(Log_CanRedo()){ Log_Redo() ;var Oxa8=Log_GetSavePoint(); RestoreSavePoint(Oxa8) ; Log_SetSavePoint(GetSavePoint()) ;} ;break ;case OxO4957[0x7c]:var Oxb8=OxO4957[0x2a]+ new Date().getTime();var Oxa8=GetSavePoint();var Oxb9=editor.SearchSelectionElement(OxO4957[0x2b]);if(Oxb9==null){var sel=editwin.getSelection();var r=sel.getRangeAt(0x0);var Ox2da=r.cloneRange();var Oxf1=Range_GetSelectionType(r);var Ox2db=r.extractContents(); Oxb9=editdoc.createElement(OxO4957[0x2b]) ;if(Ox2db){ Oxb9.appendChild(Ox2db) ; r.insertNode(Oxb9) ;} ;} ; openModalWindow(editor.getAttribute(OxO4957[0x2c])+OxO4957[0x2d]+OxO4957[0x1a],Oxb9,_linkDialogFeature,function (Ox2d9,Ox18e){var Ox74=Ox18e[OxO4957[0x1b]];if(Ox74){if(editdoc[OxO4957[0x2f]][OxO4957[0x2e]]==OxO4957[0x30]){var r=editdoc[OxO4957[0x2f]].createRange(); r.moveToElementText(Oxb9) ; r.collapse(false) ; r.select() ;} ;} else { RestoreSavePoint(Oxa8) ;} ;} ) ;break ;case OxO4957[0x7b]: checkSpellingById(frameid,editor.getAttribute(OxO4957[0x2c])+OxO4957[0x31]) ;break ;case OxO4957[0x7a]: ExecCommand_CtrlAttr(OxO4957[0x32],Oxa0,Ox5b) ;break ;case OxO4957[0x79]:if(Ox5b){ ExecCommand_CtrlAttr(OxO4957[0x33],Oxa0,OxO4957[0x34]+Ox5b,true) ;} else { ExecCommand_CtrlAttr(OxO4957[0x33],Oxa0,OxO4957[0x35]) ;} ;break ;case OxO4957[0x78]:case OxO4957[0x77]: ExecCommand_InsertTable() ;break ;case OxO4957[0x76]:case OxO4957[0x75]: ExecCommand_InsertColumn(OxO4957[0x36]) ;break ;case OxO4957[0x74]:case OxO4957[0x73]:case OxO4957[0x72]: ExecCommand_InsertColumn(OxO4957[0x37]) ;break ;case OxO4957[0x71]:case OxO4957[0x70]: ExecCommand_InsertRow(OxO4957[0x38]) ;break ;case OxO4957[0x6f]:case OxO4957[0x6e]:case OxO4957[0x6d]: ExecCommand_InsertRow(OxO4957[0x39]) ;break ;case OxO4957[0x6c]: ExecCommand_DeleteRow() ;break ;case OxO4957[0x6b]: ExecCommand_DeleteColumn() ;break ;case OxO4957[0x6a]: ExecCommand_InsertCell() ;break ;case OxO4957[0x69]: ExecCommand_DeleteCell() ;break ;case OxO4957[0x68]: ExecCommand_MergeRight() ;break ;case OxO4957[0x67]: ExecCommand_MergeBottom() ;break ;case OxO4957[0x66]: ExecCommand_SplitHor() ;break ;case OxO4957[0x65]: ExecCommand_SplitVer() ;break ;case OxO4957[0x64]: ExecCommand_PasteHTML(false,OxO4957[0x3a]) ;break ;case OxO4957[0x63]: ExecCommand_InsertFieldSet(Ox5b||OxO4957[0x3b]) ;break ;case OxO4957[0x62]: ExecCommand_PasteHTML(false,OxO4957[0x3c]) ;break ;case OxO4957[0x61]: ExecCommand_PasteHTML(false,OxO4957[0x3d]) ;break ;case OxO4957[0x60]: ExecCommand_PasteHTML(false, new Date().toLocaleTimeString()) ;break ;case OxO4957[0x5f]: ExecCommand_PasteHTML(false, new Date().toLocaleDateString()) ;break ;case OxO4957[0x5e]: ExecCommand_FullPage(true) ;break ;case OxO4957[0x5d]: _set_FullPage(true) ;break ;case OxO4957[0x5c]: _set_FullPage(false) ;break ;case OxO4957[0x5b]:if(editor.getAttribute(OxO4957[0x3e])){ window.open(editor.getAttribute(OxO4957[0x3e]),OxO4957[0x3f],_helpDialogFeature) ;} else { window.open(OxO4957[0x40]) ;} ;break ;case OxO4957[0x5a]:var form=editdoc.createElement(OxO4957[0x41]); editor.InsertElement(form) ;break ;case OxO4957[0x59]:var Ox1a8=editdoc.createElement(OxO4957[0x42]); Ox1a8[OxO4957[0x43]]=0x4 ; Ox1a8[OxO4957[0x44]]=0x30 ; editor.InsertElement(Ox1a8) ;break ;case OxO4957[0x58]:var Ox1a8=editdoc.createElement(OxO4957[0x45]); Ox1a8[OxO4957[0x12]][OxO4957[0x46]]=OxO4957[0x47] ; Ox1a8[OxO4957[0x48]]=OxO4957[0x49] ; editor.InsertElement(Ox1a8) ;break ;case OxO4957[0x57]:var Ox1a8=editdoc.createElement(OxO4957[0x4a]); editor.InsertElement(Ox1a8) ;break ;case OxO4957[0x56]:case OxO4957[0x55]:case OxO4957[0x54]:case OxO4957[0x53]:case OxO4957[0x52]:case OxO4957[0x51]:case OxO4957[0x50]:var Ox1a8=editdoc.createElement(OxO4957[0x4b]); Ox1a8[OxO4957[0x2e]]=Ox194.substring(0xb) ; editor.InsertElement(Ox1a8) ;break ;case OxO4957[0x4f]:var Ox1a8=editdoc.createElement(OxO4957[0x4b]); Ox1a8[OxO4957[0x2e]]=OxO4957[0x4c] ; editor.InsertElement(Ox1a8) ;break ;case OxO4957[0x4e]:var Ox1a8=editdoc.createElement(OxO4957[0x4b]); Ox1a8[OxO4957[0x2e]]=OxO4957[0x4d] ; editor.InsertElement(Ox1a8) ;break ;default: Ox2de() ;break ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;} ;} finally{ NotifySelectionChange() ;if(Ox2d6==lastmodalwindowtime){ editor.FocusDocument() ;} ;} ; function Ox2de(){try{ editdoc.execCommand(Ox194,Oxa0,Ox5b) ;} catch(x){ alert(OxO4957[0xa1]+Ox194+OxO4957[0xa2]+x.message) ;} ;}  ;}  ; editor[OxO4957[0xa3]]=function (Ox194){return true;}  ; editor[OxO4957[0xa4]]=function (Ox194){ Ox194=Ox194+OxO4957[0x35] ;var Ox1b0=Ox194.toLowerCase();switch(Ox1b0){default:try{return editdoc.queryCommandEnabled(Ox194);} catch(x){return false;} ;;} ;}  ; editor[OxO4957[0xa5]]=function (Ox194){return true;}  ; editor[OxO4957[0xa6]]=function (Ox194){ Ox194=Ox194+OxO4957[0x35] ;var Ox1b0=Ox194.toLowerCase();switch(Ox1b0){case OxO4957[0xa0]:return _get_ActiveTab()==OxO4957[0x3];case OxO4957[0x9f]:return _get_ActiveTab()==OxO4957[0x4];case OxO4957[0x9e]:return _get_ActiveTab()==OxO4957[0x5];case OxO4957[0x5e]:case OxO4957[0x5d]:case OxO4957[0x5c]:return GetState(OxO4957[0xa7]);default:try{return editdoc.queryCommandState(Ox194);} catch(x){return false;} ;;;;;;;;} ;}  ; editor[OxO4957[0xa8]]=function (Oxba){var table=_CreateEditingTableStyle; ExecCommand_PasteHTML(false,table) ;}  ; function ExecCommand_InsertRow(Oxc8){var sel=editwin.getSelection();var Ox176=sel.getRangeAt(0x0);var Ox2ce=Ox176[OxO4957[0x9]];var Oxc9;var table;var Oxc4;var i;var Ox2e0;var Ox2e1; Oxc9=get_previous_object(Ox2ce.parentNode,OxO4957[0xa9]) ;if(Oxc8==OxO4957[0x38]){if(Oxc9[OxO4957[0xaa]]-0x1>0x0){ Ox2e1=Oxc9[OxO4957[0xaa]]-0x1 ;} else { Ox2e1=0x0 ;} ;} else { Ox2e1=Oxc9[OxO4957[0xaa]]+0x1 ;} ; table=get_previous_object(Oxc9,OxO4957[0xab]) ;if(table!=null){var Ox2e2=0x64/Oxc9[OxO4957[0xac]][OxO4957[0xb]]+OxO4957[0xad]; Oxc4=table.insertRow(Ox2e1) ;for( i=0x0 ;i<Oxc9[OxO4957[0xac]][OxO4957[0xb]];i++){ Oxc4.insertCell(i) ; Oxc4[OxO4957[0xac]][i][OxO4957[0xae]]=OxO4957[0xaf] ; Ox2e0=Oxc9[OxO4957[0xac]][i][OxO4957[0xb0]] ;if(Ox2e0>0x1){ Oxc4.cells(i)[OxO4957[0xb0]]=Ox2e0 ;} ;} ;} ;}  ; function ExecCommand_DeleteRow(){var sel=editwin.getSelection();var Ox176=sel.getRangeAt(0x0);var Ox2ce=Ox176[OxO4957[0x9]];var Oxc9;var table; Oxc9=get_previous_object(Ox2ce.parentNode,OxO4957[0xa9]) ; table=get_previous_object(Oxc9,OxO4957[0xab]) ;if(table!=null){if(table[OxO4957[0x43]][OxO4957[0xb]]<=0x1){ table[OxO4957[0xf]].removeChild(table) ;} else { table.deleteRow(Oxc9.rowIndex) ;} ;} ;}  ; function ExecCommand_DeleteColumn(){var sel=editwin.getSelection();var Ox176=sel.getRangeAt(0x0);var Ox2ce=Ox176[OxO4957[0x9]];var Oxc9;var table;var Ox2e3; td=get_previous_object(Ox2ce.parentNode,OxO4957[0xb1]) ; table=get_previous_object(td,OxO4957[0xab]) ;if(table!=null){ Ox2e3=td[OxO4957[0xb2]] ;for( i=0x0 ;i<table[OxO4957[0x43]][OxO4957[0xb]];i++){ Oxc9=table[OxO4957[0x43]][i] ;if(Oxc9[OxO4957[0xac]][OxO4957[0xb]]<=0x1){ table.deleteRow(i) ; i-- ;} else {if(Ox2e3<Oxc9[OxO4957[0xac]][OxO4957[0xb]]){if(Oxc9[OxO4957[0xac]][Ox2e3][OxO4957[0xb3]]>0x1){ i+=Oxc9[OxO4957[0xac]][Ox2e3][OxO4957[0xb3]]-0x1 ;} ; Oxc9.deleteCell(Ox2e3) ;} ;} ;} ;if(table[OxO4957[0x43]][OxO4957[0xb]]==0x0){ table[OxO4957[0xf]].removeChild(table) ;} ;} ;}  ; function ExecCommand_InsertColumn(Oxc8){var sel=editwin.getSelection();var Ox176=sel.getRangeAt(0x0);var Ox2ce=Ox176[OxO4957[0x9]];var Ox5f;var table;var i;var Ox2e5;var Ox2e3; Ox5f=get_previous_object(Ox2ce.parentNode,OxO4957[0xb1]) ; tr=get_previous_object(Ox2ce.parentNode,OxO4957[0xa9]) ; table=get_previous_object(Ox5f,OxO4957[0xab]) ;if(table!=null){for( i=0x0 ;i<table[OxO4957[0x43]][OxO4957[0xb]];i++){if(Oxc8==OxO4957[0x37]){if(Ox5f[OxO4957[0xb2]]+0x1>table[OxO4957[0x43]][i][OxO4957[0xac]][OxO4957[0xb]]){ Ox2e3=table[OxO4957[0x43]][i][OxO4957[0xac]][OxO4957[0xb]] ;} else { Ox2e3=Ox5f[OxO4957[0xb2]]+0x1 ;} ; table[OxO4957[0x43]][i].insertCell(Ox2e3) ; table[OxO4957[0x43]][i][OxO4957[0xac]][Ox2e3][OxO4957[0xae]]=OxO4957[0xaf] ;var Ox82=table[OxO4957[0x43]][i][OxO4957[0xac]][Ox2e3-0x1][OxO4957[0x46]];if(Ox2e3>0x0){ Ox2e5=table[OxO4957[0x43]][i][OxO4957[0xac]][Ox2e3-0x1][OxO4957[0xb3]] ;} else { Ox2e5=0x1 ;} ;if(Ox2e5>0x1){ table[OxO4957[0x43]][i][OxO4957[0xac]][Ox2e3][OxO4957[0xb3]]=Ox2e5 ; i+=Ox2e5-0x1 ;} ;} else {if(table[OxO4957[0x43]][i][OxO4957[0xaa]]!=tr[OxO4957[0xaa]]){ Ox2e3=Ox5f[OxO4957[0xb2]]-0x1 ;} else { Ox2e3=Ox5f[OxO4957[0xb2]] ;} ; table[OxO4957[0x43]][i].insertCell(Ox2e3) ; table[OxO4957[0x43]][i][OxO4957[0xac]][Ox2e3][OxO4957[0xae]]=OxO4957[0xaf] ;var Ox82=table[OxO4957[0x43]][i][OxO4957[0xac]][Ox2e3-0x1][OxO4957[0x46]];if(Ox2e3>0x0){ Ox2e5=table[OxO4957[0x43]][i][OxO4957[0xac]][Ox2e3-0x1][OxO4957[0xb3]] ;} else { Ox2e5=0x1 ;} ;if(Ox2e5>0x1){ table[OxO4957[0x43]][i][OxO4957[0xac]][Ox2e3][OxO4957[0xb3]]=Ox2e5 ; i+=Ox2e5-0x1 ;} ;} ;} ;} ;}  ; function ExecCommand_InsertCell(){var sel=editwin.getSelection();var Ox176=sel.getRangeAt(0x0);var Ox2ce=Ox176[OxO4957[0x9]];var Ox5f;var Oxc9; Ox5f=get_previous_object(Ox2ce.parentNode,OxO4957[0xb1]) ; Oxc9=get_previous_object(Ox5f,OxO4957[0xa9]) ;if(Oxc9!=null){ Oxc9.insertCell(Ox5f[OxO4957[0xb2]]+0x1) ;var Ox2e6=Oxc9[OxO4957[0xac]][Ox5f[OxO4957[0xb2]]+0x1]; Ox2e6[OxO4957[0xae]]=OxO4957[0xaf] ;var Ox82=Oxc9[OxO4957[0xac]][Ox5f[OxO4957[0xb2]]][OxO4957[0x46]];} ;}  ; function ExecCommand_DeleteCell(){var sel=editwin.getSelection();var Ox176=sel.getRangeAt(0x0);var Ox2ce=Ox176[OxO4957[0x9]];var Ox5f;var table;var Oxc9; Ox5f=get_previous_object(Ox2ce.parentNode,OxO4957[0xb1]) ; Oxc9=get_previous_object(Ox5f,OxO4957[0xa9]) ; table=get_previous_object(Oxc9,OxO4957[0xab]) ;if(table!=null){if(Oxc9[OxO4957[0xac]][OxO4957[0xb]]<=0x1){ table.deleteRow(Oxc9.rowIndex) ;if(table[OxO4957[0x43]][OxO4957[0xb]]==0x0){ table[OxO4957[0xf]].removeChild(table) ;} ;} else { Oxc9.deleteCell(Ox5f.cellIndex) ;} ;} ;}  ; function ExecCommand_MergeRight(){var sel=editwin.getSelection();var Ox176=sel.getRangeAt(0x0);var Ox2ce=Ox176[OxO4957[0x9]];var Ox5f;var Oxc9;var Ox2e8; Ox5f=get_previous_object(Ox2ce.parentNode,OxO4957[0xb1]) ; Oxc9=get_previous_object(Ox5f,OxO4957[0xa9]) ;if(Oxc9!=null&&Ox5f[OxO4957[0xb2]]<Oxc9[OxO4957[0xac]][OxO4957[0xb]]-0x1){ Ox2e8=Oxc9[OxO4957[0xac]][Ox5f[OxO4957[0xb2]]+0x1] ; Ox5f[OxO4957[0xae]]+=Ox2e8[OxO4957[0xae]] ; Ox5f[OxO4957[0xb0]]+=Ox2e8[OxO4957[0xb0]] ; Oxc9.deleteCell(Ox5f[OxO4957[0xb2]]+0x1) ;} ;}  ; function ExecCommand_SplitHor(){var sel=editwin.getSelection();var Ox176=sel.getRangeAt(0x0);var Ox2ce=Ox176[OxO4957[0x9]];var Ox5f;var Oxc9; Ox5f=get_previous_object(Ox2ce.parentNode,OxO4957[0xb1]) ; Oxc9=get_previous_object(Ox5f,OxO4957[0xa9]) ;if(Oxc9!=null&&Ox5f[OxO4957[0xb0]]>0x1){ Ox5f[OxO4957[0xb0]]-- ; Oxc9.insertCell(Ox5f[OxO4957[0xb2]]+0x1) ;var Ox2e6=Oxc9[OxO4957[0xac]][Ox5f[OxO4957[0xb2]]+0x1]; Ox2e6[OxO4957[0xae]]=OxO4957[0xaf] ;var Ox82=Oxc9[OxO4957[0xac]][Ox5f[OxO4957[0xb2]]][OxO4957[0x46]]; Ox2e6.setAttribute(OxO4957[0x46],Ox82) ;} ;}  ; function ExecCommand_SplitVer(){var sel=editwin.getSelection();var Ox176=sel.getRangeAt(0x0);var Ox2ce=Ox176[OxO4957[0x9]];var Ox5f;var Oxc9;var Ox2e8; Ox5f=get_previous_object(Ox2ce.parentNode,OxO4957[0xb1]) ; Oxc9=get_previous_object(Ox5f,OxO4957[0xa9]) ; table=get_previous_object(Ox5f,OxO4957[0xab]) ;if(table!=null&&Oxc9!=null&&(Ox5f[OxO4957[0xb3]]>0x1)){ Ox5f[OxO4957[0xb3]]-- ;var Ox2ebOx2e6; Ox2eb=table[OxO4957[0x43]][Oxc9[OxO4957[0xaa]]+0x1] ; Ox2eb.insertCell(Ox5f.cellIndex) ; Ox2e6=table[OxO4957[0x43]][Oxc9[OxO4957[0xaa]]+0x1][OxO4957[0xac]][Ox5f[OxO4957[0xb2]]] ; Ox2e6[OxO4957[0xae]]=OxO4957[0xaf] ;} ;}  ; function ExecCommand_MergeBottom(){var sel=editwin.getSelection();var Ox176=sel.getRangeAt(0x0);var Ox2ce=Ox176[OxO4957[0x9]];var Ox5f;var Oxc9;var Ox2e8; Ox5f=get_previous_object(Ox2ce.parentNode,OxO4957[0xb1]) ; Oxc9=get_previous_object(Ox5f,OxO4957[0xa9]) ; table=get_previous_object(Ox5f,OxO4957[0xab]) ;if(table!=null&&Oxc9!=null&&(table[OxO4957[0x43]][OxO4957[0xb]]-0x1>0x0)){var Ox2ebOx2e8; Ox2eb=table[OxO4957[0x43]][Oxc9[OxO4957[0xaa]]+0x1] ; Ox2e8=table[OxO4957[0x43]][Oxc9[OxO4957[0xaa]]+0x1][OxO4957[0xac]][Ox5f[OxO4957[0xb2]]] ; Ox5f[OxO4957[0xae]]+=Ox2e8[OxO4957[0xae]] ; Ox5f[OxO4957[0xb3]]+=Ox2e8[OxO4957[0xb3]] ; table[OxO4957[0x43]][Oxc9[OxO4957[0xaa]]+0x1].deleteCell(Ox5f.cellIndex) ;} ;}  ; function get_previous_object(obj,Ox2ee){if(obj){if(obj[OxO4957[0xd]]!=Ox2ee){ obj=get_previous_object(obj.parentNode,Ox2ee) ;} ;} ;return (obj);}  ;