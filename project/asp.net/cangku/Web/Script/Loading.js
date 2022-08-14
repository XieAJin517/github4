document.writeln("<div Id=\"LoadingDiv\" style=\"height:100%; width:100%; background:#ffffff; text-align:center; padding-top:20%; margin-bottom:80%;\">");
document.writeln("<img src=\"..\/Images\/Loading\/loading.gif\">");
document.writeln("<\/div>")

function LoadingDivHide()
{
    $("LoadingDiv").style.display="none";
}