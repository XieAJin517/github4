var oldval;
//事件触发
function TabChange(val)
{
	var tabFirstLeft=$("tabFirstLeft");
	var tabListLeft=$n("tabListLeft");
	var tabListRight=$n("tabListRight");	
	var tabLength=tabListLeft.length-1;
	RestoreTab();
	
	switch(val)
	{
		case 0:
			tabFirstLeft.className="tabLeftFirstOn";
			tabListLeft[val].className="tabStripeOn";
			tabListRight[val].className="tabMiddleOnOff";
			break;
		case tabLength:
			tabListRight[val-1].className="tabMiddleOffOn"
			tabListLeft[val].className="tabStripeOn";
			tabListRight[val].className="tabRightLastOn";
			break;
		default:
			tabListRight[val-1].className="tabMiddleOffOn"
			tabListLeft[val].className="tabStripeOn";
			tabListRight[val].className="tabMiddleOnOff";
			break;
	}
	
	if(oldval!=val)
	{
		GoUrl(val);//回调事件
	}
	oldval=val;
	
}

//选项卡初始化
function RestoreTab()
{
	var tabFirstLeft=$("tabFirstLeft");
	var tabListLeft=$n("tabListLeft");
	var tabListRight=$n("tabListRight");	
	var tabLength=tabListLeft.length-1;
	
	for(var i=0;i<=tabLength;i++)
	{
		tabListLeft[i].className="tabStripeOff";
		tabListRight[i].className="tabMiddleOffOff";
	}
	tabFirstLeft.className="tabLeftFirstOff";
	tabListRight[tabLength].className="tabRightLastOff"	
}

function TabNavigetUrl(Url)
{
    window.top.location.href = Url;
}
