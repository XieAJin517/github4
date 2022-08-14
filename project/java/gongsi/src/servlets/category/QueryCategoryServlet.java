package servlets.category;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Category;
import dao.CategoryDAO;
import util.RowCount;

/**
 * Servlet implementation class QueryCategoryServlet
 */
@WebServlet("/QueryCategoryServlet")
public class QueryCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int pageCount=10;   //ÿҳ��ʾ�ļ�¼��
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryCategoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String queryType=request.getParameter("queryType");
		String queryGraph=request.getParameter("queryGraph");
		List<Category> queryCategorys=new ArrayList<>();
		Category category=new Category();
		CategoryDAO cgdao=new CategoryDAO();
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
			if (queryType.equals("all")) //��ѯȫ��
			{
				queryStr="select kindID,kindname,description from category ";
				countStr="select count(kindID) from category ";
			}else  //��������ѯ
			{

				queryName=request.getParameter("queryName");
//				queryValue=request.getParameter("queryValue");
				queryValue= java.net.URLDecoder.decode(request.getParameter("queryValue"), "utf-8");
				//				if (!queryName.equals("proID"))  //������������
//				{
//					ChangeToGBK chGBK=new ChangeToGBK();
//					queryValue=chGBK.change("queryValue",request);
//				}
				if(queryName.equals("description"))
				{
					queryStr="select kindID,kindname,description from category  where  description like '%"+queryValue+"%'";

				}
				else
				{
				queryStr="select kindID,kindname,description from category  where "+queryName+"='"+queryValue+"'";

				countStr="select count(kindID) from category where  "+queryName+"='"+queryValue+"'";
				}
			}

			totalRows=(new RowCount()).getTotalrow(countStr);  //��ò�ѯ�ܼ�¼����
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
			queryCategorys=cgdao.findByPage(queryStr, currentPage, pageCount);  //ͨ����ѯ�ַ�������ǰҳ��ÿҳ��¼�����Ҳ�Ʒ��¼��

			request.setAttribute("queryCategorys", queryCategorys);
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
			message="������Ʒ��Ϣʧ��";
		}

		request.setAttribute("message", message);
		if (queryGraph==null)
			getServletConfig().getServletContext().getRequestDispatcher("/category/queryCategory.jsp").forward(request, response);
		else
			getServletConfig().getServletContext().getRequestDispatcher("/category/queryGraphProduct.jsp").forward(request, response);
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
