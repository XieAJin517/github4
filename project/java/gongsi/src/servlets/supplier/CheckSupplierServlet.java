package servlets.supplier;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.SupplierDAO;


/**
 * Servlet implementation class CheckSupplierServlet
 */
@WebServlet("/CheckSupplierServlet")
public class CheckSupplierServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckSupplierServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String operator=request.getParameter("operator");
		String supplierName=request.getParameter("supplierName");
		String relaname=request.getParameter("relaname");
		String phone =request.getParameter("phone");
		String address=request.getParameter("address");
		String zipcode=request.getParameter("zipcode");
		String pwd=request.getParameter("pwd");
		String descriptio=request.getParameter("descriptio");
		String businesslicens=request.getParameter("businesslicens");
		String message="";
        RequestDispatcher dispatcher=null;
	   if (operator.equals("add"))
	        dispatcher =	request.getRequestDispatcher("/supplier/addSupplier.jsp");
		else
			dispatcher =	request.getRequestDispatcher("/supplier/modifySupplier.jsp");

	  
	   try {
			if(supplierName==null)
			{
				message="供应商不能为空字符串！";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
			}
			else {
				   if (supplierName.trim().length()==0)
				   {
					message="供应商不能为空字符串！";
					request.setAttribute("message", message);
					dispatcher.forward(request, response);
					return;
				  	}
			}

		}
		catch (Exception e) {
					request.setAttribute("message", message);
					dispatcher.forward(request, response);
					return;
	    }

		 try {
				if(pwd==null)
				{
					message="密码不能为空字符串！";
					request.setAttribute("message", message);
					dispatcher.forward(request, response);
					return;
				}
				else {
					   if (pwd.trim().length()==0)
					   {
						message="密码不能为空字符串！";
						request.setAttribute("message", message);
						dispatcher.forward(request, response);
						return;
					  	}
				}

			}
			catch (NumberFormatException e) {
						request.setAttribute("message", message);
						dispatcher.forward(request, response);
						return;
		    }
		 String supplierID="";
		if (operator.equals("modify")){
				supplierID=request.getParameter("supplierID");
				request.setAttribute("supplierID", supplierID);
			}
		
		request.setAttribute("supplierName", supplierName);
		request.setAttribute("relaname",relaname);
		request.setAttribute("phone", phone);
		request.setAttribute("address", address);
		request.setAttribute("zipcode", zipcode);
		request.setAttribute("pwd", pwd);
		request.setAttribute("descriptio", descriptio);
		request.setAttribute("businesslicens", businesslicens);
		RequestDispatcher dispatcher1 =	request.getRequestDispatcher("SupplierMaintainServlet");
		dispatcher1.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
