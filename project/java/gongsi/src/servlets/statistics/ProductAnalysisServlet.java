package servlets.statistics;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.StatisticsBean;
import dao.statistics.ProductStatisticsDAO;

/**
 * Servlet implementation class ProductAnalysisServlet
 */
@WebServlet("/ProductAnalysisServlet")
public class ProductAnalysisServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductAnalysisServlet() {
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

		List<StatisticsBean> kindProductTotals=new ArrayList<>();
		List<StatisticsBean> supplierProductTotals=new ArrayList<>();
		ProductStatisticsDAO proStatis1=new ProductStatisticsDAO();
		ProductStatisticsDAO proStatis2=new ProductStatisticsDAO();
		try
		{

				queryStr="SELECT kindname,count(proid) as totalproduct FROM product a,category b where a.kindid=b.kindid  group by kindname";
				kindProductTotals=proStatis1.SumByName(queryStr);

				queryStr="SELECT suppliername,count(proid) as totalproduct FROM product a,supplier b where a.supplierid=b.supplierid  group by suppliername";
				supplierProductTotals=proStatis2.SumByName(queryStr);

		} catch(Exception e2)
		{
			message="��ȡ��Ʒͳ����Ϣʧ��";
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
	}

}
