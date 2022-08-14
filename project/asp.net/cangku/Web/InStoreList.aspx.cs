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

public partial class InStoreList : System.Web.UI.Page
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
    private string OrderBy
    {
        get
        {
            object o = ViewState["OrderBy"];
            return o == null ? string.Empty : o.ToString();
        }
        set { ViewState["OrderBy"] = value; }
    }
    private int CorpId
    {
        get { return (int)ViewState["CorpId"]; }
        set { ViewState["CorpId"] = value; }
    }
    #endregion

    UserInfo userinfo = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.BillType = (EnBillType)StrHelper.Request("BillType", -1);
            this.CorpId = StrHelper.Request("CorpId", -1);
            Jscript.BindDateCalendar(this.txtStarTm);
            Jscript.BindDateCalendar(this.txtEndTm);
            this.txtTitle.Text = PageCommon.GetBillTitle(this.BillType) + "管理";
            BindData();
        }
    }

    private void BindData()
    {
        BuildSearch();
        DataSet ds = new ShBill().GetBillList(this.BillType, this.SearchStr, this.OrderBy);
        this.GridView1.DataSource = ds.Tables[0].DefaultView;
        this.GridView1.DataBind();
    }

    protected void BtnAdd_Click(object sender, EventArgs e)
    {
      
      string strUrl="";
      switch (this.BillType)
            {
                case EnBillType.StoreIn:
                    strUrl ="InStore.aspx?billType=";
                    break;
                case EnBillType.StoreBack:
                    strUrl = "OutStore.aspx?billType=";
                    break;
                case EnBillType.StoreOut:
                    strUrl ="InStore.aspx?billType=";
                    break;
              }
            
        Response.Redirect(strUrl + ((int)this.BillType).ToString());
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HyperLink hlBillNo = (HyperLink)e.Row.FindControl("hlBillNo");
            ImageButton btnEdit = (ImageButton)e.Row.FindControl("btnEdit");
            ImageButton btnCheck = (ImageButton)e.Row.FindControl("btnCheck");
            DataRowView dv = (DataRowView)e.Row.DataItem;
            hlBillNo.Text = dv[ShBillData.BILLNO_FIELD].ToString();
            switch (this.BillType)
            {
                case EnBillType.StoreIn:
                    hlBillNo.NavigateUrl = string.Format("InStore.aspx?billType={0}&billId={1}", (int)this.BillType, dv[ShBillData.ID_FIELD].ToString());
                    break;
                case EnBillType.StoreBack:
                    hlBillNo.NavigateUrl = string.Format("OutStore.aspx?billType={0}&billId={1}", (int)this.BillType, dv[ShBillData.ID_FIELD].ToString());
                    break;
                case EnBillType.StoreOut:
                    hlBillNo.NavigateUrl = string.Format("InStore.aspx?billType={0}&billId={1}", (int)this.BillType, dv[ShBillData.ID_FIELD].ToString());
                    break;
            }
            
            if ((int)dv[ShBillData.ISCHECK_FIELD] == 1)
            {
                btnEdit.ImageUrl = "~/Images/Discompare.gif";
                btnEdit.Enabled = false;
                btnCheck.ImageUrl = "~/Images/Good.gif";
                btnCheck.Enabled = false;
            }
            else
            {
                btnEdit.ImageUrl = "~/Images/compare.gif";
                btnCheck.ImageUrl = "~/Images/bad.gif";
            }
        }
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        HiddenField HidId = (HiddenField)this.GridView1.Rows[e.NewSelectedIndex].FindControl("HidId");
        if (new ShBill().CheckBill(userinfo.Uid, int.Parse(HidId.Value)))
            BindData();
        else
            Jscript.AjaxAlert(this, "操作失败");
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

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        HiddenField HidId = (HiddenField)this.GridView1.Rows[e.NewEditIndex].FindControl("HidId");
        Response.Redirect(string.Format("InStore.aspx?billType={0}&billId={1}", (int)this.BillType, HidId.Value));
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        BindData();
    }
    private void BuildSearch()
    {
        StringBuilder sb = new StringBuilder();
        if (this.txtBillNo.Text != string.Empty)
            sb.AppendFormat(" And A.BillNo Like '%{0}%'", this.txtBillNo.Text);
        if (this.txtCorp.Text != string.Empty)
            sb.AppendFormat(" And B.CorpName Like '%{0}%'", this.txtCorp.Text);
        if (this.txtProName.Text != string.Empty)
            sb.AppendFormat(" And (Select Count(*) From ShProduct C,ShBillList D Where C.Id=D.ProId And D.BillId=A.Id And  ProName like '%{0}%')>0", this.txtProName.Text);
        if(this.txtBarCode.Text!=string.Empty)
            sb.AppendFormat(" And (Select Count(*) From ShProduct E,ShBillList F Where E.Id=F.ProId And F.BillId=A.Id And  mainbarcode like '%{0}%')>0", this.txtBarCode.Text);
        sb.Append(PageCommon.GetBetweenTm(this.txtStarTm, this.txtEndTm, "A.InTm"));
        if (this.CorpId != -1)
            sb.Append(" And A.InCorp=" + this.CorpId.ToString());
        this.SearchStr = sb.ToString();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        BindData();
    }
}
