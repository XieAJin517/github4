package servlets.shelve;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.WarehoseDAO;

/**
 * Servlet implementation class CheckShelveServlet
 */
@WebServlet("/CheckShelveServlet")
public class CheckShelveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckShelveServlet() {
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
		String lattice=request.getParameter("lattice");
		String whid=request.getParameter("whid");
		String state=request.getParameter("state");
		String specification=request.getParameter("specification");
		String message="";
        RequestDispatcher dispatcher=null;
        Integer lattice1,whid1,state1;
       lattice1=Integer.parseInt(request.getParameter("lattice"));
       whid1=Integer.parseInt(request.getParameter("whid"));
	   state1=Integer.parseInt(request.getParameter("state"));

	   if (operator.equals("add"))
	        dispatcher =	request.getRequestDispatcher("/shelve/addShelve.jsp");
		else
			dispatcher =	request.getRequestDispatcher("/shelve/modifyShelve.jsp");
	   try{
			if(lattice1<=0){
				message="货架格子数不能是0或负数！";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
				}
		}catch (NumberFormatException e) {
				// 重定向
			message="容纳货架数只能是大于0的数而不能是其他字符！";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}

	   try {
		   WarehoseDAO warehoseDAO=new WarehoseDAO();
		   warehoseDAO.findByIdbool(whid1);
	     } catch (Exception e) {
	    	 message="仓库不存在！";
	     }

		try {
			if(state.toString()==null)
			{
				message="货架状态不能为空字符串！";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
			}
			else {
				   if (state.toString().trim().length()==0)
				   {
					message="货架状态不能为空字符串！";
					request.setAttribute("message", message);
					dispatcher.forward(request, response);
					return;
				  	}
			}

		}
		catch (NumberFormatException e) {
			 if(state1<0||state1>1) {
					message="货架状态只能为0或者1！";
					request.setAttribute("message", message);
					dispatcher.forward(request, response);
					return;
			 }
	    }

		String sheid;
		if (operator.equals("modify"))
		{
			sheid=request.getParameter("sheid");
			request.setAttribute("sheid", sheid);
		}
		//下列4个语句把要添加或修改的商品的类别、商品名称、价格、库存数量写入request。因为request只能在一个跳转里传递信息。
		request.setAttribute("lattice", lattice);
		request.setAttribute("whid", whid);
		request.setAttribute("state", state);
		request.setAttribute("specification", specification);
		RequestDispatcher dispatcher1 =	request.getRequestDispatcher("ShelveMaintainServlet");
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
