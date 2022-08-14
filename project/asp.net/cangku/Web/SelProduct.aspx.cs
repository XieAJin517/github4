using System;
using System.Text;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using AcomLb.BLL;
using AcomLb.Components;
using AcomLb.Model;
using AcomLb.Enumerations;
public partial class SelProduct : System.Web.UI.Page
{
    private string SearchStr
    {
        get
        {
            object o = ViewState["SearchStr"];
            return o == null ? string.Empty : o.ToString();
        }
        set { ViewState["SearchStr"] = value; }
    }

    private string OrderBy
    {
        get
        {
            object o = ViewState["OrderBy"];
            return o == null ? string.Empty : o.ToString();
        }
        set { ViewState["OrderBy"] = value; }
    }
    UserInfo userinfo = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            userinfo.ChkUserInfo();
            PageCommon.DdlListBind(this.ddlProClass, EnClassType.Product);
            this.ddlProClass.Items.Insert(0, new ListItem("", "0"));
            BindData();
        }
    }

    private void BindData()
    {
        DataSet ds = new ShProduct().GetProductInfo(this.SearchStr,this.OrderBy);
        this.GridView1.DataSource = ds.Tables[0].DefaultView;
        this.GridView1.DataBind();
    }

    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        string orderStr = " Order By " + e.SortExpression.ToLower();
        if (OrderBy == orderStr)
        {
            if (OrderBy.IndexOf("desc") > 0)
                OrderBy = OrderBy.Replace("desc", "asc");
            else
                OrderBy = OrderBy.Replace("asc", "desc");
        }
        else
            OrderBy = orderStr;
        BindData();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        BindData();
    }

    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        this.SearchStr = string.Empty;
        string strKey = this.txtKeyWord.Text;
        StringBuilder sb = new StringBuilder();
        if (this.ddlProClass.SelectedValue != "0")
            sb.Append(" And ProClass=" + this.ddlProClass.SelectedValue);
        if (this.txtKeyWord.Text != string.Empty)
            sb.AppendFormat(" And (ProName Like '%{0}%' Or Spes Like '%{1}%' Or ProDes Like '%{2}%' Or PyCode Like '%{3}%')", strKey, strKey, strKey, strKey);
        this.SearchStr = sb.ToString();
        BindData();
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridViewRow Gr = this.GridView1.Rows[e.NewSelectedIndex];
        HiddenField hidId = (HiddenField)Gr.FindControl("HidId");
        HyperLink HlProduct = (HyperLink)Gr.FindControl("HlProduct");
        HiddenField hidProPrice = (HiddenField)Gr.FindControl("hidProPrice");
        Jscript.AjaxRunJs(this, string.Format("window.returnValue='{0}$$${1}$$${2}';window.close();"
, hidId.Value, HlProduct.Text, hidProPrice.Value));

    }
}
