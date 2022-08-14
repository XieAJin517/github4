package servlets.warehose;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(name = "CheckWarehoseServlet", urlPatterns = { "/CheckWarehoseServlet" })
public class CheckWarehoseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CheckWarehoseServlet() {
    	super();
    }
    /**
     * @see HttpServlet#HttpServlet()
     */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		String operator=request.getParameter("operator");
		String name = request.getParameter("name");
		String position=request.getParameter("position");
		String shelves_total=request.getParameter("shelves_total");
		String state=request.getParameter("state");
		String specification=request.getParameter("specification");
		String message="";
        RequestDispatcher dispatcher=null;
		Integer shelves_total1,state1;
		shelves_total1=Integer.parseInt(request.getParameter("shelves_total"));
		state1=Integer.parseInt(request.getParameter("state"));

		if (operator.equals("add"))
	        dispatcher =	request.getRequestDispatcher("/warehose/addWarehose.jsp");
		else
			dispatcher =	request.getRequestDispatcher("/warehose/modifyWarehose.jsp");
		if (name == null) {
			message="书位名称不能为空！";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}else
		{
			if (name.trim().length()==0)
			{
				message="书位名称不能为空字符串！";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
			}
		}
		try{
			if(shelves_total1<=0){
				message="容纳货架不能是0或负数！";
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
			if(state.toString()==null)
			{
				message="书位状态不能为空字符串！";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
			}
			else {
				   if (state.toString().trim().length()==0)
				   {
					message="书位状态不能为空字符串！";
					request.setAttribute("message", message);
					dispatcher.forward(request, response);
					return;
				  	}
			}

		}
		catch (NumberFormatException e) {
			 if(state1<0||state1>1) {
					message="书位状态只能为0或者1！";
					request.setAttribute("message", message);
					dispatcher.forward(request, response);
					return;
			 }
	}
		String id;
		if (operator.equals("modify"))
		{
			id=request.getParameter("id");
			request.setAttribute("id", id);
		}
		//下列4个语句把要添加或修改的商品的类别、商品名称、价格、库存数量写入request。因为request只能在一个跳转里传递信息。
		request.setAttribute("name", name);
		request.setAttribute("position", position);
		request.setAttribute("shelves_total", shelves_total);
		request.setAttribute("state", state);
		request.setAttribute("specification", specification);
		RequestDispatcher dispatcher1 =	request.getRequestDispatcher("WarehoseMaintain");
		dispatcher1.forward(request, response);


}


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		doGet( request, response);
	}




}
