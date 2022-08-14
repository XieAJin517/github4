//------------------------------------------------------------------------------
 // 将XML文件写到后台程序.
 // 下面将创建XML发送和接收函数
// 入口参数:URL   目的地址.
//   SendMessage 发送内容.
//   Sign  是否接收? false 不接收 true 接收
var XMLClass = new XML();
var Url=""
 function sendXML(URL,SendMessage,sign) 
 {
 xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
 xmlhttp.Open("POST",URL,false); 
 xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"); 
 xmlhttp.setRequestHeader("Content-Type","gb2312");
 xmlhttp.send(SendMessage);
 // 测试发送是否成功? 
  if ( xmlhttp.status == 200 ) 
         {  //alert(SendMessage);
             if(!sign)return true;
    else return xmlhttp.responseText;   
         } else
   {
    alert(xmlhttp.status);
   }
 }
//------------------------------------------------ Begin XML Class Define ----------------------------------
 function XML(){}
 XML.prototype.xmlDoc =new ActiveXObject("Microsoft.XMLDOM") ;//CreateObj//
 XML.prototype.InitXML=InitXML;
 //XML.prototype.getFirstChild=getFirstChild;
 //XML.prototype.getLastChild=getLastChild;
 XML.prototype.getChild=getChild;      // 取得节点值
 XML.prototype.getNodeslength=getNodeslength;   // 最得节点下的子节点的个数
 XML.prototype.getNode=getNode;       // 取得指定节点
 XML.prototype.delNode=delNode;       // 删除指定节点,如果节点相同,则删除最前面的节点.
 XML.prototype.getNodeAttrib=getNodeAttrib;    // 取得节点的指定属性值.
 XML.prototype.InsertBeforeChild=InsertBeforeChild;  // 在指定节点之前插入一个节点.
 XML.prototype.InsertChild=InsertChild;     // 在指定节点下插入节点.
 XML.prototype.setAttrib=setAttrib;      //  设置指定属性的值.
 XML.prototype.setNodeValue=setNodeValue;    //  设置指定节点的值.
 XML.prototype.CreateNodeS=CreateNodeS;     //  创建一个指定名的节点．
 XML.prototype.addAttrib=addAttrib;      //  为指定节点添加指定属性，并设置初值.
 XML.prototype.FindString=FindString;     // 在指定节点下查找字符串.
 function InitXML(Obj)
 {
   this.xmlDoc.async="false";
   this.xmlDoc.loadXML(Obj);
   // 添加检测函数.
   if(this.xmlDoc.parseError.errorCode!=0){
    return false;
    }
  }

// 取得节点的值.
 function getChild(xpath)
 {
   var retval = "";
      var value = this.xmlDoc.selectSingleNode(xpath);
      if (value) retval = value.text;
      return retval;
 }

// 取得节点下的子节点个数 
 function getNodeslength(xpath)
 {
   var retval = "";
      var value = this.xmlDoc.selectNodes(xpath);
      if (value) retval = value.length;
      return retval;
    }

// 取得XML中的一个节点.
 function getNode(xpath)
 {  
  return this.xmlDoc.selectSingleNode(xpath); 
 }

// 删除XML中的一个节点.不可删除根节点.
 function delNode(Obj)
 {
 this.xmlDoc.documentElement.removeChild(Obj);
 }
 
// 添加节点,在xpath后添加Obj子节点,xpath必须为根路径后子节点
 function InsertBeforeChild(xpath,Obj)
 {
 Node=this.getNode(xpath.substr(0,xpath.lastIndexOf("/")));
  RefNode=this.getNode(xpath);
 Node.insertBefore(Obj,RefNode);
 }
 
// 在xpath中添加子节点Obj
 function InsertChild(xpath,Obj)
 {  
  Node=this.getNode(xpath);
 Node.appendChild(Obj);
  }
 
// 在xpath下创建一个<Str></Str>节点．
 function CreateNodeS(xpath,Str)
 { 
  NewNode=this.xmlDoc.createNode(1,Str,"");
  this.InsertChild(xpath,NewNode);  
  }
  
// 在xpath下添加属性名为 name 值为 value 的属性.
 function addAttrib(xpath,name,value)
 {
  Node=this.getNode(xpath); 
  objNewAtt=this.xmlDoc.createAttribute(name);
  objNewAtt.text=value;
  Node.attributes.setNamedItem(objNewAtt);  
 }
 
// 取得节点下的属性 attrib
 function getNodeAttrib(xpath,attrib)
 {
  Node=this.getNode(xpath).attributes;
  var i=0;
  while(Node[i]!=null)
  {
   if(Node[i].name==attrib)return Node[i].text;
   i++;
   }
  return null;
  }
 
// 设置指定节点的值.
 function setAttrib(xpath,attrib,value)
 {
  Node=this.getNode(xpath).attributes;
 var i=0;
 while(Node[i]!=null)
 {
  if(Node[i].name==attrib){   
   Node[i].text=value;
   return true;
   }
  i++;
  }
  return false;
 }
 
// 设置指定节点的属性值.
 function setNodeValue(xpath,value)
 {
  Node=this.getNode(xpath);
  //alert(Node.xml);
  if(Node.childNodes[1]==null){
   Node.text=value;
   //alert(Node.xml);
   return true;
  }else return false;
  //if(Node.childNodes[1]==null)
   //return false;
 // else
   //Node.text=value;
  }

// 查找XML中包含Str的所有路径.
// 入口参数: Node   开始的节点
//    xpath  当前节点的路径
//    Str   所要查找的字符串
// 出口参数: n   第n个查找到的节点
//    Result  查找成功的节点数组
// 特别注意:找到的结果是以反向存储在数组中.
// 第一步:如果当前节点下有子节点,那么取出第一个子节点,进入循环.
// 第二步:按XML顺序依次取出子节点
// 第三步:过滤无效子节点.
// 第四步:如果当前子节点属最底层节点,判断当前子节点是否包含了查找的字符串.
// 第五步:否则查找当前子节点的兄弟点.
// 第六步:如果当前子节点是带有孙子的节点,则进入递归.
 function FindString(Node,Str,n,Result)
 { 
 //ss=Node.childNodes;
 var i=0;
 var a="";
 while(Node.childNodes[i]!=null){ 
  a=Node.childNodes[i].nodeName;      // XML中的一个多的节点.名为#text,将它删除.
  if(a=="#text"){i++;continue;}
  n=FindString(Node.childNodes[i],Str,n,Result); // 因为Js不能传地址,那么我们可以将N返回到前面来,这样的结果才是正确的.
  if(Node.childNodes[i].childNodes[1]==null){   // 如果当前节点下无子节点,那么,查找字符串.对查在成功者,加入 Result
   if((Node.childNodes[i].text).indexOf(Str)!=-1){
   Result[n]=Node.childNodes[i];
   n++;
   }
  }  
  i++;  
  }
 return n;
  }
