package servlets.statistics;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.statistics.product.ProductTotal;
import dao.statistics.ProductStatistics;

/**
 * Servlet implementation class ProductStatisticsServlet
 */
@WebServlet("/ProductStatisticsServlet")
public class ProductStatisticsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductStatisticsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String message="";
		String queryStr="";

		List<ProductTotal> kindProductTotals=new ArrayList<>();
		List<ProductTotal> supplierProductTotals=new ArrayList<>();
		ProductStatistics proStatis=new ProductStatistics();
		try
		{

				queryStr="SELECT kindname,count(proid) as totalproduct FROM product a,category b where a.kindid=b.kindid  group by a.kindid";
				kindProductTotals=proStatis.SumByName(queryStr);

				queryStr="SELECT suppliername,count(proid) as totalproduct FROM product a,supplier b where a.supplierid=b.supplierid  group by a.supplierid";
				supplierProductTotals=proStatis.SumByName(queryStr);

		} catch(Exception e2)
		{
			message="获取商品统计信息失败";
		}


		request.setAttribute("message", message);
		request.setAttribute("kindProductTotals", kindProductTotals);
		request.setAttribute("supplierProductTotals", supplierProductTotals);
		getServletConfig().getServletContext().getRequestDispatcher("/dataAnalysis/productAnalysis.jsp").forward(request, response);

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
