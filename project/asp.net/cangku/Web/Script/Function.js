/*
==================================================================
LTrim(string):去除左边的空格
==================================================================
*/

function LTrim(str)
{
    var whitespace = new String(" \t\n\r");
    var s = new String(str);
    if (whitespace.indexOf(s.charAt(0)) != -1)
    {
        var j=0, i = s.length;
        while (j < i && whitespace.indexOf(s.charAt(j)) != -1)
        {
            j++;
        }
        s = s.substring(j, i);
    }
    return s;
}

 

/*
==================================================================
RTrim(string):去除右边的空格
=================================================================
*/

function RTrim(str)
{
    var whitespace = new String(" \t\n\r");
    var s = new String(str);

    if (whitespace.indexOf(s.charAt(s.length-1)) != -1)
    {
        var i = s.length - 1;
        while (i >= 0 && whitespace.indexOf(s.charAt(i)) != -1)
        {
            i--;
        }
        s = s.substring(0, i+1);
    }
    return s;
}

 

/*
==================================================================
Trim(string):去除前后空格
==================================================================
*/

function Trim(str)
{
    return RTrim(LTrim(str));
}


/*============================================================================================*/
/*数据检查*/
/*============================================================================================*/
var sub_dig="对不起，请输入数字！";
var digital;

function checkdigital(digital, info)
{
   var re=/\D/;//set variable re equal non-digital;
   if(re.test(digital.value) || digital.value == "")
   {
      if(info == "")
         alert(sub_dig);
      else
        alert(info);
      //digital.value='';
      digital.focus();
      digital.select();
      return false;
   }
   else
      return true;
}

function checkfloat(digital)
{
   var re=/[^\d|\.]/;//set variable re equal non-digital;
   if(re.test(digital.value))
   {
      alert(sub_float);
      //digital.value='';
      digital.focus();
      digital.select();
      return false;
   }
   else
     return true;
}

var objs,cnt;
function checklen(objs,lens,info)
{
   var tmp=new String(objs.value);
   var len_error=info;
   if(tmp.length<lens)
   {
      alert(len_error);
      //objs.value="";
      objs.focus();
      return false;
   }
   else
      return true;
}

function checkmaxlen(objs,lens)
{
   var tmp=new String(objs.value);
   var len_error="您输入的数据长度不得超过:"+lens+"位！";
   if(tmp.length>lens)
   {
      //alert(len_error);
      objs.focus();
      return false;
   }
   else
     return true;
}

//数字验证
function numberCheck(object, min, max, name) {

   if (!textCheck(object, name)) 
       return false;

   if (!checkdigital(object, name + "必须是数字"))
       return false;

   if (min != "" && max != "") {
       if (object.value < min || object.value > max) {
           alert(name + "必须介于" + min + "和" +max + "之间");
           return false;
       }
   }
   
   return true;
}

//文本输入验证
function textCheck(object, name)
{  var str = Trim(object.value);
   if ( str == "" || str.length == 0) 
   {
       alert("请输入" +  name + "!");
       return false;
   }
   return true;
}

//URL输入验证
function urlCheck(object, name)
{  var str = Trim(object.value);
   if ( str == "" || str.length == 0) 
   {
       alert("请输入" +  name + "!");
       return false;
   }

   if (str.indexOf("http://") != 0)
   {
       alert(name + " 必须以http://开头");
       return false;
   }
   return true;
}

//密码验证
function pwdCheck(object, name, length)
{
   if (object.value == "") 
   {
       alert("请输入" +  name + "!");
       return false;
   }

   if (object.value.length < length) 
   {
      
       alert(name + "长度不能小于 " + length + " 位!");
       return false;
   }

   return true;
}

//email验证
function emailCheck(object, name)
{
   var re = /^[a-zA-Z0-9_]+$/;
   var str = object.value;

   if (object.value == "") 
   {
       alert("请输入" +  name + "!");
       return false;
   }

   if (object.value.indexOf("@") == -1)
   {
       alert(name + "格式不是正确的邮件地址格式! ");
       return false;   
   }

   if (object.value.indexOf(".") == -1)
   {
       alert(name + "格式不是正确的邮件地址格式! ");
       return false;   
   }

   return true;
}

function closeHTML(str){  
	 var arrTags=["span","font","b","u","i","h1","h2","h3","h4","h5","h6","p","li","ul","table","div"];  
	 for(var i=0;i<arrTags.length;i++){  
	 var intOpen=0;  
	 var intClose=0;  
	 var  re=new RegExp("\\<"+arrTags[i]+"( [^\\<\\>]+|)\\>","ig");  
	 var arrMatch=str.match(re);  
	 if(arrMatch!=null) intOpen=arrMatch.length;  
	 re=new RegExp("\\<\\/"+arrTags[i]+"\\>","ig");  
	 arrMatch=str.match(re);  
	 if(arrMatch!=null) intClose=arrMatch.length;  
	 for(var j=0;j<intOpen-intClose;j++)
	 {  
		str+="</"+arrTags[i]+">";  
	 }  
	 /*for(var j=(intOpen-intClose-1);j>=0;j--){  
	 str+="</"+arrTags[i]+">";  
	 }*/  
	 }  
	 return str;  

}  
