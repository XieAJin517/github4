// SchOpt.js 文件
// justin
// 2006-09-13
// 用途:查询选项辅助脚本

// 
// checkbox复选框对象
// target目标文本框ID
function EnableCtrl(checkbox, target)
{
    var targetctrl =document.getElementById(target);
    
    if (checkbox.checked)
    {
        targetctrl.disabled=false;
        targetctrl.focus();	        
    }
    else
    {
       targetctrl.disabled=true;		        
    }
}

 /***判断是否为数字***/
function isNumber(s)
{
    var i = s;
    if(i=="")
    {
        return false;
    }
    var patrn=/^[-,+]{0,1}[0-9]{0,}[.]{0,1}[0-9]{0,}$/;
    if (!patrn.exec(s))
        return false;
    return true;
}

/***判断是否为日期***/
function isDate(str)
{

    var r = str.match(/^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2})$/); 
    if(r==null)
    {
        return false;
    } 
    var d= new Date(r[1], r[3]-1, r[4]); 
    if(!(d.getFullYear()==r[1]&&(d.getMonth()+1)==r[3]&&d.getDate()==r[4]))
    {  
        return false;
    }
    return true;

}      
