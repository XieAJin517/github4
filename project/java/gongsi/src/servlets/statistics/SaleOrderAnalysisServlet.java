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
import dao.statistics.SaleOrderStatisticsDAO;

/**
 * Servlet implementation class SaleOrderAnalysisServlet
 */
@WebServlet("/SaleOrderAnalysisServlet")
public class SaleOrderAnalysisServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaleOrderAnalysisServlet() {
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
		String queryType=request.getParameter("queryType");

		String queryStr="";

		List<StatisticsBean> kindSaleOrderTotals=new ArrayList<>();
		List<StatisticsBean> custSaleOrderTotals=new ArrayList<>();
		SaleOrderStatisticsDAO saleOrderStatis1=new SaleOrderStatisticsDAO();
		SaleOrderStatisticsDAO saleOrderStatis2=new SaleOrderStatisticsDAO();

		try
		{

				queryStr="select kindname,sum(buynum),sum(buynum*buyprice) from orderitem a,product b,category c where a.proid=b.proid and b.kindid=c.kindid group by kindname";
				kindSaleOrderTotals=saleOrderStatis1.SumByName(queryStr);

				queryStr="select city,sum(buynum),sum(buynum*buyprice) from orderitem a,p_order b,customer c where a.orderid=b.orderid and b.custid=c.custid group by city";
				custSaleOrderTotals=saleOrderStatis2.SumByName(queryStr);

		} catch(Exception e2)
		{
			message="获取订单统计信息失败";
		}


		request.setAttribute("message", message);
		request.setAttribute("kindSaleOrderTotals", kindSaleOrderTotals);
		request.setAttribute("custSaleOrderTotals", custSaleOrderTotals);
		//request.setAttribute("supplierSaleOrderTotals", supplierSaleOrderTotals);
		getServletConfig().getServletContext().getRequestDispatcher("/dataAnalysis/saleOrderAnalysis.jsp").forward(request, response);
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
