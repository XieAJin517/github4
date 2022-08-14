function Ajax(OnError,OnState,OnDownloadEnd) 
{ 
    // 错误字符串 
    this.ErrorStr         = null; 
    // 错误事件驱动,当发生错误时触发 
    this.OnError         = OnError; 
    // 状态事件驱动,当状态改变时触发 
    this.OnState         = OnState; 
    // 完成事件驱动,当类操作完成时触发 
    this.OnDownloadEnd     = OnDownloadEnd; 

    // XMLHTTP 发送数据类型 GET 或 POST 
    this.method        = "GET"; 
    // 将要获取的URL地址 
    this.URL        = null; 
    // 指定同步或异步读取方式(true 为异步,false 为同步) 
    this.sync        = true; 
    // 当method 为 POST 时 所要发送的数据 
    this.PostData        = null 
    // 返回读取完成后的数据 
    this.RetData         = null; 

    // 创建XMLHTTP对像 
    this.HttpObj         = this.createXMLHttpRequest(); 
    if(this.HttpObj == null) 
    { 
        // 对像创建失败时中止运行 
        return; 
    } 

    var Obj = this; 
    // 调用事件检测 
    this.HttpObj.onreadystatechange = function() 
    { 
        Ajax.handleStateChange(Obj); 
    } 
} 

// UTF 转入 GB (by:Rimifon) 
Ajax.prototype.UTFTOGB = function(strBody) 
{ 
    var Rec=new ActiveXObject("ADODB.RecordSet"); 
    Rec.Fields.Append("DDD",201,1); 
    Rec.Open(); 
    Rec.AddNew(); 
    Rec(0).AppendChunk(strBody); 
    Rec.Update(); 
    var HTML=Rec(0).Value; 
    Rec.Close(); 
    delete Rec; 
    return(HTML); 
} 

// 创建XMLHTTP对像 
Ajax.prototype.createXMLHttpRequest = function() 
{ 
    if (window.XMLHttpRequest)  
    {  
        //Mozilla 浏览器 
        return new XMLHttpRequest(); 
    } 
    else if (window.ActiveXObject) 
    { 
            var msxmls = new Array('Msxml2.XMLHTTP.5.0','Msxml2.XMLHTTP.4.0','Msxml2.XMLHTTP.3.0','Msxml2.XMLHTTP','Microsoft.XMLHTTP'); 
            for (var i = 0; i < msxmls.length; i++) 
            { 
                    try  
                    { 
                            return new ActiveXObject(msxmls[i]); 
                    }catch (e){} 

        } 
    } 
    this.ErrorStr = "你的浏览器不支持XMLHttpRequest对象．" 
    if(this.OnError) 
    { 
        this.OnError(this.ErrorStr); 
    } 
        return null; 
} 

// 发送HTTP请求 
Ajax.prototype.send = function() 
{ 

    if (this.HttpObj !== null) 
    { 
        this.URL = this.URL + "?t=" + new Date().getTime(); 
        this.HttpObj.open(this.method, this.URL, this.sync); 
        if(this.method.toLocaleUpperCase() == "GET") 
        { 
            this.HttpObj.send(null); 
        } 
        else if(this.method.toLocaleUpperCase() == "POST") 
        { 
            this.HttpObj.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
            this.HttpObj.send(this.PostData); 
        } 
        else 
        { 
            this.ErrorStr = "错误的[method]命令．" 
            if(this.OnError) 
            { 
                this.OnError(this.ErrorStr); 
            } 
            return; 
        } 

        if (this.HttpObj.readyState == 4) 
        { 
            // 判断对象状态 
                    if (this.HttpObj.status == 200)  
                    {  
                this.RetData = this.UTFTOGB(this.HttpObj.responseBody); 
                if(this.OnDownloadEnd) 
                { 
                    this.OnDownloadEnd(this.RetData); 
                } 
                            return; 
                    }  
            else  
            {  
                this.ErrorStr = "您所请求的页面有异常．" 
                if(this.OnError) 
                { 
                    this.OnError(this.ErrorStr); 
                } 
                return; 
            } 
        } 

    } 

} 

// 事件检测 
Ajax.handleStateChange = function(Obj) 
{ 
    if(Obj.OnState) 
    { 
        Obj.OnState(Obj.HttpObj.readyState); 
    } 

    if (Obj.HttpObj.readyState == 4) 
    { 
        // 判断对象状态 
                if (Obj.HttpObj.status == 200)  
                {  
            Obj.RetData = Obj.UTFTOGB(Obj.HttpObj.responseBody); 
            if(Obj.OnDownloadEnd) 
            { 
                Obj.OnDownloadEnd(Obj.RetData); 
            } 
                        return; 
                }  
        else  
        {  
            Obj.ErrorStr = "您所请求的页面有异常．" 
            if(Obj.OnError) 
            { 
                Obj.OnError(Obj.ErrorStr); 
            } 
            return; 
        } 
    } 
} 


// 错误回调事件函数 
function EventError(strValue) 
{ 
    document.getElementById("Error").innerHTML = strValue; 
} 

// 状态回调事件函数 
function EventState(strValue) 
{ 
    var strState = null; 
    switch (strValue) 
    { 
           case 0: 
        strState = "未初始化..."; 
        break; 

           case 1: 
        strState = "开始读取数据..."; 
        break; 

           case 2: 
        strState = "读取数据..."; 
        break; 

           case 3: 
        strState = "读取数据中..."; 
        break; 

           case 4: 
        strState = "读取完成..."; 
        break; 

           default:  
        strState = "未初始化..."; 
        break; 
    } 
    document.getElementById("State").innerHTML = strState; 
} 

// 完成回调事件函数 
function EventDownloadEnd(strValue) 
{ 
    document.getElementById("DownloadEnd").innerHTML = strValue; 
} 


// 初始化Ajax对像,引入事件回调函数 
var A1 = new Ajax(EventError,EventState,EventDownloadEnd); 
// 指定method数据发送类型 
A1.method = "GET"; 
// 指定URL地址 
A1.URL = "http://www.acom.com.cn" 
// 指定为异步处理 
A1.sync = true; 
//发送请求 
A1.send(); 