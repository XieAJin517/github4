package servlets.login;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Customer;
import bean.Employee;
import bean.Supplier;
import dao.CustomerDAO;
import dao.EmployeeDAO;
import dao.SupplierDAO;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet(name = "LoginCheck", description = "LoginCheck", urlPatterns = { "/LoginCheck" })
public class LoginCheckServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userID=request.getParameter("userID");
		String userPassword=request.getParameter("userPassword");
		String userType=request.getParameter("userType");
		String errorMsg="";
		String message="";

		if (userType.equals("employee"))
		{
			EmployeeDAO empDAO=new EmployeeDAO();
			Employee employee=new Employee();
			boolean findFl=false;

			try
	    	  {
	    		  employee=empDAO.findByempID(Integer.parseInt(userID));
	    	  }catch(Exception e)
	    	  {
	    		  errorMsg="获取人员信息失败";
	    	  }

	    	  if (employee.getEmpID()==Integer.parseInt(userID))
	    		  if (employee.getPwd().equals(userPassword))
	    		  {
	    			  findFl=true;
	    		  }else
	    			  errorMsg="密码不正确，请重新输入!";
	    	  else
	    		  errorMsg="人员号码不正确，请重新输入！";
	    	 if (findFl)
	    	 {
				HttpSession  session=request.getSession();
				session.setAttribute("employee",employee);
				response.setCharacterEncoding("gb2312");
				getServletConfig().getServletContext().getRequestDispatcher("/userMainframe/employeeMainframe.jsp").include(request, response);
	    	 }
	    	 else
	    	 {
					response.setCharacterEncoding("gb2312");
					response.getWriter().print("<h2><font color=red>"+errorMsg+"</font></h2>");
					getServletConfig().getServletContext().getRequestDispatcher("/userMainframe/login.jsp").include(request, response);
	    	 }

		}
		else if (userType.equals("customer"))
		{
			//判断客户的账号及密码是否正确并进行相应导航的代码
			CustomerDAO custDAO=new CustomerDAO();
			Customer custommer=new Customer();
			boolean findFl=false;

			try
	    	  {
				custommer=custDAO.findBycustID(Integer.parseInt(userID));
	    	  }catch(Exception e)
	    	  {
	    		  errorMsg="获取用户信息失败";
	    	  }

	    	  if (custommer.getCustID()==Integer.parseInt(userID))
	    		  if (custommer.getPwd().equals(userPassword))
	    		  {
	    			  findFl=true;
	    		  }else
	    			  errorMsg="密码不正确，请重新输入!";
	    	  else
	    		  errorMsg="用户号码不正确，请重新输入！";

	    	  if (findFl)
		      {
				HttpSession  session=request.getSession();
				session.setAttribute("custommer", custommer);
				response.setCharacterEncoding("gb2312");
				getServletConfig().getServletContext().getRequestDispatcher("/userMainframe/customerMainframe.jsp").forward(request, response);
		      }else
		      {
				response.setCharacterEncoding("gb2312");
				response.getWriter().print("<h2><font color=red>"+errorMsg+"</font></h2>");
				getServletConfig().getServletContext().getRequestDispatcher("/userMainframe/login.jsp").include(request, response);
		      }



		}

		else if (userType.equals("supplier"))
		{
			//判断客户的账号及密码是否正确并进行相应导航的代码
			SupplierDAO supplierDAO =new SupplierDAO();
			Supplier supplier = new Supplier();
			boolean findFl=false;

			try
	    	  {
				supplier=supplierDAO.findByID(Integer.parseInt(userID));
	    	  }catch(Exception e)
	    	  {
	    		  errorMsg="获取管理员信息失败";
	    	  }

	    	  if (supplier.getSupplierID()==Integer.parseInt(userID))
	    		  if (supplier.getPwd().equals(userPassword))
	    		  {
	    			  findFl=true;
	    		  }else
	    			  errorMsg="密码不正确，请重新输入!";
	    	  else
	    		  errorMsg="管理员不正确，请重新输入！";

	    	  if (findFl)
		      {
				HttpSession  session=request.getSession();
				session.setAttribute("supplier", supplier);
				response.setCharacterEncoding("gb2312");
				getServletConfig().getServletContext().getRequestDispatcher("/userMainframe/supplierMainframe.jsp").forward(request, response);
		      }else
		      {
				response.setCharacterEncoding("gb2312");
				response.getWriter().print("<h2><font color=red>"+errorMsg+"</font></h2>");
				getServletConfig().getServletContext().getRequestDispatcher("/userMainframe/login.jsp").include(request, response);
		      }



		}

		//getServletConfig().getServletContext().getRequestDispatcher("/mainforemployee.jsp").forward(request, response);

	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}

}
