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

using AcomLb.BLL;
using AcomLb.Components;
using AcomLb.Model;
using AcomLb.Enumerations;

public partial class InStoreStat : System.Web.UI.Page
{
    #region 属性
    private EnBillType BillType
    {
        get { return (EnBillType)ViewState["BillType"]; }
        set { ViewState["BillType"] = value; }
    }
    private string SearchStr
    {
        get
        {
            object o = ViewState["SearchStr"];
            return o == null ? string.Empty : o.ToString();
        }
        set { ViewState["SearchStr"] = value; }
    }   
    #endregion
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.BillType = (EnBillType)StrHelper.Request("BillType", -1);
            this.txtTitle.Text = PageCommon.GetBillTitle(this.BillType) + "统计";
            Jscript.BindDateCalendar(this.txtStarTm);
            Jscript.BindDateCalendar(this.txtEndTm);
            BindData();
        }
    }

    private void BindData()
    {
        DataSet ds = new ShBill().GetBillList(this.BillType, this.SearchStr);
        this.GridView1.DataSource = ds.Tables[0].DefaultView;
        this.GridView1.DataBind();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HyperLink hlShow = (HyperLink)e.Row.FindControl("hlShow");
            DataRowView dv = (DataRowView)e.Row.DataItem;
            hlShow.NavigateUrl = string.Format("InStoreList.aspx?billType={0}&CorpId={1}", (int)this.BillType, dv[ShBillData.INCORP_FIELD]);
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        this.SearchStr = PageCommon.GetBetweenTm(this.txtStarTm, this.txtEndTm, "InTm");
        BindData();
    }
}
