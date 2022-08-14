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
public partial class SysUser : System.Web.UI.Page
{
    UserInfo userinfo = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void WebInit()
    {
        DataSet ds = new ShDept().GetAllData();

    }

    private void BindData()
    {
        DataSet ds = new ShUser().GetDataByID(userinfo.Uid);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataRow dr = ds.Tables[0].Rows[0];
            this.txtUserId.Text = dr[ShUserData.USERID_FIELD].ToString();
            this.txtUserName.Text = dr[ShUserData.USENAME_FIELD].ToString();
            this.txtTel.Text = dr[ShUserData.TEL_FIELD].ToString();
            this.ddlDspt.SelectedValue = dr[ShUserData.DEPT_FIELD].ToString();
        }
    }

    protected void BtnSave_Click(object sender, EventArgs e)
    {

    }
}
