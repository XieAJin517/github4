using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using System.IO;

//该源码下载自www.51aspx.com(５１ａｓｐｘ．ｃｏｍ)

namespace AcomLb.Components
{
    public class XmlControl
    {
        protected string strXmlFile;
        protected XmlDocument objXmlDoc = new XmlDocument();

        public XmlControl(string XmlFile)
        {
            //
            // TODO: 在这里加入建造函数和程序码
            //
            try
            {
                objXmlDoc.Load(XmlFile);
            }
            catch (System.Exception ex)
            {
                throw ex;
            }
            strXmlFile = XmlFile;
        }

        public DataView GetData(string XmlPathNode)
        {
            //查找数据，返回一个DataView
            DataSet ds = new DataSet();
            StringReader read = new StringReader(objXmlDoc.SelectSingleNode(XmlPathNode).OuterXml);
            ds.ReadXml(read);
            return ds.Tables[0].DefaultView;

        }


        public void Replace(string XmlPathNode, string Content)
        {
            //更新节点內容。
            objXmlDoc.SelectSingleNode(XmlPathNode).InnerText = Content;
        }

        public void Delete(string Node)
        {
            //刪除一个节点。
            string mainNode = Node.Substring(0, Node.LastIndexOf("/"));
            objXmlDoc.SelectSingleNode(mainNode).RemoveChild(objXmlDoc.SelectSingleNode(Node));
        }

        public void InsertNode(string MainNode, string ChildNode, string Element, string Content)
        {
            //插入一节点和此节点一个子节点。
            XmlNode objRootNode = objXmlDoc.SelectSingleNode(MainNode);
            XmlElement objChildNode = objXmlDoc.CreateElement(ChildNode);
            objRootNode.AppendChild(objChildNode);
            XmlElement objElement = objXmlDoc.CreateElement(Element);
            objElement.InnerText = Content;
            objChildNode.AppendChild(objElement);
        }

        public void InsertElement(string MainNode, string Element, string Attrib, string AttribContent, string Content)
        {
            //插入一节点，带一属性。
            XmlNode objNode = objXmlDoc.SelectSingleNode(MainNode);
            XmlElement objElement = objXmlDoc.CreateElement(Element);
            objElement.SetAttribute(Attrib, AttribContent);
            objElement.InnerText = Content;
            objNode.AppendChild(objElement);
        }

        public void InsertElement(string MainNode, string Element, string Content)
        {
            //插入一节点，不带属性。
            XmlNode objNode = objXmlDoc.SelectSingleNode(MainNode);
            XmlElement objElement = objXmlDoc.CreateElement(Element);
            objElement.InnerText = Content;
            objNode.AppendChild(objElement);
        }

        public void Save()
        {
            //保存文档。
            try
            {
                objXmlDoc.Save(strXmlFile);
            }
            catch (System.Exception ex)
            {
                throw ex;
            }
            objXmlDoc = null;
        }
    }
}
