var Try = {
these: function(){
var returnValue;
for(var i=0; i<arguments.length; i++){
var lambda = arguments[i];
try{
returnValue = lambda();
break;
}catch(e){}
}
return returnValue;
}
}
function NewxmlHttpRequest(){
return Try.these(
function() {return new ActiveXObject('MSXML2.XMLHttp.6.0')},
function() {return new ActiveXObject('MSXML2.XMLHttp.3.0')},
function() {return new XMLHttpRequest()},
function() {return new ActiveXObject('MSXML2.XMLHttp.5.0')},
function() {return new ActiveXObject('MSXML2.XMLHttp.4.0')},
function() {return new ActiveXObject('Msxml2.XMLHTTP')},
function() {return new ActiveXObject('MSXML.XMLHttp')},
function() {return new ActiveXObject('Microsoft.XMLHTTP')}
) || null;

}
 //ID 接受的ID
 //beload 加载时显示的文字/图片
 //URL 要查询的URL
 //isTrue 是否异步工作
function GetAjax(ID,beload,URL,isTrue)
{
var Ajax;
 Ajax=NewxmlHttpRequest();
 //alert(Ajax);
 if(!Ajax)
 {
  alert("创建ajax对象失败");
  return;
 }
 Ajax.open("GET", URL,isTrue);
 Ajax.send(null);
 Ajax.onreadystatechange=function()
 {
 if(Ajax.readyState==4)
 {
  if (Ajax.status == 200)
  {
   GetID(ID).innerHTML=Ajax.responseText;
  }
  else
  {
   GetID(ID).innerHTML="没有找到数据";
  }
 }
 else
 {
  GetID(ID).innerHTML=beload;
 }
 }
}

function GetID(ID)
{
 var getid=false;
 getid=document.getElementById(ID);
 //alert(getid);
 return getid;
 }
 
function AjaxValue(URL,isTrue)
{
var Ajax;
 Ajax=NewxmlHttpRequest();
 //alert(Ajax);
 if(!Ajax)
 {
  alert("创建ajax对象失败");
  return;
 }
 Ajax.open("GET", URL,isTrue);
 Ajax.send(null);
 if(Ajax.readyState==4)
 {
  if (Ajax.status == 200)
  {
   return Ajax.responseText;
  }
  else
  {
   return "";
  }
 }
}

function getFileHtml(url)
{
    var faileStr = "Fail";
    var strRtn = "";
    var xmlHttp=null;
    try{
            xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
       }
       catch(e)
       {
	       try{
	            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	          }
           catch(e)
           {
	             return faileStr;
           }
        }
    try
    {
	    xmlHttp.Open("GET",url,false);
	    xmlHttp.Send();
	    strRtn = xmlHttp.responseText;
	    if(strRtn != null && strRtn != "")
	    {
		    return strRtn;
	    }
    }
    catch(e)
    {
        return faileStr;
    }
    return faileStr;
}