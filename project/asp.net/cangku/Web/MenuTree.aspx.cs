using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml;

public partial class Admin_MenuTree : System.Web.UI.Page
{
    UserInfo userinfo = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.Page.EnableViewState = false;
            userinfo.ChkUserInfo();
            TreeInit();
        }
    }

    private void TreeInit()
    {
        this.TreeView1.Nodes.Clear();
        string TreeUrl = Server.MapPath("Menu.xml");

        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.Load(TreeUrl);
        LoadRootNode(xmlDoc.DocumentElement);
       // this.TreeView1.ExpandAll();
    }

    private void LoadRootNode(XmlNode xmlNode)
    {
        TreeNode node;

        foreach (XmlElement xe in xmlNode.ChildNodes)
        {
            node = new TreeNode();
            node.Text = xe.GetAttribute("Text");
            node.ImageUrl = xe.GetAttribute("ImageUrl");
            string url = xe.GetAttribute("NavigateUrl");
            string Expand = xe.GetAttribute("Expand");

            if (string.IsNullOrEmpty(url))
            {                
                node.SelectAction = TreeNodeSelectAction.Expand;
                if (Expand == "true")
                {
                    node.ExpandAll();
                }
            }
            else
            {
                node.NavigateUrl = url;
                node.SelectAction = TreeNodeSelectAction.SelectExpand;                
            }
            this.TreeView1.Nodes.Add(node);
            if (xe.ChildNodes.Count > 0) // 递归加载
            {
                LoadFunNode(node, xe);
            }
        }
    }

    private void LoadFunNode(TreeNode treeNode, XmlNode xmlNode)
    {
        TreeNode node;

        foreach (XmlElement xe in xmlNode.ChildNodes)
        {
            node = new TreeNode();
            node.Text = xe.GetAttribute("Text");
            node.ImageUrl = xe.GetAttribute("ImageUrl");
            string Expand = xe.GetAttribute("Expand");
            if (Expand == "true")
            {
                node.ExpandAll();
            }
            string url = xe.GetAttribute("NavigateUrl");

            if (string.IsNullOrEmpty(url)) 
            {
                node.SelectAction = TreeNodeSelectAction.Expand;
            }
            else 
            {
                node.SelectAction = TreeNodeSelectAction.Select;
                TreeNode patNode = treeNode;

                while (patNode.Parent != null)
                {
                    patNode = patNode.Parent;
                }

                node.Text = xe.GetAttribute("Text");
                node.NavigateUrl = xe.GetAttribute("NavigateUrl");
                node.ImageUrl = xe.GetAttribute("ImageUrl");
            }

            treeNode.ChildNodes.Add(node);

            if (xe.ChildNodes.Count > 0) // 递归加载
            {
                LoadFunNode(node, xe);
            }
           
        }
        
    }

}
