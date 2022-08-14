/*
功  能：更新目标DIV的滚动条的位置

用  法：updateScroll(this, 'divHeader')
参  数：1 源DIV对象
        2 目标DIV id
*/
function updateScroll(divSrcObj, divDestId)
{
	var obj=document.getElementById(divDestId);
	if (obj != null) obj.scrollLeft = divSrcObj.scrollLeft;
}


/*
功  能：获取对象数组
用  法：$('id1','id2','id3')
参  数：对象ID
*/
function $()
{
  var elements = new Array();

  for (var i = 0; i < arguments.length; i++)
  {
    var element = arguments[i];
    if (typeof element == 'string')
      element = document.getElementById(element);

    if (arguments.length == 1)
      return element;
      
    elements.push(element);
  }

  return elements;
}

/*
功  能：获取对象数组
用  法：$n('id1')
参  数：1 对象名称
创建者：Randy
时  间：2006-8-23
*/
function $n()
{
    return document.getElementsByName(arguments[0]);
}

/*
功  能：获取对象数组
用  法：$tn("sTagName")
参  数：1 HTML标签名称  eg:  $tn('INPUT'),$tn('DIV')
创建者：Randy
时  间：2006-10-26
*/
function $tn(sTagName)
{
    return document.getElementsByTagName(sTagName)
}

/*
功  能：获取对象数组
用  法：$t("typeName")
参  数：1 控件的类型名称
创建者：Randy
时  间：2006-10-26
*/
function $t(sTypeName)
{
    var inputs = $tn("INPUT");
    var objs = new Array();
    
    for(var i = 0;i < inputs.length;i++)
    {
        if (inputs[i].type.toLowerCase() == sTypeName)
        {            
            objs.push(inputs[i]);
        }
    }
    return objs;
}

function $type(typeName)
{
    return $t(typeName);
}

/*
功  能：获取目标对象所在的行对象
用  法：$r('id1')
参  数：1 对象名称
创建者：Randy
时  间：2006-9-4
*/
function $r(e)
{
    var tr = e;
    while (tr.tagName.toLowerCase() != "tr") {
        tr = tr.parentNode;
    } 
    return tr;
}

/*
功  能：获取目标对象所在的表格对象
用  法：$tbl(objForTbl)
参  数：1 对象名称
创建者：Randy
时  间：2006-11-9
*/
function $tbl(e)
{
    var tbl = e;
    while (tbl.tagName.toLowerCase() != "table") {
        tbl = tbl.parentNode;
    } 
    return tbl;
}

function setDisable(e,flag)
{
    var obj = $(e);
    if(obj == null) return;   
        
    flag = flag == null?true:flag;
    obj.disabled = true;    
    if(obj.tagName.toLowerCase() == "a")
    {
        obj.onclick = function()
        {
            return false;
        }
    }   
}

/*
功  能：更新目标DIV的滚动条的位置

用  法：updateScroll(this, 'divHeader')
参  数：1 源DIV对象
        2 目标DIV id
创建者：Justin
时  间：2006-9-14
*/
function updateScroll(divSrcObj, divDestId)
{
	var obj=document.getElementById(divDestId);
	if (obj != null)
	{
	    obj.scrollLeft = divSrcObj.scrollLeft;
	}
}

/*
功　能：设定表格中选中行的背景样式;
用　法：setrowstyle('tableid',this)
参　数：tableid:传入的表格ID或者表格对象;
      trobj:传入的表格行，一般为this;
创建者：Ivan
时  间：2007-01-11
*/
function setrowstyle(tableid,trobj)
{
   var table=$(tableid);
   var bg,tr;
   for (var i=0;i<table.rows.length;i++)
   {       
       tr=table.rows[i];
       if(tr.cells.length>1)
       { 
          bg=tr.cells[1].style.background.toUpperCase(); // 从第二个单元格开始
          if(bg == "#EBF2FC")
          {
             for(var j=1; j<tr.cells.length;j++)
             {
                tr.cells[j].style.background="";
             }
             break;
          }
        } 
     }
    for(var j=1;j<trobj.cells.length;j++) 
    {
        trobj.cells[j].style.background="#EBF2FC";
    }
}

/*
功　能：设定含 间隔行的 表格中选中行的背景样式;
用　法：setrowstyle('tableid',this)
参　数：tableid:传入的表格ID或者表格对象;
      trobj:传入的表格行，一般为this;
创建者：Ivan
时  间：2007-01-11
*/
function SetSpcRowStyle(tableid,trobj)
{
   var table=$(tableid);
   var bg,tr;
   for (var i=0;i<table.rows.length;i++)
   {       
       tr=table.rows[i];
       if(tr.cells.length>1)
       { 
          bg=tr.cells[1].style.background.toUpperCase(); // 从第二个单元格开始
          if(bg == "#EBF2FC")
          {
             for(var j=1; j<tr.cells.length;j++)
             {
                if(i%2==0)
                    tr.cells[j].style.background="none";
                else
                    tr.cells[j].style.background="#F7F8F9";
             }
             break;
          }
        } 
     }
    for(var j=1;j<trobj.cells.length;j++) 
    {
        trobj.cells[j].style.background="#EBF2FC";
    }
}


var flag=false;
function DrawImage(ImgD)
{
    var image=new Image();
    var a = 600;
    image.src=ImgD.src;
    if(image.width>0 && image.height>0)
    {
        flag=true;
        if(image.width>=a)
        {
            ImgD.width=(a-30);
            ImgD.height=(image.height*(a-30))/image.width;
        }
        else
        {
            ImgD.width=image.width;
            ImgD.height=image.height;
        }
    }
}
