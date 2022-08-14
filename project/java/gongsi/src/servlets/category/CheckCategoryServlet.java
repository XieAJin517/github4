package servlets.category;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckCategoryServlet
 */
@WebServlet("/CheckCategoryServlet")
public class CheckCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckCategoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String operator=request.getParameter("operator");
		String kindName = request.getParameter("kindName");
		String description=request.getParameter("description");
		String message="";

		RequestDispatcher dispatcher=null;

		if (operator.equals("add"))
	        dispatcher =	request.getRequestDispatcher("/category/addCategory.jsp");
		else
			dispatcher =	request.getRequestDispatcher("/category/modifyCategory.jsp");

		if (kindName == null) {
			message="类别名称不能为空！";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}else
		{
			if (kindName.trim().length()==0)
			{
				message="类别名称不能为空字符串！";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
			}
		}



		String kindID="";
		if (operator.equals("modify"))
		{
			kindID=request.getParameter("kindID");
			request.setAttribute("kindID", kindID);
		}
		//下列4个语句把要添加或修改的商品的类别、商品名称、价格、库存数量写入request。因为request只能在一个跳转里传递信息。
		request.setAttribute("kindID", kindID);
		request.setAttribute("kindName", kindName);
		request.setAttribute("description", description);
		RequestDispatcher dispatcher1 =	request.getRequestDispatcher("CategoryMaintain");
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
