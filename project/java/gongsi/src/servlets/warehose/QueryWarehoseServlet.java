package servlets.warehose;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Warehose;
import dao.WarehoseDAO;
import util.RowCount;

@WebServlet("/QueryWarehoseServlet")
public class QueryWarehoseServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	private int pageCount=10;   //每页显示的记录数
	public QueryWarehoseServlet()
	{
		super();
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO 自动生成的方法存根
		String queryType=request.getParameter("queryType");
		String queryGraph=request.getParameter("queryGraph");
		List<Warehose> queryWarehoses=new ArrayList<>();
		Warehose warehose=new Warehose();
		WarehoseDAO warehoseDAO=new WarehoseDAO();
		String message="";
		String queryStr="";
		String countStr="";
		String queryName="";
		String queryValue="";
		int totalRows=0;
		int totalPage=0;
		int currentPage=Integer.parseInt(request.getParameter("currentPage"));
		String pagerTurning=request.getParameter("pagerTurning");
		try
		{
			if (queryType.equals("all")) //查询全部
			{
				queryStr="select id,name,position,shelves_total,state,specification from warehose";
				countStr="select count(id) from warehose";
			}else  //带条件查询
			{
				queryName=request.getParameter("queryName");
				queryValue= java.net.URLDecoder.decode(request.getParameter("queryValue"), "utf-8");

				queryStr="select id,name,position,shelves_total,state,specification from warehose where "+queryName+"='"+queryValue+"'";
				countStr="select count(id) from warehose where  "+queryName+"='"+queryValue+"'";
			}

			totalRows=(new RowCount()).getTotalrow(countStr);  //获得查询总纪录数；
			totalPage = (int) Math.ceil(1.0 * totalRows / pageCount);
			if (pagerTurning.equals("firtPage"))
			{
				currentPage=1;
			}else if (pagerTurning.equals("lastPage"))
			{
				currentPage=currentPage-1;
			}else if (pagerTurning.equals("nextPage"))
			{
				currentPage=currentPage+1;
			}else if (pagerTurning.equals("endPage"))
			{
				currentPage=totalPage;
			}

			if (currentPage <= 0) {
				currentPage = 1;
			}

			if (currentPage > totalPage) {
				currentPage = totalPage;
			}
			queryWarehoses=warehoseDAO.findByPage(queryStr, currentPage, pageCount);  //通过查询字符串、当前页和每页纪录数查找产品纪录；

			request.setAttribute("queryWarehoses", queryWarehoses);
			request.setAttribute("totalRows", totalRows);
			request.setAttribute("totalPage", totalPage);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("queryType", queryType);
			if (queryType.equals("condition"))
			{
				request.setAttribute("queryName", queryName);
				request.setAttribute("queryValue", queryValue);
			}

		}catch(Exception e2)
		{
			message="查找书位信息失败";
		}

		request.setAttribute("message", message);
		if (queryGraph==null)
			getServletConfig().getServletContext().getRequestDispatcher("/warehose/queryWarehose.jsp").forward(request, response);
}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		doGet(request, response);
	}

}
