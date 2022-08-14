package servlets.category;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Category;
import dao.CategoryDAO;

/**
 * Servlet implementation class GetCategory1Servlet
 */
@WebServlet("/GetCategory1Servlet")
public class GetCategory1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCategory1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				String kindID=request.getParameter("kindID");
				String operator=request.getParameter("operator");
				String getType=request.getParameter("getType");
				String message="";
				String dispatchpage="";

				Category category=new Category();
				CategoryDAO cgdao=new CategoryDAO();
				try
				{
					if (getType.equals("oneCategory"))  //根据选中商品寻找该商品信息
					{
						category=cgdao.findById(Integer.parseInt(kindID));
						request.setAttribute("kindID", kindID);
						request.setAttribute("category", category);
					}

				}catch(Exception e)
				{
				message="查找商品信息失败";
				}
		        if (operator.equals("modify"))
						dispatchpage="/category/modifyCategory.jsp";
				else if (operator.equals("delete"))
						dispatchpage="/category/deleteCategory.jsp";

				getServletConfig().getServletContext().getRequestDispatcher(dispatchpage).forward(request, response);
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
