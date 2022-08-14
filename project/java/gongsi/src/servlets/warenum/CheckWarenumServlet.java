package servlets.warenum;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.WarenumDAO;

/**
 * Servlet implementation class CheckWarenumservlet
 */
@WebServlet("/CheckWarenumServlet")
public class CheckWarenumServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckWarenumServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String operator=request.getParameter("operator");
		String latid=request.getParameter("latid");
		String name=request.getParameter("name");
		String warenum=request.getParameter("warenum");
		String message="";
        RequestDispatcher dispatcher=null;

        Integer latid1,warenum1;
	    latid1=Integer.parseInt(request.getParameter("latid"));
	    warenum1=Integer.parseInt(request.getParameter("warenum"));

	   if (operator.equals("add"))
	        dispatcher =	request.getRequestDispatcher("/warenum/addWarenum.jsp");
		else
			dispatcher =	request.getRequestDispatcher("/warenum/modifyWarenum.jsp");

	   try {
		   WarenumDAO warenumDAO=new WarenumDAO();
		   warenumDAO.findByLatid(latid1);
	     } catch (Exception e) {
	    	 message="库存信息不存在！";
	     }
	   try {
			if(latid1.toString()==null)
			{
				message="格子编号不能为空字符串！";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
			}
			else {
				   if (latid1.toString().trim().length()==0)
				   {
					message="格子编号不能为空字符串！";
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

		 try {
				if(warenum1.toString()==null)
				{
					message="商品库存数不能为空字符串！";
					request.setAttribute("message", message);
					dispatcher.forward(request, response);
					return;
				}
				else {
					   if (warenum1.toString().trim().length()==0)
					   {
						message="商品库存数名不能为空字符串！";
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
		 String proid="";
		if (operator.equals("modify")){
				proid=request.getParameter("proid");
				request.setAttribute("proid", proid);
			}
		request.setAttribute("name", name);
		request.setAttribute("latid", latid);
		request.setAttribute("warenum", warenum);
		RequestDispatcher dispatcher1 =	request.getRequestDispatcher("WarenumMaintainServlet");
		dispatcher1.forward(request, response);
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
