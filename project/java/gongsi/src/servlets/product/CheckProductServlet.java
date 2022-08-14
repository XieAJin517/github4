package servlets.product;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckProductServlet
 */
@WebServlet(name = "CheckProductServlet", urlPatterns = { "/CheckProductServlet" })
public class CheckProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckProductServlet() {
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
		String proName = request.getParameter("proName");
		String kindID=request.getParameter("kindID");
		String proImage=request.getParameter("proImage");
		String message="";

		float price,wareNum;
		RequestDispatcher dispatcher=null;

		if (operator.equals("add"))
	        dispatcher =	request.getRequestDispatcher("/product/addProduct.jsp");
		else
			dispatcher =	request.getRequestDispatcher("/product/modifyProduct.jsp");

		if (proName == null) {
			message="商品名称不能为空！";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}else
		{
			if (proName.trim().length()==0)
			{
				message="商品名称不能为空字符串！";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
			}
		}


		try{
			price = Float.parseFloat(request.getParameter("price"));
			if(price<=0){
				message="商品价格不能是0或负数！";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
				}
		}catch (NumberFormatException e) {
				// 重定向到productEdit.jsp页面
			message="商品价格只能是大于0的数而不能是其他字符！";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}

		try{
			wareNum = Float.parseFloat(request.getParameter("wareNum"));
			if(wareNum<0){
				message="库存数量不能是负数！";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
				}
		}catch (NumberFormatException e) {
				// 重定向到productEdit.jsp页面
			message="库存数量只能是正数而不能是其他字符！";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}

		String proID="";
		if (operator.equals("modify"))
		{
			proID=request.getParameter("proID");
			request.setAttribute("proID", proID);
		}
		//下列4个语句把要添加或修改的商品的类别、商品名称、价格、库存数量写入request。因为request只能在一个跳转里传递信息。
		request.setAttribute("kindID", kindID);
		request.setAttribute("proName", proName);
		request.setAttribute("price", price);
		request.setAttribute("wareNum", wareNum);
		request.setAttribute("proImage", proImage);
		RequestDispatcher dispatcher1 =	request.getRequestDispatcher("ProductMaintain");
		dispatcher1.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}

}
