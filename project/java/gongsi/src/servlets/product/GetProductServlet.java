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

import bean.Product;
import dao.ProductDAO;

/**
 * Servlet implementation class GetProductServlet
 */
@WebServlet("/GetProductServlet")
public class GetProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetProductServlet() {
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
		String proID=request.getParameter("proID");
		String operator=request.getParameter("operator");
		String getType=request.getParameter("getType");
		String message="";
		String dispatchpage="";

		List<Product> products=new ArrayList<>();
		Product product=new Product();
		ProductDAO pdao=new ProductDAO();
		try
		{
			if (getType.equals("productList")) //根据选中的类别寻找其所属商品
			{
				products=pdao.findByKindId(Integer.parseInt(kindID));
				HttpSession  session=request.getSession();
				session.setAttribute("products", products);
				session.setAttribute("kindID", kindID);  //把类别编码放到session才不会丢失。用request就会丢失。
			}
			if (getType.equals("oneProduct"))  //根据选中商品寻找该商品信息
			{
				product=pdao.findById(Integer.parseInt(proID));
				request.setAttribute("proID", proID);
				request.setAttribute("product", product);
			}

		}catch(Exception e)
		{
		message="查找商品信息失败";
		}
        if (operator.equals("modify"))
				dispatchpage="/product/modifyProduct.jsp";
		else if (operator.equals("delete"))
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
