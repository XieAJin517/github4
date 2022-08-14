using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
//5_1_a_s_p_x.c_o_m

using AcomLb.Model;
using AcomLb.Components;
using AcomLb.BLL;
using AcomLb.Enumerations;

/// <summary>
/// PageCommon 的摘要说明
/// </summary>
public class PageCommon
{
    public PageCommon()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    #region 菜单列表
    /// <summary>
    ///  菜单列表绑定
    /// </summary>
    /// <param name="DdlList">DropDownList控件</param>
    /// <param name="ClassDs">Dataset</param>
    public static void DdlListBind(DropDownList DdlList, EnClassType ClassType)
    {
        DataSet ClassDs = new ShClass().GetClassList((int)ClassType);
        DdlList.Items.Clear();
        foreach (DataRow dr in ClassDs.Tables[0].Rows)
        {
            int ClassTj = Convert.ToInt32(dr[ShClassData.CLASSTJ_FIELD]);
            string ClassId = dr[ShClassData.ID_FIELD].ToString();
            string ClassName = dr[ShClassData.CLASSNAME_FIELD].ToString().Trim();

            if (ClassTj == 1)
            {
                DdlList.Items.Add(new ListItem(ClassName, ClassId));

            }
            else
            {
                ClassName = "├  " + ClassName;
                ClassName = StrHelper.StringOfChar(ClassTj - 1, "　　") + ClassName;
                DdlList.Items.Add(new ListItem(ClassName, ClassId));
            }
        }
    }
    #endregion

    public static void DictIntBind(System.Web.UI.WebControls.DropDownList ddlDict, EnDictKind kind)
    {
        ShDictData ds = new ShDict().GetDataByKind(kind);
        ddlDict.DataSource = ds.Tables[0].DefaultView;
        ddlDict.DataTextField = ShDictData.WORDNAME_FIELD;
        ddlDict.DataValueField = ShDictData.INTVALUE_FIELD;
        ddlDict.DataBind();
        ddlDict.Items.Insert(0, new ListItem("", "0"));
    }

    public static void DictStrBind(System.Web.UI.WebControls.DropDownList ddlDict, EnDictKind kind)
    {
        ShDictData ds = new ShDict().GetDataByKind(kind);
        ddlDict.DataSource = ds.Tables[0].DefaultView;
        ddlDict.DataTextField = ShDictData.WORDNAME_FIELD;
        ddlDict.DataValueField = ShDictData.STRVALUE_FIELD;
        ddlDict.DataBind();
        ddlDict.Items.Insert(0, new ListItem("", "0"));
    }

    public static string GetBillTitle(EnBillType BillType)
    {
        string title = string.Empty;
        switch (BillType)
        {
            case EnBillType.StoreIn:
                title = "入库单";
                break;
            case EnBillType.StoreOut:
                title = "出库单";
                break;
            case EnBillType.StoreBack:
                title = "退货单";
                break;
        }
        return title;
    }

    #region 得到区间日期
    /// <summary>
    /// 得到区间日期
    /// </summary>
    /// <param name="txtStartTm">开始时间</param>
    /// <param name="txtEndTm">结束时间</param>
    /// <param name="FieldNm">时间字段</param>
    /// <returns></returns>
    public static string GetBetweenTm(TextBox txtStartTm, TextBox txtEndTm, string FieldNm)
    {
        if (txtStartTm.Text == string.Empty && txtEndTm.Text == string.Empty)
            return string.Empty;
        string ReturnStr = "";
        if (txtStartTm.Text == string.Empty && txtEndTm.Text != string.Empty)
        {
            ReturnStr = string.Format(" And {0} <= '{1}' ", FieldNm, txtEndTm.Text);
        }
        else if (txtStartTm.Text != string.Empty && txtEndTm.Text == string.Empty)
        {
            ReturnStr = string.Format(" And  {0} >= '{1}' ", FieldNm, txtStartTm.Text);
        }
        else if (txtStartTm.Text != string.Empty && txtEndTm.Text != string.Empty)
        {
            ReturnStr = string.Format(" And  {0} >='{1}' and {2} <='{3}' ", FieldNm, txtStartTm.Text, FieldNm, txtEndTm.Text);
        }
        return ReturnStr;
    }
    #endregion

    public static void ShowMsg(EeekSoft.Web.PopupWin PopupWin1, string Message)
    {
        //设置为默认的消息窗口 
        PopupWin1.ActionType = EeekSoft.Web.PopupAction.MessageWindow;
        //设置窗口的标题，消息文字 
        PopupWin1.Title = "警告！";
        PopupWin1.Message = Message;
        PopupWin1.Text = Message;
        //设置颜色风格 
        PopupWin1.ColorStyle = EeekSoft.Web.PopupColorStyle.Blue;
        //设置窗口弹出和消失的时间 
        PopupWin1.HideAfter = 3000;
        PopupWin1.ShowAfter = 100;
        PopupWin1.Visible = true;
    }

}
