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
public partial class InStore : System.Web.UI.Page
{
    #region 属性
    private int BillId
    {
        get { return Convert.ToInt32(ViewState["BillId"]); }
        set { ViewState["BillId"] = value; }
    }
    private EnBillType BillType
    {
        get { return (EnBillType)ViewState["BillType"]; }
        set { ViewState["BillType"] = value; }
    }
    private int ListCount
    {
        get { return Convert.ToInt32(ViewState["ListCount"]); }
        set { ViewState["ListCount"] = value; }
    } 
    #endregion

    UserInfo userinfo = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {
        SetListRows();
        if (!IsPostBack)
        {
            userinfo.ChkUserInfo();
            this.BillId = StrHelper.Request("billId", -1);
            this.BillType = (EnBillType)StrHelper.Request("BillType", -1);
            WebInit();
            if (this.BillId != -1)
                BindData();
        }
    }

    private void BindData()
    {
        DataSet ds = new ShBill().GetBillById(this.BillId);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataRow dr = ds.Tables[0].Rows[0];
            this.txtCorpAdd.Text = dr[ShBillData.CORPADD_FIELD].ToString();
            this.txtCorpNm.Text = dr[ShBillData.CORPNAME_FIELD].ToString();
            this.txtDspt.Text = dr[ShBillData.DSPT_FIELD].ToString();
            this.txtLinkMan.Text = dr[ShBillData.LINKMAN_FIELD].ToString();
            this.txtBillNo.Text = dr[ShBillData.BILLNO_FIELD].ToString();
            this.hidCorpId.Value = dr[ShBillData.INCORP_FIELD].ToString();
        }
        ProListBind();
    }

    private void ProListBind()
    {
        DataSet ds = new ShBillList().GetBillList(this.BillId);
        this.ListCount = ds.Tables[0].Rows.Count;
        this.GvProList.PageSize = 15;
        this.GvProList.DataSource = ds.Tables[0].DefaultView;
        this.GvProList.DataBind();        
    }

    private void WebInit()
    {
        this.txtCorpNm.Attributes.Add("readonly", "readonly");
        this.txtLinkMan.Attributes.Add("readonly", "readonly");
        this.txtCorpAdd.Attributes.Add("readonly", "readonly");
        this.txtProNm.Attributes.Add("readonly", "readonly");
        this.txtTitle.Text = PageCommon.GetBillTitle(this.BillType) + "编辑";
    }

    #region 序列号录入框状态
    private void SetListRows()
    {
        int proNums;

        ShBillListData shDs = new ShBillListData();
        DataRow dr;
        int k = 0;
        foreach (GridViewRow gr in this.GvProInfo.Rows)
        {
            TextBox txtBarCode1 = (TextBox)gr.FindControl("txtBarCode1");
            TextBox txtBarCode2 = (TextBox)gr.FindControl("txtBarCode2");
            if (txtBarCode1.Text != string.Empty || txtBarCode2.Text != string.Empty)
            {
                ++k;
                dr = shDs.Tables[0].NewRow();
                dr[ShBillListData.MAINBARCODE_FIELD] = txtBarCode1.Text;
                dr[ShBillListData.SUBBARCODE_FIELD] = txtBarCode2.Text;
                shDs.Tables[0].Rows.Add(dr);
            }
        }

        if (int.TryParse(this.txtProNum.Text, out proNums))
        {
            for (int i = 0; i < proNums - k; i++)
            {
                dr = shDs.Tables[0].NewRow();
                shDs.Tables[0].Rows.Add(dr);
            }
            this.GvProInfo.DataSource = shDs.Tables[0].DefaultView;
            this.GvProInfo.DataBind();
        }
    }

    /// <summary>
    /// 回到初始化
    /// </summary>
    private void ProInfoToInit()
    {
        ShBillListData shDs = new ShBillListData();
        DataRow dr = shDs.Tables[0].NewRow();
        shDs.Tables[0].Rows.Add(dr);
        this.GvProInfo.DataSource = shDs.Tables[0].DefaultView;
        this.GvProInfo.DataBind();
    } 
    #endregion

    protected void GvProInfo_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Literal litNumber = (Literal)e.Row.FindControl("litNumber");
            litNumber.Text = Convert.ToString(e.Row.RowIndex + 1);
        }
    }

    #region 数据采集
    /// <summary>
    /// 单据信息
    /// </summary>
    /// <returns></returns>
    private ShBillData BuildBillDs()
    {
        ShBillData ds = new ShBillData();
        DataRow dr = ds.Tables[0].NewRow();
        if (this.BillId != -1)
        {
            dr[ShBillData.ID_FIELD] = this.BillId;
            dr[ShBillData.BILLNO_FIELD] = this.txtBillNo.Text;
        }
        else
            dr[ShBillData.BILLNO_FIELD] = SiteSetting.GetBillNo(this.BillType);
        dr[ShBillData.INCORP_FIELD] = int.Parse(this.hidCorpId.Value);
        dr[ShBillData.INSTF_FIELD] = userinfo.Uid;
        dr[ShBillData.SURESTF_FIELD] = userinfo.Uid;
        dr[ShBillData.INTM_FIELD] = DateTime.Now;
        dr[ShBillData.SURETM_FIELD] = DateTime.Now;
        dr[ShBillData.KIND_FIELD] = (int)this.BillType;
        dr[ShBillData.DSPT_FIELD] = this.txtDspt.Text;
        dr[ShBillData.STOREKIND_FIELD] = userinfo.DeptId;
        dr[ShBillData.CHECKSTF_FIELD] = 0;
        dr[ShBillData.ISCHECK_FIELD] = 0;
        dr[ShBillData.ISSURE_FIELD] = 1;
        dr[ShBillData.ISWAS_FIELD] = 0;
        ds.Tables[0].Rows.Add(dr);
        return ds;
    }

    /// <summary>
    /// 单据详细列表
    /// </summary>
    /// <returns></returns>
    private ShBillListData BuildBillListDs()
    {
        ShBillListData ds = new ShBillListData();
        foreach (GridViewRow gr in this.GvProInfo.Rows)
        {
            TextBox txtBarCode1 = (TextBox)gr.FindControl("txtBarCode1");
            TextBox txtBarCode2 = (TextBox)gr.FindControl("txtBarCode2");
            if (txtBarCode1.Text != string.Empty || txtBarCode2.Text != string.Empty)
            {
                DataRow dr = ds.Tables[0].NewRow();
                dr[ShBillListData.PROID_FIELD] = int.Parse(this.HidProId.Value);
                dr[ShBillListData.PROPRICE_FIELD] = int.Parse(this.txtProPrice.Text);
                dr[ShBillListData.INNUMS_FIELD] = 1;
                dr[ShBillListData.MAINBARCODE_FIELD] = txtBarCode1.Text;
                dr[ShBillListData.SUBBARCODE_FIELD] = txtBarCode2.Text;
                dr[ShBillListData.ADDTIME_FIELD] = DateTime.Now;
                dr[ShBillListData.KIND_FIELD] = (int)this.BillType;
                dr[ShBillListData.ISWAS_FIELD] = 0;
                dr[ShBillListData.FLAG_FIELD] = 0;
                dr[ShBillListData.DSPT_FIELD] = this.txtProDspt.Text;
                ds.Tables[0].Rows.Add(dr);
            }
        }
        return ds;
    } 
    #endregion

    protected void BtnSave_Click(object sender, EventArgs e)
    {
        ShBillData billDs = BuildBillDs();
        ShBillListData listDs = BuildBillListDs();
        string result = string.Empty;
        string strShowStr = string.Empty;
        switch (this.BillType)
        {
            case EnBillType.StoreIn:
                result = new ShBillList().ChkBarCode(listDs);
                break;
            case EnBillType.StoreOut:
                break;
        }
        if (result == string.Empty)
        {
            this.BillId = new ShBill().Save(billDs, listDs);
            this.PopupWin1.Visible = false;
            BindData();
            ProInfoToInit();
            this.txtProNum.Text = "1";
            TextBox txtBarCode1 = (TextBox)this.GvProInfo.Rows[0].FindControl("txtBarCode1");            
            txtBarCode1.Focus();
        }
        else
        {
            TextBox txtBarCode1 = (TextBox)this.GvProInfo.Rows[0].FindControl("txtBarCode1");
            txtBarCode1.Text = string.Empty;
            strShowStr = string.Format("<br>{0} 条形码已存在，不能重复添加！", result);
            PageCommon.ShowMsg(PopupWin1, strShowStr);
            //Jscript.AjaxRunJs(this, string.Format("alert('{0}条形码已存在，不能重复录入'); document.getElementById('GvProInfo$ctl02$txtBarCode1').focus();", result));
            Jscript.AjaxRunJs(this, "document.getElementById('GvProInfo$ctl02$txtBarCode1').focus();");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("InStoreList.aspx?billType=" + ((int)this.BillType).ToString());
    }

    protected void GvProList_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        HiddenField hidListId = (HiddenField)this.GvProList.Rows[e.RowIndex].FindControl("hidListId");
        if (new ShBillList().SetWasById(int.Parse(hidListId.Value)))
            BindData();
        else
            Jscript.AjaxAlert(this, "操作失败");
    }

    protected void GvProList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GvProList.PageIndex = e.NewPageIndex;
        BindData();
    }

    protected void GvProList_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Literal litNum = (Literal)e.Row.FindControl("litNum");
            DataRowView dv = (DataRowView)e.Row.DataItem;
            litNum.Text = Convert.ToString(this.ListCount - (e.Row.RowIndex + this.GvProList.PageIndex * this.GvProList.PageSize));
        }
    }
}
