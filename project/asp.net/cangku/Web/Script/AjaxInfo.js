/*
创建日期：2007-07-07
作用：用于AJAX方式显示提示信息
参考示例:ProductView.aspx
*/
document.writeln("<div id=\"AjaxInfoDiv\" style=\"display:none; color:#cc3300;\">");
document.writeln("    <img src=\"..\/Images\/Loading\/loading7.gif\" \/>");
document.writeln("<\/div>")

//显示AJAX Loading图片
function AjaxInfoInit()
{
    var AjaxInfoDiv=document.getElementById("AjaxInfoDiv");
    AjaxInfoDiv.style.display="";
}

function AjaxInfoMsg(MsgStr)
{   
    var AjaxInfoDiv=document.getElementById("AjaxInfoDiv");
    AjaxInfoDiv.innerHTML="<img src=\"..\/Images\/ico4.gif\" align=\"absmiddle\" \/> \n" + MsgStr;
    
    window.setTimeout("AjaxInfoHide()",6000);
    
}

function AjaxInfoHide()
{
    var AjaxInfoDiv=document.getElementById("AjaxInfoDiv"); 
     AjaxInfoDiv.style.display="none";
}