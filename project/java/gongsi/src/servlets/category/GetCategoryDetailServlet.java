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
 * Servlet implementation class GetCategoryDetailServlet
 */
@WebServlet("/GetCategoryDetailServlet")
public class GetCategoryDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCategoryDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String kindID=request.getParameter("kindID");
		String operator=request.getParameter("operator");

		String message="";
		String dispatchpage="";

		Category category=new Category();
		CategoryDAO cdao=new CategoryDAO();
		try
		{
			category=cdao.findById(Integer.parseInt(kindID));
			request.setAttribute("kindID", kindID);
			request.setAttribute("category", category);

		}catch(Exception e)
		{
		message="查找类别信息失败";
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
