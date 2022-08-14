package servlets.supplier;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.Supplier;
import dao.SupplierDAO;

/**
 * Servlet implementation class SupplierMaintainServlet
 */
@WebServlet("/SupplierMaintainServlet")
public class SupplierMaintainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupplierMaintainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String operator=request.getParameter("operator");
		String message="";
		String returnpage="";
		
		 RequestDispatcher dispatcher=null;
		if (operator!=null)
		{
			message=operator;
			if (operator.equals("add"))
			{
				    Supplier supplier=new Supplier();
					supplier.setSuppliername(request.getParameter("supplierName"));
					supplier.setRelaname(request.getParameter("relaname"));
					supplier.setPhone(request.getParameter("phone"));
					supplier.setAddress(request.getParameter("address"));
					supplier.setZipcode(request.getParameter("zipcode"));
					supplier.setPwd(request.getParameter("pwd"));
					supplier.setDescriptio(request.getParameter("descriptio"));
					supplier.setBusinesslicens(request.getParameter("businesslicens"));
				    SupplierDAO supplierDAO=new SupplierDAO();
				try
				{
						supplierDAO.insert(supplier);
						message="�ɹ���ӹ�Ӧ����Ϣ!";
						returnpage="/supplier/addSupplier.jsp";

				}catch(Exception e)
				{
						message="��ӹ�Ӧ����Ϣʧ��!";
				}

			}
			else if (operator.equals("modify"))
			{
				Supplier supplier=new Supplier();
				supplier.setSupplierID(Integer.parseInt(request.getParameter("supplierID")));
				supplier.setSuppliername(request.getParameter("supplierName"));
				supplier.setRelaname(request.getParameter("relaname"));
				supplier.setPhone(request.getParameter("phone"));
				supplier.setAddress(request.getParameter("address"));
				supplier.setZipcode(request.getParameter("zipcode"));
				supplier.setPwd(request.getParameter("pwd"));
				supplier.setDescriptio(request.getParameter("descriptio"));
				supplier.setBusinesslicens(request.getParameter("businesslicens"));
			    SupplierDAO supplierDAO=new SupplierDAO();
				try
					{
							supplierDAO.update(supplier);
							message="�ɹ��޸Ĺ�Ӧ����Ϣ!";
							returnpage="/supplier/modifySupplier.jsp"; 

					}catch(Exception e)
					{
							message="�޸Ĺ�Ӧ����Ϣʧ��!";
					}
			}
			else if (operator.equals("delete"))
			{
				returnpage="/supplier/deleteSupplier.jsp";
				SupplierDAO supplierDAO=new SupplierDAO();
				int id=Integer.parseInt(request.getParameter("supplierID"));
			    	try
			    	{
			    		supplierDAO.deleteById(id);
			    		message="�ɹ�ɾ����Ӧ����Ϣ!";
			    	}catch(Exception e)
			    	{
			    		message="ɾ����Ӧ����Ϣʧ��!";
			    	}
			    }
		}
		request.setAttribute("message", message);
		
	    getServletConfig().getServletContext().getRequestDispatcher(returnpage).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
