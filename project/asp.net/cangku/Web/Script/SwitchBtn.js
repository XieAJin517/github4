/*
文 件 名:SwitchBtn.js
作    用:按钮点击时替换作用按钮,杜绝按钮两次点击问题.
创 建 人:Ivan;
使用说明: 引用Main.css
调用方法: 
<script language="javascript">SetSwBtn("BtnId");</script>  //BtnId为按钮ID
修改日志:
    2007-04-22,将调用方法更改为SetSwBtn

创建时间:2007-04-19
最后更新:2007-04-22
*/
DivTempBtnInit();

//按钮初始化
function DivTempBtnInit()
{
	document.writeln("<span id=\"BtnSwitch\" class=\"SwitchBtn\"></span>");
}

function SetSwBtn(obj)
{    
    //给按钮添加替换事件
    var obj=typeof(obj)=="object"?obj:document.getElementById(obj); 
    if (obj == null) return;
    //throw e;
    obj.attachEvent("onclick",function(){ReplaceBtn(obj)}) ;
}


//按钮替换		
function ReplaceBtn(obj)
{
	var TempBtn;
	var BtnSwitch=document.getElementById("BtnSwitch");
	var TempBtn=typeof(obj)=="object"?obj:document.getElementById(obj);
	try
	{
	    //TempBtn.style.display="none";
	    BtnSwitch.style.display="block";
	    BtnSwitch.style.left=getL(TempBtn);
	    BtnSwitch.style.top=getT(TempBtn);
	    switch(TempBtn.tagName)
	    {
		    case "A":
			    BtnSwitch.innerText=TempBtn.innerText;
			    break;
		    case "BUTTON":
			    BtnSwitch.innerText=TempBtn.value;
			    break;
		    default:
                BtnSwitch.innerText=TempBtn.value;
			    break;	
	    } 
	    //BtnSwitch.innerText=TempBtn.value;
	    //BtnSwitch.innerText="请稍等";
	}
	catch(e)
	{
	    //alert(e.message)
	}

}

//取得对像的绝对X位置
function getL(e){ 
    var l=e.offsetLeft; 
    while(e=e.offsetParent)l+=e.offsetLeft; 
    return l ;
}

//取得对像的绝对Y位置 
function getT(e){ 
    var t=e.offsetTop; 
    while(e=e.offsetParent)t+=e.offsetTop; 
    return t ;
} 


//按钮还原
function RestoreBtn(obj)
{
	var BtnSwitch=document.getElementById("BtnSwitch");
	//var TempBtn=typeof(obj)=="object"?obj:document.getElementById(obj);
	BtnSwitch.style.display="none";
	//TempBtn.style.display="block";
}

