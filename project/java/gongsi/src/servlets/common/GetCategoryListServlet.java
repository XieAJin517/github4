package servlets.common;

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
import bean.Product;
import bean.Warehose;
import dao.CategoryDAO;
import dao.ProductDAO;
import dao.WarehoseDAO;

/**
 * Servlet implementation class GetCategoryListServlet
 */
@WebServlet("/GetCategoryListServlet")
public class GetCategoryListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCategoryListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String message="";
		String nextSource=request.getQueryString();
		char currentchar;
		String nextPage="";
		int position1=0,position2=0;
		int firtAnd=0;
		String currentStr="";
		for(int i=0;i<nextSource.length();i++)
		{
			currentchar=nextSource.charAt(i);
			if (currentchar=='=')
				position1=i+1;

            if (currentchar=='&')
            {
            	if (firtAnd==0)
            	{
            		firtAnd=1;
            		position2=i-1;
            		nextPage=nextSource.substring(position1, position2+1)+"?"+nextSource.substring(position2+2,nextSource.length());

            		break;
            	}
            }
		}

		List<Category> categorys=new ArrayList<>();
		CategoryDAO cdao=new CategoryDAO();

		List<Product> products=new ArrayList<>();
		ProductDAO pdao=new ProductDAO();

		List<Warehose> warehoses=new ArrayList<>();
		WarehoseDAO warehoseDAO=new WarehoseDAO();

  	    int kindId=-1;

		try
		{
			categorys=cdao.findAll();
			kindId=categorys.get(0).getKindID();
			products=pdao.findByKindId(kindId);

		}catch(Exception e)
		{
			message="查找类别信息失败";
		}
		HttpSession  session=request.getSession();
		session.setAttribute("categorys", categorys);//把类别信息放到session，否则会丢失

		getServletConfig().getServletContext().getRequestDispatcher(nextPage).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
