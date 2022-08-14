<%@ Page Language="C#"%> 
<%@import Namespace="CuteEditor.ImageEditor"%>

<META Http-Equiv="Cache-Control" Content="no-cache">
<META Http-Equiv="Pragma" Content="no-cache">
<META HTTP-EQUIV="EXPIRES" CONTENT="0"> 

<Script runat = "server">

void Page_Load(object sender, System.EventArgs e)
{
	string filepath = this.Page.Request.QueryString.Get("filepath");
	if (filepath != "")
	{
		filepath=this.Context.Server.MapPath(filepath);
	}
	string drawid = this.Page.Request.QueryString.Get("drawid");
	string action = this.Page.Request.QueryString.Get("action");
	string parameters = this.Page.Request.QueryString.Get("parameters");
	string gid = this.Page.Request.QueryString.Get("gid");
    DrawShow dw = new DrawShow(drawid, filepath, action, parameters, gid);
}
</Script>

