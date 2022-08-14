package servlets.book;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckBooServlet
 */
@WebServlet(name = "CheckBookServlet", urlPatterns = { "/CheckBookServlet" })
public class CheckBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckBookServlet() {
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
		String booka = request.getParameter("booka");
		/*String bookb= request.getParameter("bookb");
		String bookc = request.getParameter("bookc");*/
		String bookd=request.getParameter("bookd");
		String message="";

		int bookb,bookc;
		RequestDispatcher dispatcher=null;

		if (operator.equals("add"))
	        dispatcher =	request.getRequestDispatcher("/book/addBook.jsp");
		else
			dispatcher =	request.getRequestDispatcher("/book/modifyBook.jsp");

		if (booka == null) {
			message="书名不能为空！";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}else
		{
			if (booka.trim().length()==0)
			{
				message="书名不能为空字符串！";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
			}
		}

		if (bookd == null) {
			message="作者不能为空！";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}else
		{
			if (bookd.trim().length()==0)
			{
				message="作者不能为空字符串！";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
			}
		}


		try{
			bookb = Integer.parseInt(request.getParameter("bookb"));
			if(bookb<=0){
				message="编号不能是0或负数！";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
				}
		}catch (NumberFormatException e) {
				// 重定向到productEdit.jsp页面
			message="编号只能是大于0的数而不能是其他字符！";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}

		try{
			bookc = Integer.parseInt(request.getParameter("bookc"));
			if(bookc<0){
				message="数量不能是负数！";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
				}
		}catch (NumberFormatException e) {
				// 重定向到productEdit.jsp页面
			message="数量只能是正数而不能是其他字符！";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}

		
		
		//下列4个语句把要添加或修改的商品的类别、商品名称、价格、库存数量写入request。因为request只能在一个跳转里传递信息。
		request.setAttribute("booka", booka);
		request.setAttribute("bookb", bookb);
		request.setAttribute("bookc", bookc);
		request.setAttribute("bookd", bookd);
		RequestDispatcher dispatcher1 =	request.getRequestDispatcher("BookMaintain");
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
