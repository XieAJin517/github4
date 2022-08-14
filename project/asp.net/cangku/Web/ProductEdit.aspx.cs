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

using AcomLb.Components;
using AcomLb.Enumerations;
using AcomLb.BLL;
using AcomLb.Model;

public partial class ProductEdit : System.Web.UI.Page
{
    private int OpsId
    {
        get { return (int)ViewState["OpsId"]; }
        set { ViewState["OpsId"] = value; }
    }
    UserInfo userinfo = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            userinfo.ChkUserInfo();
            PageCommon.DdlListBind(this.ddlProClass, EnClassType.Product);
            this.OpsId = StrHelper.Request("Id", -1);
            if (this.OpsId != -1)
                BindData();
        }
    }

    private void BindData()
    {
        ShProductData ds = new ShProduct().GetDataByID(this.OpsId);
        if(ds.Tables[0].Rows.Count>0)
        {
            DataRow dr=ds.Tables[0].Rows[0];
            this.txtNumCode.Text=dr[ShProductData.NUMCODE_FIELD].ToString();
            this.txtPayCode.Text=dr[ShProductData.PYCODE_FIELD].ToString();
            this.txtPriceNum.Text=dr[ShProductData.PROPRICE_FIELD].ToString();
            this.txtProName.Text=dr[ShProductData.PRONAME_FIELD].ToString();
            this.txtSpes.Text=dr[ShProductData.SPES_FIELD].ToString();
            this.ddlProClass.SelectedValue=dr[ShProductData.PROCLASS_FIELD].ToString();
            this.ddlUnit.SelectedValue=dr[ShProductData.UNIT_FIELD].ToString();
            this.Editor1.Text=dr[ShProductData.PRODES_FIELD].ToString();
        }
    }

    private ShProductData BuildDs()
    {
        ShProductData ds = new ShProductData();
        DataRow dr = ds.Tables[0].NewRow();
        if (this.OpsId != -1)
            dr[ShProductData.ID_FIELD] = this.OpsId;
        dr[ShProductData.NUMCODE_FIELD] = this.txtNumCode.Text;
        if (this.txtPayCode.Text == string.Empty)
            dr[ShProductData.PYCODE_FIELD] = StrHelper.getSpells(this.txtProName.Text);
        else
            dr[ShProductData.PYCODE_FIELD] = this.txtPayCode.Text;
        dr[ShProductData.PRONAME_FIELD] = this.txtProName.Text;
        dr[ShProductData.PROCLASS_FIELD] = int.Parse(this.ddlProClass.SelectedValue);
        dr[ShProductData.PROPRICE_FIELD] = this.txtPriceNum.Text == string.Empty ? 0 : int.Parse(this.txtPriceNum.Text);
        dr[ShProductData.SPES_FIELD]=this.txtSpes.Text;
        dr[ShProductData.UNIT_FIELD] = this.ddlUnit.SelectedValue;
        dr[ShProductData.PRODES_FIELD] = this.Editor1.Text;
        dr[ShProductData.OPSTF_FIELD] = userinfo.Uid;
        dr[ShProductData.ADDTIME_FIELD] = DateTime.Now;
        dr[ShProductData.ISWAS_FIELD] = 0;
        dr[ShProductData.STOREKIND_FIELD] = userinfo.DeptId;
        ds.Tables[0].Rows.Add(dr);
        return ds;
    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        ShProductData ds = BuildDs();
        if (new ShProduct().Save(ds))
        {
            if (this.OpsId == -1)
                Jscript.AjaxAlertAndLocationHref(this, "保存成功，确定后继续添加", Request.Url.ToString());
            else
            {
                Jscript.AjaxAlert(this, "保存成功");
                BindData();
            }
        }
        else
            Jscript.AjaxAlert(this, "保存失败");
    }
}
