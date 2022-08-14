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
using System.IO;

using AcomLb.BLL;
using AcomLb.Components;
using AcomLb.Model;
using AcomLb.Enumerations;

public partial class DataBack : System.Web.UI.Page
{
    UserInfo userinfo = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        #region 页面数据初始化
        this.BtnSave.Attributes.Add("onclick", "return ChkInput()");
        DataSet ds = new ShDataBack().GetAllData();
        this.GvDept.DataSource = ds.Tables[0].DefaultView;
        this.GvDept.DataBind();
        #endregion
    }


    #region 删除操作
    protected void GvDept_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label LabDataName = (Label)this.GvDept.Rows[e.RowIndex].FindControl("LabDataName");
        
        int DelID = Convert.ToInt32(GvDept.DataKeys[e.RowIndex].Values[0]);
        try
        {
            FileInfo fi = new FileInfo(Server.MapPath("~/DataBack/" + LabDataName.Text));
            fi.Delete();
            Jscript.AjaxAlert(this, "删除成功");
        }
        catch
        {
            Jscript.AjaxAlert(this, "系统没有对DataBack目录内的文件删除权限或备份文件不存在！文件删除失败！");
        }
        finally
        {
            new ShDataBack().DeleteById(DelID);
        }

        BindData();
    }
    #endregion

    #region 备份操作
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        string FileName = "";
        string PathFileName = "";

        if (string.IsNullOrEmpty(this.txtDataName.Text))
            FileName = StrHelper.GetRamCode();
        else
            FileName = this.txtDataName.Text;

        PathFileName = string.Format("{0}/{1}.bak", Server.MapPath("~/DataBack"), FileName);
        if (new ShDataBack().SetDataBack(PathFileName, FileName))
        {
            Jscript.AjaxAlert(this, "数据库备份成功");
            this.txtDataName.Text = "";
        }
        else
        {
            Jscript.AjaxAlert(this, "数据库备份失败");
        }
        BindData();
    }
    #endregion


    protected void GvDept_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        HyperLink LnkDownLoad = (HyperLink)e.Row.FindControl("LnkDownLoad");
        string url = "~/DataBack/{0}.bak";
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView dv = (DataRowView)e.Row.DataItem;
            LnkDownLoad.Text = dv[ShDataBackData.DATANAME_FIELD].ToString();
            LnkDownLoad.NavigateUrl = "~/DataBack/" + dv[ShDataBackData.DATANAME_FIELD].ToString();
        }
    }
}
