using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net;
using System.Text;
using System.IO;

using AcomLb.Enumerations;

namespace AcomLb.Components
{
    /// <summary>
    /// toHtml 的摘要说明
    /// </summary>
    public class toHtml
    {
        public toHtml()
        {
            //
            // TODO: 在此处添加构造函数逻辑
            //
        }

        #region 读取模板
        /// <summary>
        /// 读取模板
        /// </summary>
        /// <param name="templateUrl">模板地址</param>
        /// <param name="coding">编码.如:(utf-8)</param>
        /// <returns>模板内容</returns>
        public static string readTemplate(string templateUrl, EncodeKind encode)
        {
            string tlPath = System.Web.HttpContext.Current.Server.MapPath(templateUrl);
            string coding = GetCode(encode);
            Encoding code = Encoding.GetEncoding(coding);
            StreamReader sr = null;
            string str = null;
            //读取模板内容
            try
            {
                sr = new StreamReader(tlPath, code);
                str = sr.ReadToEnd();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                sr.Close();
            }
            return str;
        }
        #endregion

        #region 生成页面
        /// <summary>
        /// 生成页面
        /// </summary>
        /// <param name="str">文件内容</param>
        /// <param name="htmlFile">文件存放地址</param>
        /// <param name="fileName">文件名</param>
        /// <param name="coding">编码.如:(utf-8)</param>
        /// <returns>文件名</returns>
        public static string createHtml(string str, string htmlFile, string fileName,  EncodeKind encode)
        {
            string coding = GetCode(encode);
            string HtmlDirectory = System.Web.HttpContext.Current.Server.MapPath(htmlFile);
            if (!Directory.Exists(HtmlDirectory))
                Directory.CreateDirectory(HtmlDirectory);

            Encoding code = Encoding.GetEncoding(coding);
            StreamWriter sw = null;
            //写入生成
            try
            {
                sw = new StreamWriter(HtmlDirectory+ fileName, false, code);
                sw.Write(str);
                sw.Flush();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                sw.Close();
            }
            return fileName;
        }
        #endregion

        #region Url生成页面
        /// <summary>
        /// url生成页面
        /// </summary>
        /// <param name="url">url地址</param>
        /// <param name="coding">编码.如:(utf-8)</param>
        /// <param name="htmlFile">文件存放地址</param>
        /// <param name="fileName">文件名</param>
        /// <returns></returns>
        public static string urlToHtml(string url,  EncodeKind encode, string htmlFile, string fileName)
        {
            string coding = GetCode(encode);
            Encoding code = Encoding.GetEncoding(coding);
            StreamReader sr = null;
            StreamWriter sw = null;
            string str = null;

            //读取远程地址
            WebRequest temp = WebRequest.Create(url);
            WebResponse myTemp = temp.GetResponse();
            sr = new StreamReader(myTemp.GetResponseStream(), code);

            //读取页面内容
            try
            {
                sr = new StreamReader(myTemp.GetResponseStream(), code);
                str = sr.ReadToEnd();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                sr.Close();
            }

            //写入生成
            try
            {
                sw = new StreamWriter(System.Web.HttpContext.Current.Server.MapPath(htmlFile) + fileName, false, code);
                sw.Write(str);
                sw.Flush();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                sw.Close();
            }
            return fileName;
        }
        #endregion

        private static string GetCode(EncodeKind code)
        {
            switch (code)
            {
                case EncodeKind.GB2312:
                    return "gb2312";
                case EncodeKind.Utf8:
                    return "utf-8";
                default:
                    return "utf-8";
            }
        }
    }
}