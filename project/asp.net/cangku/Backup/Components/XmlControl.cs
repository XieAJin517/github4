using System;
using System.Data;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using System.IO;

//��Դ��������www.51aspx.com(���������������)

namespace AcomLb.Components
{
    public class XmlControl
    {
        protected string strXmlFile;
        protected XmlDocument objXmlDoc = new XmlDocument();

        public XmlControl(string XmlFile)
        {
            //
            // TODO: ��������뽨�캯���ͳ�����
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
            //�������ݣ�����һ��DataView
            DataSet ds = new DataSet();
            StringReader read = new StringReader(objXmlDoc.SelectSingleNode(XmlPathNode).OuterXml);
            ds.ReadXml(read);
            return ds.Tables[0].DefaultView;

        }


        public void Replace(string XmlPathNode, string Content)
        {
            //���½ڵ���ݡ�
            objXmlDoc.SelectSingleNode(XmlPathNode).InnerText = Content;
        }

        public void Delete(string Node)
        {
            //�h��һ���ڵ㡣
            string mainNode = Node.Substring(0, Node.LastIndexOf("/"));
            objXmlDoc.SelectSingleNode(mainNode).RemoveChild(objXmlDoc.SelectSingleNode(Node));
        }

        public void InsertNode(string MainNode, string ChildNode, string Element, string Content)
        {
            //����һ�ڵ�ʹ˽ڵ�һ���ӽڵ㡣
            XmlNode objRootNode = objXmlDoc.SelectSingleNode(MainNode);
            XmlElement objChildNode = objXmlDoc.CreateElement(ChildNode);
            objRootNode.AppendChild(objChildNode);
            XmlElement objElement = objXmlDoc.CreateElement(Element);
            objElement.InnerText = Content;
            objChildNode.AppendChild(objElement);
        }

        public void InsertElement(string MainNode, string Element, string Attrib, string AttribContent, string Content)
        {
            //����һ�ڵ㣬��һ���ԡ�
            XmlNode objNode = objXmlDoc.SelectSingleNode(MainNode);
            XmlElement objElement = objXmlDoc.CreateElement(Element);
            objElement.SetAttribute(Attrib, AttribContent);
            objElement.InnerText = Content;
            objNode.AppendChild(objElement);
        }

        public void InsertElement(string MainNode, string Element, string Content)
        {
            //����һ�ڵ㣬�������ԡ�
            XmlNode objNode = objXmlDoc.SelectSingleNode(MainNode);
            XmlElement objElement = objXmlDoc.CreateElement(Element);
            objElement.InnerText = Content;
            objNode.AppendChild(objElement);
        }

        public void Save()
        {
            //�����ĵ���
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
