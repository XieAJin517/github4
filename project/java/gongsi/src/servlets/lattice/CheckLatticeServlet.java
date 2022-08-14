package servlets.lattice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ShelveDAO;

/**
 * Servlet implementation class CheckLatticeServlet
 */
@WebServlet("/CheckLatticeServlet")
public class CheckLatticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckLatticeServlet() {
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
		String sheid=request.getParameter("sheid");
		String state=request.getParameter("state");
		String specification=request.getParameter("specification");
		String message="";
        RequestDispatcher dispatcher=null;
        Integer sheid1,state1;
        sheid1=Integer.parseInt(request.getParameter("sheid"));
	    state1=Integer.parseInt(request.getParameter("state"));

	   if (operator.equals("add"))
	        dispatcher =	request.getRequestDispatcher("/lattice/addLattice.jsp");
		else
			dispatcher =	request.getRequestDispatcher("/lattice/modifyLattice.jsp");

	   try {
		   ShelveDAO shelveDAO=new ShelveDAO();
		   shelveDAO.findBySheidbool(sheid1);
	     } catch (Exception e) {
	    	 message="货架不存在！";
	     }

		try {
			if(state.toString()==null)
			{
				message="格子状态不能为空字符串！";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
			}
			else {
				   if (state.toString().trim().length()==0)
				   {
					message="格子状态不能为空字符串！";
					request.setAttribute("message", message);
					dispatcher.forward(request, response);
					return;
				  	}
			}

		}
		catch (NumberFormatException e) {
			 if(state1<0||state1>1) {
					message="格子状态只能为0或者1！";
					request.setAttribute("message", message);
					dispatcher.forward(request, response);
					return;
			 }
	    }

		String latid;
		if (operator.equals("modify"))
		{
			latid=request.getParameter("latid");
			request.setAttribute("latid",latid);
		}
		//下列4个语句把要添加或修改的商品的类别、商品名称、价格、库存数量写入request。因为request只能在一个跳转里传递信息。
		request.setAttribute("sheid", sheid);
		request.setAttribute("state", state);
		request.setAttribute("specification", specification);
		RequestDispatcher dispatcher1 =	request.getRequestDispatcher("LatticeMaintainServlet");
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
