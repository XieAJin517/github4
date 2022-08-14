package servlets.supplier;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Supplier;
import dao.SupplierDAO;

/**
 * Servlet implementation class GetSupplierServlet
 */
@WebServlet("/GetSupplierServlet")
public class GetSupplierServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSupplierServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String supplierID=request.getParameter("supid");
		String operator=request.getParameter("operator");
		String getType=request.getParameter("getType");
		String message="";
		String dispatchpage="";

		Supplier supplier=new Supplier();
		SupplierDAO supplierDAO=new SupplierDAO();
		try
		{
			if (getType.equals("oneSupplier"))
			{
				supplier=supplierDAO.findBysupplierID(Integer.parseInt(supplierID));
				request.setAttribute("supplierID", supplierID);
				request.setAttribute("supplier", supplier);
			}

		}
		catch (Exception e) {
			// TODO: handle exception
			message="查找供应商信息失败";
		}
		if (operator.equals("modify"))
			  dispatchpage="/supplier/modifySupplier.jsp";
			else if (operator.equals("delete"))
			  dispatchpage="/supplier/deleteSupplier.jsp";

		getServletConfig().getServletContext().getRequestDispatcher(dispatchpage).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
