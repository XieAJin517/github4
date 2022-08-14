package servlets.product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Product;
import dao.ProductDAO;
import util.RowCount;
/**
 * Servlet implementation class QueryProductServlet
 */
@WebServlet("/QueryProductServlet")
public class QueryProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int pageCount=10;   //每页显示的记录数
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryProductServlet() {
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
		List<Product> queryProducts=new ArrayList<>();
		Product product=new Product();
		ProductDAO pdao=new ProductDAO();
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
				queryStr="select proID,proname,kindname,price,warenum,proimage from product, category where product.kindId=category.kindId";
				countStr="select count(proID) from product, category where product.kindId=category.kindId";
			}else  //带条件查询
			{
				queryName=request.getParameter("queryName");
//				queryValue=request.getParameter("queryValue");
				queryValue= java.net.URLDecoder.decode(request.getParameter("queryValue"), "utf-8");
				//				if (!queryName.equals("proID"))  //纠正中文乱码
//				{
//					ChangeToGBK chGBK=new ChangeToGBK();
//					queryValue=chGBK.change("queryValue",request);
//				}
				queryStr="select proID,proname,kindname,price,warenum,proimage from product, category where product.kindId=category.kindId and "+queryName+"='"+queryValue+"'";
				countStr="select count(proID) from product, category where product.kindId=category.kindId and "+queryName+"='"+queryValue+"'";
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
			queryProducts=pdao.findByPage(queryStr, currentPage, pageCount);  //通过查询字符串、当前页和每页纪录数查找产品纪录；

			request.setAttribute("queryProducts", queryProducts);
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
			message="查找商品信息失败";
		}

		request.setAttribute("message", message);
		if (queryGraph==null)
			getServletConfig().getServletContext().getRequestDispatcher("/product/queryProduct.jsp").forward(request, response);
		else
			getServletConfig().getServletContext().getRequestDispatcher("/product/queryGraphProduct.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
