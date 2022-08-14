/*------------------------------------------------------------
 dateDlg(inputid,initDate,startYear,endYear)  ����ʱ�䴰��
 compareDate(end,s)                           �뵱ǰʱ��Ƚ�
 compareTwoDate(startDate,endDate,s)          �Ƚ�����ʱ��
 isNumber(text,name)                          �ж�ȫ������(true)                          
 isChar(text,addtemp,name,include)            �жϷ���Ҫ���ַ�
 isEmail(text)                                �ж��ǵ����ʼ�
 isPid(text)                                  �ж������֤��
 isNull(text,name)                            �ж�Ϊ������ʾ(true)
 getLength(text)                              ��ȡ����
 lengthEquals(text,name,num)                  ȷ������(true)
 lengthless(text,name,num)             ���Ȳ�����(true)
 lengthmore(text,name,num)             ���Ȳ�����(true)
 checkPassword(text,text1)                    �����������������Ƿ�һ��(true)
  ------------------------------------------------------------ 

  ------------------------------------------------------------*/
/**//*------------------------------------------------------------
 ����ʱ��ѡ��С�ؼ�
 inputid�����ı���name
 initDate������ʼ���ڣ�Ϊ��ʱ�ǵ�ǰʱ��
 startYear�������ڷ�Χ�Ŀ�ʼ����
 endYear�������ڷ�Χ�Ľ�������
 ʹ������onClick="dateDlg(end,'1999-11-12','1980','2010')"
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
 Trim()ȥ���ҿո�
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
 �ж������Ƿ��е�����
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
 �������
  ------------------------------------------------------------*/
var i,j;

/**//*------------------------------------------------------------
 �͵�ǰ���ڱȽϣ������ǰ���ڴ���������������ʾ
 end----��������
 s----��ʾ��Ϣ
 ʹ������onClick="compareDate(end,'ѡ�����ڲ����ڽ���֮ǰ!')" 
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
 ����ʱ����бȽϣ�����ʼ���ڴ��ڽ�����������ʾ
 startDate----��ʼ����
 endDate------��������
 ʹ������onClick="compareTwoDate(startDate,endDate,'��ʼ���ڲ��ܴ��ڽ�������!')" 
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
 �ж��Ƿ�Ϊ�������ͣ��粻��������������ʾ
 text-------�����ı�
 name-------��ʾ������
 ʹ������onBlur="compareTwoDate(this,'�绰����')" 
  ------------------------------------------------------------*/
function isNumber(text,name)
{
  var temp="0123456789";
   for(j=0; j<text.value.length; j++ ) 
   {    
     var ch = text.value.Trim().charAt(j);
  if(temp.indexOf(ch)==-1)
  {
   alert(name+"ӦΪ��������!");
   text.focus();
   return true;
  }  
   }
}

/**//*------------------------------------------------------------
 �ж��������������Ƿ�һ��
 text-------������
 name-------�ٴ�����������
 ʹ������checkPassword(form1.newpass,form1.newpass1) 
  ------------------------------------------------------------*/
function checkPassword(text,text1)
{
  var newpass=text.value.Trim();
  var newpass1=text1.value.Trim();
  if(newpass!=newpass1){
    alert("�������������벻һ��!");
    text.focus();
    return true;
  }
}


/**//*------------------------------------------------------------
 �ж��Ƿ�����Ƿ��ַ����纬�Ƿ��ַ�����ʾ
 text-------�����ı�
 addtemp----��Ӣ�ĺ������⻹�ɰ������ַ�
 name-------��ʾ������
 include----��ʾ�в�����������ַ�
 ʹ������onBlur="compareTwoDate(this,'@_','�ʼ�','%*$')" 
  ------------------------------------------------------------*/
function isChar(text,addtemp,name,include)
{
  var temp="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"+addtemp;
   for(j=0; j<text.value.length; j++ ) 
   {    
     var ch = text.value.Trim().charAt(j);
  if(temp.indexOf(ch)==-1)
  {
   alert(name+"�в��������'"+include+"'���ַ�!");
   text.focus();
   break; 
  }  
   }
}

/**//*------------------------------------------------------------
 �ж�������Ƿ�Ϊ�����ʼ����纬�Ƿ��ַ�����ʾ
 text-------����ĵ����ʼ�
 ʹ������onBlur="isEmail(this)" 
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
   alert("��������ȷ�ĵ����ʼ���ʽ!");
   text.focus();
   return true;
  }
  else if(n<m+2||n>email.length-2)
  {
   alert("��������ȷ�ĵ����ʼ���ʽ!");
   text.focus();
   return true;
  }
 }
}
/**//*------------------------------------------------------------
 �ж������ı��Ƿ�Ϊ���֤���룬��Ϊ����ȷ����ʾ
 text-------��������֤����
 ʹ������onBlur="isPid(this)" 
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
    alert("��������ȷ�����֤����!");
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
    alert("��������ȷ�����֤����!");
    text.focus();
    break; 
   }
  }       
  var ch1 = pid.charAt(pid.length-1);
  if(temp1.indexOf(ch1)==-1)
   {
    alert("��������ȷ�����֤����!");
    text.focus();
   }    
 }
 else{
  alert("���֤�����ӦΪ15λ��18λ!");
  text.focus();
 }}
}

/**//*------------------------------------------------------------
 �ж������ı��Ƿ�Ϊ�գ���Ϊ������ʾ
 text-------�����ı�
 ʹ������onBlur="isNull(this,'����')" 
  ------------------------------------------------------------*/
function isNull(text,name)
{
 if(text.value.Trim()==null||text.value.Trim()=="")
 {
  alert(name+"����Ϊ��!");
  text.focus();
  return true;
 }
}

/**//*------------------------------------------------------------
 ��ȡ�ı��򳤶ȣ�������Ϊ�����ַ�����
 text-------�����ı�
 ʹ������getLength(form1.name) 
  ------------------------------------------------------------*/
function getLength(text)
{
 var temp="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
 temp=temp+"`~!@#$%^&*()_+|-=\[]{};':,./<>?\"";
 temp=temp+"�������򣣣����������������������죭���¡�������������������������?";
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
 lengthEquals(text,name,num)    ��ȳ���
 lengthless(text,name,num)      ���Ȳ�����
 lengthmore(text,name,num)      ���Ȳ�����
 ��ȡ�ı��򳤶ȣ�������Ϊ�����ַ�����
 text-------�����ı�
 ʹ������getLength(form1.name,'����',8) 
  ------------------------------------------------------------*/
function lengthEquals(text,name,num)
{
 if(getLength(text)!=num)
 {
  alert("������"+num+"λ"+name+"!")
  text.focus();
  return true;
 }
}

function lengthless(text,name,num)
{
 if(getLength(text)<num)
 {
  alert(name+"��������"+num+"λ!")
  text.focus();
  return true;
 }
}
function lengthmore(text,name,num)
{
 if(getLength(text)>num)
 {
  alert(name+"���ܴ���"+num+"λ!")
  text.focus();
  return true;
 }
}

/*------------------------------------------------------------
 �ж�bodyText�����ı��Ƿ�Ϊ�գ���Ϊ������ʾ
 bodyText-------�����ı�
 ʹ������onBlur="isNullBody('����')" 
  ------------------------------------------------------------*/
function isNullBody(name)
{
  var bodyText = frames["Dvbbs_Composition"].document.body.innerText;
  if(bodyText.length==0) {
      frames["Dvbbs_Composition"].focus();
      alert(name+"����Ϊ��!");
      return true;
  }
}


/*------------------------------------------------------------
 ��ȡ�ı��򳤶ȣ�������Ϊ�����ַ�����
 bodyText-------�����ı�
 ʹ������isLengthBody(form1.name) 
  ------------------------------------------------------------*/
function isLengthBody(text,name)
{
    if (text.value.length > 600) {
        frames["Dvbbs_Composition"].focus();
        alert(name+"���ܳ���600!");
 return true;
    }
}


/*------------------------------------------------------------
 ����Ƿ��С�'����
        �У��򷵻�true
        ��, �򷵻�false
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
