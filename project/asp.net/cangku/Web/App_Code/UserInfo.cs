using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using AcomLb.Model;
using AcomLb.BLL;

/// <summary>
/// UserInfo 的摘要说明
/// </summary>
public class UserInfo
{
    public UserInfo()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    /// <summary>
    /// 用户ID
    /// </summary>
    public int Uid
    {
        get
        {
            object o = HttpContext.Current.Session["Uid"];
            if (o == null || Convert.ToInt32(o) < 1)
            {
                System.Web.Security.FormsAuthentication.SignOut();
                this.ExitSys();
            }
            return Convert.ToInt32(o);
        }
        set
        {
            HttpContext.Current.Session["Uid"] = value;
        }
    }

    /// <summary>
    /// 用户登陆ID
    /// </summary>
    public string UserId
    {
        get
        {
            object o = HttpContext.Current.Session["UserId"];
            if (o == null)
            {
                System.Web.Security.FormsAuthentication.SignOut();
                this.ExitSys();
            }
            return o.ToString();
        }
        set
        {
            HttpContext.Current.Session["UserId"] = value;
        }
    }

    /// <summary>
    /// 用户姓名
    /// </summary>
    public string UserName
    {
        get
        {
            object o = HttpContext.Current.Session["UserName"];
            if (o == null)
            {
                System.Web.Security.FormsAuthentication.SignOut();
                this.ExitSys();
            }
            return o.ToString();
        }
        set
        {
            HttpContext.Current.Session["UserName"] = value;
        }
    }

    /// <summary>
    /// 用户部门ID
    /// </summary>
    public int DeptId
    {
        get
        {
            object o = HttpContext.Current.Session["DeptId"];
            if (o == null || Convert.ToInt32(o) < 1)
            {
                System.Web.Security.FormsAuthentication.SignOut();
                this.ExitSys();
            }
            return Convert.ToInt32(o);
        }
        set
        {
            HttpContext.Current.Session["DeptId"] = value;
        }
    }

    /// <summary>
    /// 用户部门
    /// </summary>
    public string DeptNm
    {
        get
        {
            object o = HttpContext.Current.Session["DeptNm"];
            if (o == null)
            {
                System.Web.Security.FormsAuthentication.SignOut();
                this.ExitSys();
            }
            return o.ToString();
        }
        set
        {
            HttpContext.Current.Session["DeptNm"] = value;
        }
    }

    public bool Online
    {
        get
        {
            object o = HttpContext.Current.Session["Uid"];
            return o == null ? false : true;
        }
    }

    /// <summary>
    /// 检查用户是否登陆
    /// </summary>
    public void ChkUserInfo()
    {
        if (this.Online == false)
        {
            System.Web.Security.FormsAuthentication.SignOut();
            this.ExitSys();
        }
    }

    public void ExitSys()
    {
        HttpContext.Current.Session.Abandon();
        HttpContext.Current.Response.Redirect("Exit.htm", true);
    }

}
//5_1_a_s_p_x.c_o_m
