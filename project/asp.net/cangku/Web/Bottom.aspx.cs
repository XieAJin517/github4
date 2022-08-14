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

public partial class Admin_Bottom : System.Web.UI.Page
{
    UserInfo userinfo = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        this.lblWeek.Text = "(" + StrHelper.GetChineseWeek(DateTime.Now) + ")";
        lblUserId.Text = userinfo.UserId.ToString();
        lblDept.Text = userinfo.DeptNm.ToString();       
    }
}
