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
//下载于51aspx.com
public partial class LoginPage : System.Web.UI.Page
{
    UserInfo userinfo = new UserInfo();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.Login1.Focus();
        }        
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string userId = StrHelper.ConvertSql(this.Login1.UserName);
        string passWd = StrHelper.EncryptPassword(StrHelper.ConvertSql(this.Login1.Password), StrHelper.PasswordType.MD5);

        ShUserData ds = new ShUser().GetUserInfo(userId, passWd);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataRow dr = ds.Tables[0].Rows[0];
            userinfo.Uid = (int)dr[ShUserData.ID_FIELD];
            userinfo.UserId = dr[ShUserData.USERID_FIELD].ToString();
            userinfo.UserName = dr[ShUserData.USENAME_FIELD].ToString();
            userinfo.DeptId = (int)dr[ShUserData.DEPT_FIELD];
            userinfo.DeptNm = dr[ShUserData.DEPTNAME_FIELD].ToString();
            FormsAuthentication.SetAuthCookie(userinfo.UserId, false);
            FormsAuthentication.RedirectFromLoginPage(userinfo.UserId, false);
        }
        else
        {
            Jscript.AjaxAlert(this, "登陆失败，用户名或密码错误！");
        }
    }
}
