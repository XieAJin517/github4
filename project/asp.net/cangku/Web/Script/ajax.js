/*
类  名：Ajax

功  能：XmlHttp 辅助类

创建者：RANDY

创建日期：2006-06-10

注　意：该类必须和 Common.js 一起使用

*/

var Ajax = {
  getTransport: function() {
 /* 
    return Try.these(
      function() {return new ActiveXObject('Msxml2.XMLHTTP')},
      function() {return new ActiveXObject('Microsoft.XMLHTTP')},
      function() {return new XMLHttpRequest()}
    ) || false;
 */ 

   var msxmls = new Array('Msxml2.XMLHTTP.5.0','Msxml2.XMLHTTP.4.0','Msxml2.XMLHTTP.3.0','MSXML2.XMLHTTP.2.6','Msxml2.XMLHTTP','Microsoft.XMLHTTP'); 
    for (var i = 0; i < msxmls.length; i++) 
     { 
            try  
            { 
                    return new ActiveXObject(msxmls[i]); 
            }catch (e){} 

        } 
 
  },

  activeRequestCount: 0

}


//过去XML文档对象模型
Ajax.GetXmlDocument = function()
{
    if (window.ActiveXObject) {
        return new ActiveXObject("Microsoft.XMLDOM");  //ie
    } 
    else if (document.implementation && document.implementation.createDocument) {    
        return document.implementation.createDocument("","",null);  //Mozilla
    } 
    else {
        alert('浏览器不支持XML文档对象');
    }
}


//获取XmlHttp 再执行相应的函数返回XmlHttp
Ajax.RequestHttpXml = function(url,fName)
{
	var xHttp = this.getTransport();
	xHttp.Open("POST", url, true); 
	xHttp.onreadystatechange = function()
	{
		if(xHttp.readyState == 4)
		{
			//alert(xHttp.responseText);
			if(xHttp == null)
				return;
				
			if(fName != null || fName.trim() != "")
			{
				var fun = fName + "(xHttp)";
				eval(fun);
			}
		}
	}
	xHttp.Send(null);
}

Ajax.GetHtml= function(url)
{
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