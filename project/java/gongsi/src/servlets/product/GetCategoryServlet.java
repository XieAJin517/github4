package servlets.product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Category;
import dao.CategoryDAO;

/**
 * Servlet implementation class GetCategoryServlet
 */
@WebServlet("/GetCategoryServlet")
public class GetCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCategoryServlet() {
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
		String message="";
		String dispatchpage="";

		HttpSession  session=request.getSession();
		List<Category> categorys=new ArrayList<>();
		categorys=(List<Category>)session.getAttribute("categorys");
		if (categorys==null)
		{
			CategoryDAO cdao=new CategoryDAO();
			try
			{
				categorys=cdao.findAll();
			}catch(Exception e)
			{
			message="���������Ϣʧ��";
			}

			session.setAttribute("categorys", categorys);//�޸Ļ������Ʒʱ����������Ϣͨ������⣬��Ҫ����ά����Ʒҳ�棬����������Ϣ�ŵ�session������ᶪʧ
		}
		request.setAttribute("message", message);
		if (operator.equals("add"))
			dispatchpage="/product/addProduct.jsp";
			else if (operator.equals("modify"))
				dispatchpage="/product/modifyProduct.jsp";
			else
				dispatchpage="/product/deleteProduct.jsp";

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
