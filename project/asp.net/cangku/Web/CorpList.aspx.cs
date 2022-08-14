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

public partial class CorpList : System.Web.UI.Page
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
            CtrolBind();
            BindData();
        }
    }

    private void CtrolBind()
    {
        PageCommon.DictIntBind(this.ddlCorpArea, EnDictKind.CorpArea);
        PageCommon.DictIntBind(this.ddlCorpKind, EnDictKind.CorpKind);
        PageCommon.DictIntBind(this.ddlCreditLevel, EnDictKind.CreditLevel);
    }

    private void BindData()
    {
        DataSet ds = new ShCorp().GetList(this.SearchStr,this.OrderBy);
        this.GridView1.DataSource = ds.Tables[0].DefaultView;
        this.GridView1.DataBind();
    }

    protected void BtnFind_Click(object sender, EventArgs e)
    {
        this.SearchStr = string.Empty;
        string strKey=this.txtKeyWord.Text;
        StringBuilder sb=new StringBuilder();
        if (this.ddlCorpArea.SelectedValue != "0")
            sb.Append(" And CorpArea=" + this.ddlCorpArea.SelectedValue);
        if (this.ddlCorpKind.SelectedValue != "0")
            sb.Append(" And CorpKind=" + this.ddlCorpKind.SelectedValue);
        if (this.ddlCreditLevel.SelectedValue != "0")
            sb.Append(" And CreditLevel=" + this.ddlCreditLevel.SelectedValue);
        if (strKey != string.Empty)
            sb.AppendFormat(" And (CorpName Like '%{0}%' Or Linkman Like '%{1}%' Or Telephone Like '%{2}%' Or CorpAdd Like '%{3}%' Or Handset Like '%{4}%' )", strKey, strKey, strKey, strKey, strKey);
        this.SearchStr = sb.ToString();
        BindData();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        BindData();
    }

    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        string orderStr =" Order By " + e.SortExpression.ToLower();
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

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        HiddenField hidId = (HiddenField)this.GridView1.Rows[e.RowIndex].FindControl("HidId");
        if (new ShCorp().SetWasById(int.Parse(hidId.Value)))
            Jscript.AjaxAlert(this, "删除成功");
        else
            Jscript.AjaxAlert(this, "删除失败");
        BindData();
    }
}
