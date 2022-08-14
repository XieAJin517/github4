/*------------------------------------------------------------
 dateDlg(inputid,initDate,startYear,endYear)  弹出时间窗口
 compareDate(end,s)                           与当前时间比较
 compareTwoDate(startDate,endDate,s)          比较两个时间
 isNumber(text,name)                          判断全是数字(true)                          
 isChar(text,addtemp,name,include)            判断符合要求字符
 isEmail(text)                                判断是电子邮件
 isPid(text)                                  判断是身份证号
 isNull(text,name)                            判断为空则提示(true)
 getLength(text)                              获取长度
 lengthEquals(text,name,num)                  确定长度(true)
 lengthless(text,name,num)             长度不少于(true)
 lengthmore(text,name,num)             长度不大于(true)
 checkPassword(text,text1)                    检验两次输入密码是否一致(true)
  ------------------------------------------------------------ 

  ------------------------------------------------------------*/
/**//*------------------------------------------------------------
 弹出时间选择小控件
 inputid－－文本框name
 initDate－－初始日期，为空时是当前时间
 startYear－－日期范围的开始日期
 endYear－－日期范围的结束日期
 使用例子onClick="dateDlg(end,'1999-11-12','1980','2010')"
  ------------------------------------------------------------*/
function dateDlg(inputid,initDate,startYear,endYear)
{
 var pattern = /^(19|20)([0-9]){2}$/;
 flag=pattern.test(startYear);
 if(!flag)startYear=1900;
 flag=pattern.test(endYear);
 if(!flag)endYear=2050;
 if(inputid.value==null||inputid.value=='')
  {
   if(initDate==null||initDate=='')
   {
     currentDate = new Date();  
   }
   else{
    currentDate = initDate;
   }
  }
 else{ 
   currentDate = inputid.value;
  }
 var arguments = new Array(startYear,endYear,0,0,0)

 var pattern = /^(19|20)([0-9]){2}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
 flag=pattern.test(currentDate);
 if(flag)
 {
  iYear=currentDate.substring(0,4);
  iMonth=currentDate.substring(5,7);
  iDay=currentDate.substring(8,10);
  arguments = new Array(startYear,endYear,iYear,iMonth,iDay)
 }
 showx = event.screenX - event.offsetX + 18;
 showy = event.screenY - event.offsetY - 210;

 var features =
  'dialogWidth:'  + 192 + 'px;' +
  'dialogHeight:' + 210 + 'px;' +
  'dialogLeft:'   + showx     + 'px;' +
  'dialogTop:'    + showy     + 'px;' +
  'directories:no; localtion:no; menubar:no; status=no; toolbar=no;scrollbars:yes;Resizeable=no';
 retval = window.showModalDialog("../js/calendar.htm", arguments , features );
 var calctrl = eval(inputid)
 if( retval != null ){
  calctrl.value = retval;
 }else{
  //alert("canceled");
 }
}

/**//*------------------------------------------------------------
 Trim()去左右空格
  ------------------------------------------------------------*/

String.prototype.Trim = function()
{
    return this.replace(/(^\s*)|(\s*$)/g, "");
}
String.prototype.LTrim = function()
{
    return this.replace(/(^\s*)/g, "");
}
String.prototype.Rtrim = function()
{
    return this.replace(/(\s*$)/g, "");
}
/**//*------------------------------------------------------------
 判断密码是否有单引号
  ------------------------------------------------------------*/
function isNotYinhao(s)
{   
    var yin;
 var temp="'";
 for(yin=0; yin < s.length; yin++ ) 
 { 
  var ch = s.charAt(yin);
  if(temp.indexOf(ch)>=0)
  {
   return true;
  }
 }
 return false;
}

/**//*------------------------------------------------------------
 定义变量
  ------------------------------------------------------------*/
var i,j;

/**//*------------------------------------------------------------
 和当前日期比较，如果当前日期大于输入日期则提示
 end----输入日期
 s----提示信息
 使用例子onClick="compareDate(end,'选择日期不能在今天之前!')" 
  ------------------------------------------------------------*/
function compareDate(end,s){
var a=new Date();
var b=end.value;
if(((Number(a.getYear())-Number(b.substring(0,4)))*356+
       (Number(a.getMonth())-Number(b.substring(5,7))+1)*31+
    (Number(a.getDate())-Number(b.substring(8,10))))>0)
 {
  alert(s);
  end.focus();
 }
}


/**//*------------------------------------------------------------
 两个时间进行比较，当开始日期大于结束日期则提示
 startDate----开始日期
 endDate------结束日期
 使用例子onClick="compareTwoDate(startDate,endDate,'开始日期不能大于结束日期!')" 
  ------------------------------------------------------------*/
function compareTwoDate(startDate,endDate,s)
{
var a=startDate.value;
var b=endDate.value;
if(((Number(a.substring(0,4))-Number(b.substring(0,4)))*356+
       (Number(a.substring(5,7))-Number(b.substring(5,7)))*31+
    (Number(a.substring(8,10))-Number(b.substring(8,10))))>0)
 {
  alert(s);
  startDate.focus();
 }
}

/**//*------------------------------------------------------------
 判断是否为数字类型，如不是数字类型则提示
 text-------输入文本
 name-------提示的名字
 使用例子onBlur="compareTwoDate(this,'电话号码')" 
  ------------------------------------------------------------*/
function isNumber(text,name)
{
  var temp="0123456789";
   for(j=0; j<text.value.length; j++ ) 
   {    
     var ch = text.value.Trim().charAt(j);
  if(temp.indexOf(ch)==-1)
  {
   alert(name+"应为数字类型!");
   text.focus();
   return true;
  }  
   }
}

/**//*------------------------------------------------------------
 判断两次密码输入是否一致
 text-------新密码
 name-------再次输入新密码
 使用例子checkPassword(form1.newpass,form1.newpass1) 
  ------------------------------------------------------------*/
function checkPassword(text,text1)
{
  var newpass=text.value.Trim();
  var newpass1=text1.value.Trim();
  if(newpass!=newpass1){
    alert("两次输入新密码不一致!");
    text.focus();
    return true;
  }
}


/**//*------------------------------------------------------------
 判断是否包含非法字符，如含非法字符则提示
 text-------输入文本
 addtemp----除英文和数字外还可包含的字符
 name-------提示的名字
 include----提示中不允许包含的字符
 使用例子onBlur="compareTwoDate(this,'@_','邮件','%*$')" 
  ------------------------------------------------------------*/
function isChar(text,addtemp,name,include)
{
  var temp="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"+addtemp;
   for(j=0; j<text.value.length; j++ ) 
   {    
     var ch = text.value.Trim().charAt(j);
  if(temp.indexOf(ch)==-1)
  {
   alert(name+"中不允许包含'"+include+"'等字符!");
   text.focus();
   break; 
  }  
   }
}

/**//*------------------------------------------------------------
 判断输入的是否为电子邮件，如含非法字符则提示
 text-------输入的电子邮件
 使用例子onBlur="isEmail(this)" 
  ------------------------------------------------------------*/
function isEmail(text)
{   
 var email=text.value.Trim();
 var m=email.indexOf("@");
 var n=email.indexOf(".");
 if(email!="")
 {
  if(m<1||m>email.length-3)
  {
   alert("请输入正确的电子邮件格式!");
   text.focus();
   return true;
  }
  else if(n<m+2||n>email.length-2)
  {
   alert("请输入正确的电子邮件格式!");
   text.focus();
   return true;
  }
 }
}
/**//*------------------------------------------------------------
 判断输入文本是否为身份证号码，如为不正确则提示
 text-------输入的身份证号码
 使用例子onBlur="isPid(this)" 
  ------------------------------------------------------------*/
function isPid(text)
{
 var pid=text.value.Trim();
 var temp="0123456789";
 var temp1="0123456789xX";
 if(pid!=""){
 if(pid.length==15)
 {
     for(j=0; j<15; j++ ) 
     {    
   var ch = pid.charAt(j);
   if(temp.indexOf(ch)==-1)
   {
    alert("请输入正确的身份证号码!");
    text.focus();
    break; 
   }
  }       
 }
 else if(pid.length==18)
 {

     for(j=0; j<pid.length-1; j++ ) 
     {    
   var ch = pid.charAt(j);
   if(temp.indexOf(ch)==-1)
   {
    alert("请输入正确的身份证号码!");
    text.focus();
    break; 
   }
  }       
  var ch1 = pid.charAt(pid.length-1);
  if(temp1.indexOf(ch1)==-1)
   {
    alert("请输入正确的身份证号码!");
    text.focus();
   }    
 }
 else{
  alert("身份证号码的应为15位或18位!");
  text.focus();
 }}
}

/**//*------------------------------------------------------------
 判断输入文本是否为空，如为空则提示
 text-------输入文本
 使用例子onBlur="isNull(this,'姓名')" 
  ------------------------------------------------------------*/
function isNull(text,name)
{
 if(text.value.Trim()==null||text.value.Trim()=="")
 {
  alert(name+"不能为空!");
  text.focus();
  return true;
 }
}

/**//*------------------------------------------------------------
 获取文本框长度，中文作为两个字符处理
 text-------输入文本
 使用例子getLength(form1.name) 
  ------------------------------------------------------------*/
function getLength(text)
{
 var temp="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
 temp=temp+"`~!@#$%^&*()_+|-=\[]{};':,./<>?\"";
 temp=temp+"·～！◎＃￥％……※×（）——＋§－＝÷【】『』；‘：“，。、《》?";
 var len = text.value.Trim().length;
 for(j=0;j<text.value.Trim().length;j++)
 {
  var ch= text.value.Trim().charAt(j);
  if(temp.indexOf(ch)==-1){
  len++;
  }
 }
 return len;
}

/*------------------------------------------------------------
 lengthEquals(text,name,num)    相等长度
 lengthless(text,name,num)      长度不少于
 lengthmore(text,name,num)      长度不大于
 获取文本框长度，中文作为两个字符处理
 text-------输入文本
 使用例子getLength(form1.name,'姓名',8) 
  ------------------------------------------------------------*/
function lengthEquals(text,name,num)
{
 if(getLength(text)!=num)
 {
  alert("请输入"+num+"位"+name+"!")
  text.focus();
  return true;
 }
}

function lengthless(text,name,num)
{
 if(getLength(text)<num)
 {
  alert(name+"不能少于"+num+"位!")
  text.focus();
  return true;
 }
}
function lengthmore(text,name,num)
{
 if(getLength(text)>num)
 {
  alert(name+"不能大于"+num+"位!")
  text.focus();
  return true;
 }
}

/*------------------------------------------------------------
 判断bodyText输入文本是否为空，如为空则提示
 bodyText-------输入文本
 使用例子onBlur="isNullBody('姓名')" 
  ------------------------------------------------------------*/
function isNullBody(name)
{
  var bodyText = frames["Dvbbs_Composition"].document.body.innerText;
  if(bodyText.length==0) {
      frames["Dvbbs_Composition"].focus();
      alert(name+"不能为空!");
      return true;
  }
}


/*------------------------------------------------------------
 获取文本框长度，中文作为两个字符处理
 bodyText-------输入文本
 使用例子isLengthBody(form1.name) 
  ------------------------------------------------------------*/
function isLengthBody(text,name)
{
    if (text.value.length > 600) {
        frames["Dvbbs_Composition"].focus();
        alert(name+"不能超过600!");
 return true;
    }
}


/*------------------------------------------------------------
 检查是否含有”'“号
        有，则返回true
        无, 则返回false
  ------------------------------------------------------------*/
function isTheChar(text,name)
{
    var re= /'/g;
    var arr = text.match(re);
    if (arr == null)
        return false;
    else
        return true;
}
