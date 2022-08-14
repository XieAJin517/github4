function SetMenuBg(obj,val)
{
    if(val==1)
    {
        obj.className="MenuMouseOver";
    }
    else
    {
        obj.className="MenuMouseOut";
    }
}

function makevisible(cur,which)
{    
　　if (which==0)    
　　　　cur.filters.alpha.opacity=100;  
　　else    
　　　　cur.filters.alpha.opacity=60;  
}


var flag=false;
function ReSizeImg(ImgD,ImgWidth,ImgHeight)
{
	var image=new Image();
	image.src=ImgD.src;
	if(image.width>0 && image.height>0)
	{
		flag=true;
		if(image.width/image.height>= ImgWidth/ImgHeight)
		{
			if(image.width>ImgWidth)
			{ 
				ImgD.width=ImgWidth;
				ImgD.height=(image.height*ImgWidth)/image.width;
			}
			else
			{
				ImgD.width=image.width; 
				ImgD.height=image.height;
			}
		}
		else
		{
			if(image.height>ImgHeight)
			{ 
				ImgD.height=ImgHeight;
				ImgD.width=(image.width*ImgHeight)/image.height; 
			}
			else
			{
				ImgD.width=image.width; 
				ImgD.height=image.height;
			}
		}
	}	
}

function SetFontSize(val)
{
    var Content=document.getElementById("ContentText");
    var txtFontSize=document.getElementById("txtFontSize");
    var FontSize=parseInt(txtFontSize.value);  
    if(val==1)
    {
        FontSize+=2;
        Content.style.fontSize=FontSize;
    }
    else
    {
        FontSize-=2;
        Content.style.fontSize=FontSize;
    }
    txtFontSize.value=FontSize;
 
}

function ViewImages(url,title)
{
    window.open("ViewImages.aspx?Url=" + url + "&Title=" + title,"ViewImags");
}

function ReImgCode()
{
    var x = new Date();
    var m = x.getMinutes().toString();
    var s = x.getSeconds().toString();
    var imgcode = $("imgVCode");
    imgcode.src = "../Common/ValidationCodeImg.aspx?time=" + m + s;   
}
