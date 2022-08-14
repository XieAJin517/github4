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
//该源码下载自www.51aspx.com(５１ａｓｐｘ．ｃｏｍ)

using AcomLb.Components;

public partial class CommonFrm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int PageType = StrHelper.Request("PageType", -1);
        switch (PageType)
        {
            case 1:
                this.SubFrmSrc.Text = "SelCorp.aspx";
                this.Title = "往来单位选择";
                break;
            case 2:
                this.SubFrmSrc.Text = "SelProduct.aspx";
                this.Title = "产品选择";
                break;
        }
    }
}
