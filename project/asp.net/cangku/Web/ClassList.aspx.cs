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
using AcomLb.BLL;
using AcomLb.Model;

public partial class ClassList : System.Web.UI.Page
{
    UserInfo userinfo = new UserInfo();

    #region ClassKind属性
    protected int ClassKind
    {
        get{ return (int)ViewState["ClassKind"]; }
        set{ViewState["ClassKind"] = value; }
    }
    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            userinfo.ChkUserInfo();
            this.ClassKind = StrHelper.Request("ClassKind", -1);
            BindData();
        }
    }

    private void BindData()
    {
        #region
        this.btnAdd.Attributes.Add("onclick", "return ChkInput()");
        DataSet ds = new ShClass().GetClassList(this.ClassKind);

        this.rptMenuList.DataSource = ds.Tables[0].DefaultView;
        this.rptMenuList.DataBind();

        this.DdlMenu.Items.Clear();
        this.DdlMenu.Items.Add(new ListItem("添加为根菜单", "0"));
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            int ClassTj = Convert.ToInt32(dr[ShClassData.CLASSTJ_FIELD]);
            string ClassId = dr[ShClassData.CLASSID_FIELD].ToString().Trim();
            string ClassName = dr[ShClassData.CLASSNAME_FIELD].ToString().Trim();

            if (ClassTj == 1)
            {
                this.DdlMenu.Items.Add(new ListItem(ClassName, ClassId));

            }
            else
            {
                ClassName = "├  " + ClassName;
                ClassName = StrHelper.StringOfChar(ClassTj - 1, "　　") + ClassName;
                this.DdlMenu.Items.Add(new ListItem(ClassName, ClassId));
            }
        }
        #endregion
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        ShClassData ds = new ShClassData();
        DataRow dr = ds.Tables[0].NewRow();
        string ClassId = string.IsNullOrEmpty(this.HidId.Value) ? StrHelper.GetRamCode() : this.HidClassId.Value;
        string ClassList = string.Empty;                                            //栏目包含列表
        string ClassPre = this.DdlMenu.SelectedValue.Trim();            //上一级目录
        int ClassTj = 0;

        if (ClassPre == "0")
        {
            ClassList = ClassId + ",";
            ClassTj = 1;
        }
        else
        {
            DataSet ClassDs = new ShClass().GetClassListByClassId(ClassPre);
            if (ClassDs.Tables[0].Rows.Count > 0)
            {
                DataRow ClassDr = ClassDs.Tables[0].Rows[0];
                ClassList = ClassDr[ShClassData.CLASSLIST_FIELD].ToString().Trim() + ClassId + ",";
                ClassTj = (int)ClassDr[ShClassData.CLASSTJ_FIELD] + 1;
            }
        }
        if (!string.IsNullOrEmpty(this.HidId.Value))
            dr[ShClassData.ID_FIELD] = int.Parse(this.HidId.Value);

        dr[ShClassData.CLASSID_FIELD] = ClassId;
        dr[ShClassData.CLASSKIND_FIELD] = this.ClassKind;
        dr[ShClassData.CLASSLIST_FIELD] = ClassList;
        dr[ShClassData.CLASSNAME_FIELD] = this.txtClassName.Text.Trim();
        dr[ShClassData.CLASSORDER_FIELD] = 0;
        dr[ShClassData.CLASSPRE_FIELD] = ClassPre;
        dr[ShClassData.CLASSTJ_FIELD] = ClassTj;
        dr[ShClassData.STOREKIND_FIELD] = userinfo.DeptId;
        ds.Tables[0].Rows.Add(dr);
        if (new ShClass().Save(ds))
        {
            this.HidId.Value = string.Empty;
            this.HidClassId.Value = string.Empty;
            this.txtClassName.Text = string.Empty;
            BindData();
        }
        else
            Jscript.AjaxAlert(this, "操作失败");
    }

    protected void rptMenuList_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        HiddenField txtClassId = (HiddenField)e.Item.FindControl("txtClassId");
        HiddenField txtId = (HiddenField)e.Item.FindControl("txtId");
        Label LabClassNm = (Label)e.Item.FindControl("LabClassNm");
        DropDownList ddlClassImg = (DropDownList)e.Item.FindControl("ddlClassImg");
        switch (e.CommandName.ToLower())
        {
            case "btnedit":
                this.txtClassName.Text = LabClassNm.Text;
                this.HidId.Value = txtId.Value;
                this.HidClassId.Value = txtClassId.Value;
                try
                {
                    this.DdlMenu.SelectedValue = new ShClass().GetPreClassId(txtClassId.Value);
                }
                catch { }
                break;
            case "btndelete":
                if (new ShClass().DeleteById(int.Parse(txtId.Value)))
                    BindData();
                else
                    Jscript.AjaxAlert(this, "删除操作失败");
                break;
        }
        
    }
    protected void rptMenuList_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
        {
            Literal LitFirst = (Literal)e.Item.FindControl("LitFirst");
            Literal LitClassLnk = (Literal)e.Item.FindControl("LitClassLnk");
            Literal LitClassImg = (Literal)e.Item.FindControl("LitClassImg");
            Label LabClassNm = (Label)e.Item.FindControl("LabClassNm");
            DropDownList ddlClassImg = (DropDownList)e.Item.FindControl("ddlClassImg");

            string LitStyle = "<span style='width:{0}px;text-align:right;'>{1}{2}</span>";
            string LitImg1 = "<img src='images/tree_folder4.gif'>";
            string LitImg2 = "<img src='images/tree_folder3.gif'>";
            string LitImg3 = "<img src='images/tree_line1.gif'>";

            DataRowView drv = (DataRowView)e.Item.DataItem;
            int ClassTj = Convert.ToInt32(drv[ShClassData.CLASSTJ_FIELD]);

            if (ClassTj == 1)
            {
                LabClassNm.Font.Bold = true;
                LitFirst.Text = LitImg1;
            }
            else
                LitFirst.Text = string.Format(LitStyle, ClassTj * 30, LitImg3, LitImg2);
        }
    }
}
