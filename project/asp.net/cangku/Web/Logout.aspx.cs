
//////////////////////////////////////////////////////////////////////////
// 文件名:Logout.cs
// 创建人:Justin
// 创建日期:
// 描述:
//	 注销登录(退出)
// 修改日志:
//	
// 版权:广州麦德医像科技有限公司(c)2006-2007
//////////////////////////////////////////////////////////////////////////

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


public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
        // 清空会话
        Session.Clear();
        Session.Abandon();        
        FormsAuthentication.SignOut();
        Response.Redirect("exit.htm");
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Desktop.aspx", true);
    }
}
