// Tab.js
// 2006-09-14

// 切换TAB页
// 参数:index=tab索引值 从0开始
//  count=tab总个数
// 要求:tab的命名格式为:tab_+index
//      content命名格式为:content_+index
function toggle(index, count)
{       
    
    var tab="tab_";
    var content="content_";
    var tabObj, contentObj;
                     
    // tab
    for(var i=0; i<count; i++)
    {
        tabObj=document.getElementById(tab+i);
        tabObj.className="tab_normal";
        //alert(tab+i+"="+tabObj.className);
    }
     
     tabObj=document.getElementById(tab+index);
     tabObj.className="tab_selected";
     
       
    // content            
    for(var i=0; i<count; i++)
    {
        contentObj=document.getElementById(content+i);
        contentObj.style.display="none";
    }
    
    contentObj=document.getElementById(content+index);
    contentObj.style.display="block";
}


//前台文章选项卡式列表新闻
function ExTabNews(TabId)
{
   var newsTabNm="NewsTab";
   var tabContent="TabContent";
   for(var i=0;i< 5;i++)
   {
        $(newsTabNm+i).className="";
        $(tabContent+i).style.display="none";
   }
  
   if(TabId>0)
   {
        $(newsTabNm+TabId).className="tabactive1";
        $(newsTabNm+(parseInt(TabId)-1)).className="tabactive2"; 
   }
   else
   {
         $(newsTabNm+TabId).className="tabactive1";
         $(newsTabNm+TabId).style.backgroundPosition="-1px 0px";//左 上 右 下
   }
    $(tabContent+TabId).style.display="block";
}

//文章列表，最新，热门，推荐选项卡
function SwTab(TabId)
{
   var NewsTab="ArtTab";
   var TabContent="ArtContent";
   try
   {
   for(var i=0;i< 3;i++)
   {
        $(NewsTab+i).className="";       
        $(TabContent+i).style.display="none";
        $(NewsTab+i).style.borderBottom="1px solid #8cbbea";
       if(i==parseInt(TabId))
       {
           $(NewsTab+TabId).className="SepArtTab";
           $(NewsTab+TabId).style.borderBottom="1px solid #eef5fb";
           $(TabContent+TabId).style.display="block";
       } 
   }
   }
   catch(e)
   {
    alert(e.message)
   }
}
