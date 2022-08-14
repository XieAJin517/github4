package servlets.shelve;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Shelve;
import dao.ShelveDAO;
import util.RowCount;

/**
 * Servlet implementation class QueryShelveServlet
 */
@WebServlet("/QueryShelveServlet")
public class QueryShelveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
	private int pageCount=10;
    public QueryShelveServlet() {
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
		List<Shelve> queryShelves=new ArrayList<>();
		Shelve shelve=new Shelve();
		ShelveDAO shelveDAO=new ShelveDAO();
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
				queryStr="select sheid,lattice,whid,state,specification from shelve";
				countStr="select count(sheid) from shelve";
			}else  //带条件查询
			{
				queryName=request.getParameter("queryName");
				queryValue= java.net.URLDecoder.decode(request.getParameter("queryValue"), "utf-8");

				queryStr="select sheid,lattice,whid,state,specification from shelve where "+queryName+"='"+queryValue+"'";
				countStr="select count(sheid) from shelve where  "+queryName+"='"+queryValue+"'";
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
			queryShelves=shelveDAO.findByPage(queryStr, currentPage, pageCount);  //通过查询字符串、当前页和每页纪录数查找产品纪录；

			request.setAttribute("queryShelves", queryShelves);
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
			message="查找货架信息失败";
		}

		request.setAttribute("message", message);
		if (queryGraph==null)
			getServletConfig().getServletContext().getRequestDispatcher("/shelve/queryShelve.jsp").forward(request, response);
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
