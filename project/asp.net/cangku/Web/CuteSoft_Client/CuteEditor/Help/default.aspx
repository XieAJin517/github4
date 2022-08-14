<%@ Page Language="C#" %>
<HTML>
	<HEAD>
		<title>Cute Editor Menus and Toolbars</title>
		<META NAME="KEYWORDS" CONTENT="ASP.NET, HTML, WYSIWYG, Editor, richtextbox, HTML Editor, ASP.NET Content Management,ASP.NET WYSIWYG">
		<META NAME="DESCRIPTION" CONTENT="Menus and Toolbars">
		<style> TD { font:normal 12px Arial; }
	H1 { FONT-SIZE: 18px; MARGIN-BOTTOM: 10px; MARGIN-Top: 5px; FONT-FAMILY: verdana,arial,helvetica; COLOR: #003399; }
	BODY { PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; COLOR: #000000; PADDING-TOP: 0px; FONT-FAMILY: arial,helvetica; BACKGROUND-COLOR: #ffffff }
	</style>
		<script>
			var OxO8d0c=["onload"]; window[OxO8d0c[0x0]]=function (){ window.focus() ;}  ;
		</script>
	</HEAD>
	<body>
		<h1 align="center">Menus and Toolbars</h1>
		<p><IMG src="../Images/standardtoolbar.gif" border="0">&nbsp;</p>
		<table cellSpacing="1" cellPadding="4" width="760">
			<tr bgColor="#efefef">
				<td vAlign="top"><B>Menu/Button</B></td>
				<td vAlign="top"><B>Function Description</B></td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/save.gif" align="absMiddle" border="0">&nbsp;<B>Save</B></td>
				<td vAlign="top">save the active content in the editor's content area</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/print.gif" align="absMiddle" border="0">&nbsp;<B>Print</B></td>
				<td vAlign="top">print the current page</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/bspreview.gif" align="absMiddle" border="0">&nbsp;<B>Preview</B></td>
				<td vAlign="top">preview the current page</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/find.gif" align="absMiddle" border="0">&nbsp;<B>Find 
						and replace</B></td>
				<td vAlign="top">find and replace the text in the editor's content area</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><B><IMG src="../Themes/Office2003/Images/fit.gif" align="absMiddle" border="0">&nbsp;Full-Screen</B></td>
				<td vAlign="top">edit in full screen mode, maximizing your available space</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/cleanup.gif" align="absMiddle" border="0">&nbsp;<B>Code 
						Cleaner</B></td>
				<td vAlign="top">clean up all "garbage" HTML-tags</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/spell.gif" align="absMiddle" border="0">&nbsp;<STRONG>Spell</STRONG>
				</td>
				<td vAlign="top">launch the spell checker</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/cut.gif" align="absMiddle" border="0">&nbsp;<B>Cut</B></td>
				<td vAlign="top">perform normal function of cutting</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/copy.gif" align="absMiddle" border="0">&nbsp;<B>Copy</B></td>
				<td vAlign="top">copy the current selection and store it in the clipboard</td>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/paste.gif" align="absMiddle" border="0">&nbsp;<B>Paste</B></td>
				<td vAlign="top">insert content from the clipboard into the editor at the selected 
					position</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/PasteText.gif" align="absMiddle" border="0">&nbsp;<B>Paste 
						Plain Text</B></td>
				<td vAlign="top">
					paste the plain text (no formatting) into the editor</td>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG language="javascript" id="IMG1" onclick="return IMG1_onclick()" src="../Themes/Office2003/Images/Pasteword.gif"
						align="absMiddle" border="0">&nbsp;<STRONG>Paste from word</STRONG></td>
				<td vAlign="top">paste the content copied form the microsoft word and remove the 
					web-unfriendly tags</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/delete.gif" align="absMiddle" border="0">&nbsp;<B>Delete</B></td>
				<td vAlign="top">delete the current selection</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/undo.gif" align="absMiddle" border="0">&nbsp;<B>Undo</B></td>
				<td vAlign="top">undo the last operation in the editor</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/redo.gif" align="absMiddle" border="0">&nbsp;<B>Redo</B></td>
				<td vAlign="top">redo the last operation in the editor</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/break.gif" align="absMiddle" border="0">&nbsp;<B>Break</B></td>
				<td vAlign="top">insert the line break</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/paragraph.gif" align="absMiddle" border="0">&nbsp;<B>Paragraph</B></td>
				<td vAlign="top">Insert a paragraph</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/InsertPageBreak.gif" align="absMiddle" border="0">&nbsp;<B>Insert 
						Page Break</B></td>
				<td vAlign="top">Insert the print page break</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/insertdate.gif" align="absMiddle" border="0">&nbsp;<B>Insert 
						the current date</B></td>
				<td vAlign="top">Insert the current date. The date format used is the date format 
					configured on the clients machine</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/timer.gif" align="absMiddle" border="0">&nbsp;
					<B>Insert the current time</B></td>
				<td vAlign="top">Insert the current time. The time format used is the time format 
					configured on the clients machine</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/borders.gif" align="absMiddle" border="0">&nbsp;
					<B>Visible Borders</B></td>
				<td vAlign="top">make table borders visible, which can make editing easier</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/specialchar.gif" align="absMiddle" border="0">&nbsp;
					<B>Special Chars</B></td>
				<td vAlign="top">insert a special character from a predefined list</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/emotion.gif" align="absMiddle" border="0">&nbsp;
					<B>Insert Emotion</B></td>
				<td vAlign="top">insert an emotion image at the selected position in the editor</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/text.gif" align="absMiddle" border="0">&nbsp;
					<B>Text Frame</B></td>
				<td vAlign="top">allows you to insert, edit, or reposition text regions</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/keyboard.gif" align="absMiddle" border="0">&nbsp;
					<B>Universal Keyboard</B></td>
				<td vAlign="top">Universal Online Keyboard</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><B><IMG src="../Themes/Office2003/Images/layer.gif" align="absMiddle" border="0">&nbsp;<B>insert 
							a layer </B></B>
				</td>
				<td vAlign="top">allows you to insert a layer(absolutely-positioned div)
				</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><B><IMG src="../Themes/Office2003/Images/GroupBox.gif" align="absMiddle" border="0">&nbsp;<B>GroupBox</B></B></td>
				<td vAlign="top">allows you to a group box (FieldSet) at the selected position in 
					the editor</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><B><IMG src="../Themes/Office2003/Images/image.gif" align="absMiddle" border="0">&nbsp;Insert 
						Image </B>
				</td>
				<td vAlign="top">insert a local image from the image gallery folder; thumbnail 
					images are dynamically created; Supports upload new images</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><B><IMG src="../Themes/Office2003/Images/eximage.gif" align="absMiddle" border="0">&nbsp;Insert 
						Image </B>
				</td>
				<td vAlign="top">insert an image at the selected position in the editor and let you 
					set its properties</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><B><IMG src="../Themes/Office2003/Images/flash.gif" align="absMiddle" border="0">&nbsp;Insert 
						Flash</B></td>
				<td vAlign="top">insert a flash animation at the selected position and let you set 
					its properties</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><B><IMG src="../Themes/Office2003/Images/media.gif" align="absMiddle" border="0">&nbsp;Insert 
						Media</B></td>
				<td vAlign="top">insert awindows media objectat the selected position and let you 
					set its properties</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><B><IMG src="../Themes/Office2003/Images/document.gif" align="absMiddle" border="0">&nbsp;Insert 
						Document</B></td>
				<td vAlign="top">insert a link to a document on the server (PDF,DOC, ZIP,etc.) at 
					the selected position
				</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><B><IMG src="../Themes/Office2003/Images/template.gif" align="absMiddle" border="0">&nbsp;Insert 
						Template</B></td>
				<td vAlign="top">Load thepredefined templates on the current selection.
				</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/instable.gif" align="absMiddle" border="0">&nbsp;
					<B>Insert Table</B></td>
				<td vAlign="top">insert a table into your web page</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/insrow_t.gif" align="absMiddle" border="0">&nbsp;
					<B>Insert Rows</B></td>
				<td vAlign="top">insert a row above the selected row</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/insrow_b.gif" align="absMiddle" border="0">&nbsp;<STRONG>Insert 
						Row Below</STRONG></td>
				<td vAlign="top">insert a row below the selected row</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/delrow.gif" align="absMiddle" border="0">&nbsp;
					<B>Delete Rows</B></td>
				<td vAlign="top">delete the selected row</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/inscol_l.gif" align="absMiddle" border="0">&nbsp;<STRONG>Insert 
						Column to the Left</STRONG></td>
				<td vAlign="top">insert a column to the left of the selected cell</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/inscol_r.gif" align="absMiddle" border="0">&nbsp;<STRONG>Insert 
						Column to the Right</STRONG></td>
				<td vAlign="top">insert a column to the right of the selected cell</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/delcol.gif" align="absMiddle" border="0">&nbsp;
					<B>Delete columns</B></td>
				<td vAlign="top">delete the selected column</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/inscell.gif" align="absMiddle" border="0">&nbsp;
					<B>Insert cells</B></td>
				<td vAlign="top">insert cells into the selected row.
				</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/delcell.gif" align="absMiddle" border="0">&nbsp;
					<B>Delete cells</B></td>
				<td vAlign="top">delete the selected cell</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/row.gif" align="absMiddle" border="0">&nbsp;
					<STRONG>Row properties</STRONG></td>
				<td vAlign="top">edit row properties</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/cell.gif" align="absMiddle" border="0">&nbsp;
					<STRONG><STRONG>Cell properties</STRONG></STRONG></td>
				<td vAlign="top">edit cell properties</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/mrgcell_r.gif" align="absMiddle" border="0">&nbsp;<STRONG>Merge 
						right</STRONG></td>
				<td vAlign="top">merge the current cell with the one to its right</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/mrgcell_b.gif" align="absMiddle" border="0">&nbsp;<STRONG>Mergebelow</STRONG></td>
				<td vAlign="top">merge the current cell with the one below it</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/spltcell_r.gif" align="absMiddle" border="0">&nbsp;<STRONG>Horizontal 
						split </STRONG>
				</td>
				<td vAlign="top">split a cell into columns</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/spltcell_b.gif" align="absMiddle" border="0">&nbsp;<STRONG>Vertical 
						split</STRONG></td>
				<td vAlign="top">Split a cell intorows</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/form.gif" align="absMiddle" border="0">&nbsp;<STRONG>Form</STRONG></td>
				<td vAlign="top">insert a form at the selected position
				</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/textarea.gif" align="absMiddle" border="0">&nbsp;<STRONG>TextArea</STRONG></td>
				<td vAlign="top">insert atextarea at the selected position
				</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/textbox.gif" align="absMiddle" border="0">&nbsp;<STRONG>Input 
						Text Box</STRONG></td>
				<td vAlign="top">insert ainput text box at the selected position
				</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/passwordfield.gif" align="absMiddle" border="0">&nbsp;<STRONG>Password 
						field </STRONG>
				</td>
				<td vAlign="top">insert a password field at the selected position
				</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/hiddenfield.gif" align="absMiddle" border="0">&nbsp;<STRONG>Hidden 
						field </STRONG>
				</td>
				<td vAlign="top">insert a hidden field at the selected position
				</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/listbox.gif" align="absMiddle" border="0">&nbsp;<STRONG>ListBox</STRONG></td>
				<td vAlign="top">insert a list box at the selected position</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/dropdownbox.gif" align="absMiddle" border="0">&nbsp;<STRONG>Dropdown 
						Box</STRONG></td>
				<td vAlign="top">insert a dropdown box at the selected position</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/optionbutton.gif" align="absMiddle" border="0">&nbsp;<STRONG>Radio 
						Button</STRONG></td>
				<td vAlign="top">insert a radio button at the selected position</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/checkbox.gif" align="absMiddle" border="0">&nbsp;<STRONG>Checkbox</STRONG></td>
				<td vAlign="top">insert a checkbox at the selected position</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/imagebutton.gif" align="absMiddle" border="0">&nbsp;<STRONG>Image 
						Button</STRONG></td>
				<td vAlign="top">insert an image button at the selected position</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/submit.gif" align="absMiddle" border="0">&nbsp;<STRONG>Submit 
						Button</STRONG></td>
				<td vAlign="top">insert a submit button at the selected position</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/reset.gif" align="absMiddle" border="0">&nbsp;<STRONG>Reset 
						Button</STRONG></td>
				<td vAlign="top">insert a reset button at the selected position</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/pushbutton.gif" align="absMiddle" border="0">&nbsp;<STRONG>Input 
						Button</STRONG></td>
				<td vAlign="top">insert a input button at the selected position</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/left_to_right.gif" align="absMiddle" border="0">&nbsp;<STRONG>Direction 
						left to right</STRONG></td>
				<td vAlign="top">Direction left to right</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/right_to_left.gif" align="absMiddle" border="0">&nbsp;<STRONG>Direction 
						right to left</STRONG></td>
				<td vAlign="top">Direction right to left</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/box.gif" align="absMiddle" border="0">&nbsp;<STRONG>Box 
						Formatting</STRONG></td>
				<td vAlign="top">Box Formatting</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/bold.gif" align="absMiddle" border="0">&nbsp;
					<B>Bold</B></td>
				<td vAlign="top">bold the selected text</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/italic.gif" align="absMiddle" border="0">&nbsp;
					<B>Italicize</B></td>
				<td vAlign="top">italicize the selected text</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/under.gif" align="absMiddle" border="0">&nbsp;
					<B>Underline</B></td>
				<td vAlign="top">underline the selected text</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/left.gif" align="absMiddle" border="0">&nbsp;
					<B>Left Justify</B></td>
				<td vAlign="top">align the selected content to the left</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/center.gif" align="absMiddle" border="0">&nbsp;
					<B>Center</B></td>
				<td vAlign="top">center the selected content</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/right.gif" align="absMiddle" border="0">&nbsp;
					<B>Right Justify</B></td>
				<td vAlign="top">align the selected content to the right</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/justifyfull.gif" align="absMiddle" border="0">&nbsp;
					<B>Justify None</B></td>
				<td vAlign="top">Justify Full</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/justifynone.gif" align="absMiddle" border="0">&nbsp;
					<B>Justify None</B></td>
				<td vAlign="top">Justify None</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/unformat.gif" align="absMiddle" border="0">&nbsp;
					<B>Remove Format</B></td>
				<td vAlign="top">remove format of the selected text</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><SPAN style="BACKGROUND-COLOR: red"><IMG src="../Themes/Office2003/Images/fontcolor.gif" align="absMiddle" border="0">&nbsp;</SPAN>
					<IMG src="../Themes/Office2003/Images/tbdown.gif" align="absMiddle" border="0">&nbsp;
					<B>Font Color</B></td>
				<td vAlign="top">change color of the selected text
				</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><SPAN style="BACKGROUND-COLOR: yellow"><IMG src="../Themes/Office2003/Images/colorpen.gif" align="absMiddle" border="0">&nbsp;</SPAN>
					<IMG src="../Themes/Office2003/Images/tbdown.gif" align="absMiddle" border="0">&nbsp;
					<B>Highlight</B></td>
				<td vAlign="top">highlight the selected text</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/numlist.gif" align="absMiddle" border="0">&nbsp;
					<B>Ordered List</B></td>
				<td vAlign="top">insert an ordered list</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/bullist.gif" align="absMiddle" border="0">&nbsp;
					<B>Unordered List</B></td>
				<td vAlign="top">Insert an unordered list</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/indent.gif" align="absMiddle" border="0">&nbsp;
					<B>Indent</B></td>
				<td vAlign="top">indent the selected content</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/outdent.gif" align="absMiddle" border="0">&nbsp;
					<B>Outdent</B></td>
				<td vAlign="top">outdent the selected content</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/subscript.gif" align="absMiddle" border="0">&nbsp;
					<B>Subscript</B></td>
				<td vAlign="top">change the selected text to subscript</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/superscript.gif" align="absMiddle" border="0">&nbsp;
					<B>Superscript</B></td>
				<td vAlign="top">change the selected text to superscript</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/strike.gif" align="absMiddle" border="0">&nbsp;
					<B>Strike Through</B></td>
				<td vAlign="top">strike through the selected text</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/Ucase.gif" align="absMiddle" border="0">&nbsp;<STRONG>Upper 
						Case</STRONG></td>
				<td vAlign="top">convert the selected text to upper case</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/Ucase.gif" align="absMiddle" border="0">&nbsp;<STRONG>Lower 
						Case</STRONG></td>
				<td vAlign="top">convert the selected text to lower case</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/rule.gif" align="absMiddle" border="0">&nbsp;
					<B>Insert Rule</B>
				</td>
				<td vAlign="top">insert a horizontal rule at the selected position in the editor</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/link.gif" align="absMiddle" border="0">&nbsp;
					<B>Insert Link</B></td>
				<td vAlign="top">add a link to the text on your page</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/ImageMap.gif" align="absMiddle" border="0">&nbsp;
					<B>Add image map</B></td>
				<td vAlign="top">Add image map</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/unlink.gif" align="absMiddle" border="0">&nbsp;
					<B>Remove Link</B></td>
				<td vAlign="top">remove the hyperlink from the selected content</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/anchor.gif" align="absMiddle" border="0">&nbsp;
					<B>Insert Anchor</B></td>
				<td vAlign="top">add an anchor to the text on your page</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/selectall.gif" align="absMiddle" border="0">&nbsp;
					<B>Select All</B></td>
				<td vAlign="top">select all content</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/selectnone.gif" align="absMiddle" border="0">&nbsp;
					<B>Select None</B></td>
				<td vAlign="top">selectnone</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><STRONG><IMG src="../Themes/Office2003/Images/abspos.gif" align="absMiddle" border="0">&nbsp;</STRONG>
					<STRONG>Absolute Position</STRONG></td>
				<td vAlign="top">fly text, pictures, tables... any element anywhere you want</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/forward.gif" align="absMiddle" border="0">&nbsp;
					<B>Bring Forward</B></td>
				<td vAlign="top">bring an item one position forward at a time</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/backward.gif" align="absMiddle" border="0">&nbsp;
					<B>Send Backward</B></td>
				<td vAlign="top">send an item one position back at a time</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/borders.gif" align="absMiddle" border="0">&nbsp;<STRONG>Toggle 
						Border</STRONG></td>
				<td vAlign="top">toggle the visibility of borders</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Themes/Office2003/Images/page.gif" align="absMiddle" border="0">&nbsp;<STRONG>Page 
						Properties</STRONG></td>
				<td vAlign="top">allow you modify the page properties</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top" height="38"><IMG src="../Themes/Office2003/Images/help.gif" align="absMiddle" border="0">&nbsp;
					<STRONG>Help</STRONG></td>
				<td vAlign="top" height="38">Returns a help Toolbar Button. The help page URL is 
					set by the HelpUrl Property</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Images/cssclass.gif" align="absMiddle" border="0">&nbsp;</td>
				<td vAlign="top">classdrop-down changes the CSS class of the selected text</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Images/cssstyle.gif" align="absMiddle" border="0">&nbsp;</td>
				<td vAlign="top">inline style drop-down changes the CSS style of the selected text</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Images/paragraphdropdown.gif" align="absMiddle" border="0">&nbsp;</td>
				<td vAlign="top">paragraph drop-down changes the paragraph style of the selected 
					text</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Images/fontdropdown.gif" align="absMiddle" border="0">&nbsp;</td>
				<td vAlign="top">font drop-down set the font face. If a selection is active, the 
					font will be applied to it</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Images/sizedropdown.gif" align="absMiddle" border="0">&nbsp;</td>
				<td vAlign="top">size drop down set the font size. If a selection is active, the 
					font will be applied to it</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Images/linkdropdown.gif" align="absMiddle" border="0">&nbsp;</td>
				<td vAlign="top">insert predefined links on the current selection</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Images/codedropdown.gif" align="absMiddle" border="0">&nbsp;</td>
				<td vAlign="top">insert predefined HTML code snippets on the current selection</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Images/imagedropdown.gif" align="absMiddle" border="0">&nbsp;</td>
				<td vAlign="top">insert predefined images on the current selection</td>
			</tr>
			<tr bgColor="#f8f8f8">
				<td vAlign="top"><IMG src="../Images/zoom.gif" align="absMiddle" border="0">&nbsp;</td>
				<td vAlign="top">Zoom dropdown</td>
			</tr>
		</table>
	</body>
</HTML>
