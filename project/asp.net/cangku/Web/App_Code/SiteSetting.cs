using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using AcomLb.Components;
using AcomLb.Enumerations;

/// <summary>
/// SiteSetting 的摘要说明
/// </summary>
public class SiteSetting
{
    public SiteSetting()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    public static string GetBillNo(EnBillType type)
    {
        string First = string.Empty;
        switch (type)
        {
            case EnBillType.StoreIn:
                First = "QI";
                break;
            case EnBillType.StoreOut:
                First = "QO";
                break;
            case EnBillType.StoreBack:
                First = "QB";
                break;
        }
        return First + DateTime.Now.ToString("yyyyMMddHH") + StrHelper.GetNumRandom(4);
    }
}
