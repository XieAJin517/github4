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

public partial class CorpEdit : System.Web.UI.Page
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
            CtrolBind();
            this.OpsId = StrHelper.Request("Id", -1);
            if (this.OpsId != -1)
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
        ShCorpData ds = new ShCorp().GetDataByID(this.OpsId);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataRow dr = ds.Tables[0].Rows[0];
            this.txtBusiness.Text = dr[ShCorpData.BUSINESS_FIELD].ToString();
            this.txtCorpAdd.Text = dr[ShCorpData.CORPADD_FIELD].ToString();
            this.txtCorpName.Text = dr[ShCorpData.CORPNAME_FIELD].ToString();
            this.txtDspt.Text = dr[ShCorpData.DSPT_FIELD].ToString();
            this.txtEmail.Text = dr[ShCorpData.EMAIL_FIELD].ToString();
            this.txtFax.Text = dr[ShCorpData.FAX_FIELD].ToString();
            this.txtHandset.Text = dr[ShCorpData.HANDSET_FIELD].ToString();
            this.txtLinkman.Text = dr[ShCorpData.LINKMAN_FIELD].ToString();
            this.txtNumCode.Text=dr[ShCorpData.NUMCODE_FIELD].ToString();
            this.txtPostCode.Text = dr[ShCorpData.POSTCODE_FIELD].ToString();
            this.txtPyCode.Text = dr[ShCorpData.PYCODE_FIELD].ToString();
            this.txtTelephone.Text = dr[ShCorpData.TELEPHONE_FIELD].ToString();
            this.txtWeb.Text = dr[ShCorpData.WEB_FIELD].ToString();
            this.ddlCorpArea.SelectedValue = dr[ShCorpData.CORPAREA_FIELD].ToString();
            this.ddlCorpKind.SelectedValue = dr[ShCorpData.CORPKIND_FIELD].ToString();
            this.ddlCreditLevel.SelectedValue = dr[ShCorpData.CREDITLEVEL_FIELD].ToString();
        }
    }

    private ShCorpData BuildDs()
    {
        ShCorpData ds = new ShCorpData();
        DataRow dr = ds.Tables[0].NewRow();
        if (this.OpsId != -1)
            dr[ShCorpData.ID_FIELD] = this.OpsId;
        dr[ShCorpData.ADDTIME_FIELD] = DateTime.Now;
        dr[ShCorpData.BUSINESS_FIELD] = this.txtBusiness.Text;
        dr[ShCorpData.CORPADD_FIELD] = this.txtCorpAdd.Text;
        dr[ShCorpData.CORPAREA_FIELD] = int.Parse(this.ddlCorpArea.SelectedValue);
        dr[ShCorpData.CORPKIND_FIELD] = int.Parse(this.ddlCorpKind.SelectedValue);
        dr[ShCorpData.CORPNAME_FIELD] = this.txtCorpName.Text;
        dr[ShCorpData.CREDITLEVEL_FIELD] = int.Parse(this.ddlCreditLevel.SelectedValue);
        dr[ShCorpData.DSPT_FIELD] = this.txtDspt.Text;
        dr[ShCorpData.EMAIL_FIELD] = this.txtEmail.Text;
        dr[ShCorpData.FAX_FIELD] = this.txtFax.Text;
        dr[ShCorpData.HANDSET_FIELD] = this.txtHandset.Text;
        dr[ShCorpData.LINKMAN_FIELD] = this.txtLinkman.Text;
        dr[ShCorpData.NUMCODE_FIELD] = this.txtNumCode.Text;
        dr[ShCorpData.POSTCODE_FIELD] = this.txtPostCode.Text;
        if (this.txtPyCode.Text == string.Empty)
            dr[ShCorpData.PYCODE_FIELD] = StrHelper.getSpells(this.txtCorpName.Text).ToLower();
        else
            dr[ShCorpData.PYCODE_FIELD] = this.txtPyCode.Text;
        dr[ShCorpData.STOREKIND_FIELD] = userinfo.DeptId;
        dr[ShCorpData.TELEPHONE_FIELD] = this.txtTelephone.Text;
        dr[ShCorpData.WEB_FIELD] = this.txtWeb.Text;
        dr[ShCorpData.ISWAS_FIELD] = 0;
        ds.Tables[0].Rows.Add(dr);
        return ds;
    }

    protected void BtnSave_Click(object sender, EventArgs e)
    {
        ShCorpData ds = BuildDs();
        if (new ShCorp().Save(ds))
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
