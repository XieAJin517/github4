/*
==================================================================
LTrim(string):ȥ����ߵĿո�
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
RTrim(string):ȥ���ұߵĿո�
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
Trim(string):ȥ��ǰ��ո�
==================================================================
*/

function Trim(str)
{
    return RTrim(LTrim(str));
}


/*============================================================================================*/
/*���ݼ��*/
/*============================================================================================*/
var sub_dig="�Բ������������֣�";
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
   var len_error="����������ݳ��Ȳ��ó���:"+lens+"λ��";
   if(tmp.length>lens)
   {
      //alert(len_error);
      objs.focus();
      return false;
   }
   else
     return true;
}

//������֤
function numberCheck(object, min, max, name) {

   if (!textCheck(object, name)) 
       return false;

   if (!checkdigital(object, name + "����������"))
       return false;

   if (min != "" && max != "") {
       if (object.value < min || object.value > max) {
           alert(name + "�������" + min + "��" +max + "֮��");
           return false;
       }
   }
   
   return true;
}

//�ı�������֤
function textCheck(object, name)
{  var str = Trim(object.value);
   if ( str == "" || str.length == 0) 
   {
       alert("������" +  name + "!");
       return false;
   }
   return true;
}

//URL������֤
function urlCheck(object, name)
{  var str = Trim(object.value);
   if ( str == "" || str.length == 0) 
   {
       alert("������" +  name + "!");
       return false;
   }

   if (str.indexOf("http://") != 0)
   {
       alert(name + " ������http://��ͷ");
       return false;
   }
   return true;
}

//������֤
function pwdCheck(object, name, length)
{
   if (object.value == "") 
   {
       alert("������" +  name + "!");
       return false;
   }

   if (object.value.length < length) 
   {
      
       alert(name + "���Ȳ���С�� " + length + " λ!");
       return false;
   }

   return true;
}

//email��֤
function emailCheck(object, name)
{
   var re = /^[a-zA-Z0-9_]+$/;
   var str = object.value;

   if (object.value == "") 
   {
       alert("������" +  name + "!");
       return false;
   }

   if (object.value.indexOf("@") == -1)
   {
       alert(name + "��ʽ������ȷ���ʼ���ַ��ʽ! ");
       return false;   
   }

   if (object.value.indexOf(".") == -1)
   {
       alert(name + "��ʽ������ȷ���ʼ���ַ��ʽ! ");
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
