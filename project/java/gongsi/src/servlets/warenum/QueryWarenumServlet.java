package servlets.warenum;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Warenum;
import dao.WarenumDAO;
import util.RowCount;

/**
 * Servlet implementation class QueryWarenumServlet
 */
@WebServlet("/QueryWarenumServlet")
public class QueryWarenumServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
	private int pageCount=10;
    public QueryWarenumServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String queryType=request.getParameter("queryType");
		String queryGraph=request.getParameter("queryGraph");
		List<Warenum> queryWarenums=new ArrayList<>();
		Warenum warenum=new Warenum();
		WarenumDAO warenumDAO=new WarenumDAO();
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
				queryStr="select proid,name,latid,warenum from warenum";
				countStr="select count(proid) from warenum";
			}else  //带条件查询
			{
				queryName=request.getParameter("queryName");
				queryValue= java.net.URLDecoder.decode(request.getParameter("queryValue"), "utf-8");

				queryStr="select proid,name,latid,warenum from warenum where "+queryName+"='"+queryValue+"'";
				countStr="select count(proid) from warenum where  "+queryName+"='"+queryValue+"'";
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
			queryWarenums=warenumDAO.findByPage(queryStr, currentPage, pageCount);  //通过查询字符串、当前页和每页纪录数查找产品纪录；

			request.setAttribute("queryWarenums", queryWarenums);
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
			message="查找库存信息失败";
		}

		request.setAttribute("message", message);
		if (queryGraph==null)
			getServletConfig().getServletContext().getRequestDispatcher("/warenum/queryWarenum.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
