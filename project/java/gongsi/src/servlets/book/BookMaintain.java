package servlets.book;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDAO;
import dao.WarehoseDAO;
/*import bean.Product;
import dao.P_orderDAO;
c*/
/**
 * Servlet implementation class ProductMaintain
 */
@WebServlet("/BookMaintain")
public class BookMaintain extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookMaintain() {
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
		String returnpage="";

		if (operator!=null)  //operatorStr!=null，说明请求从productEdit.jsp来，准备进行数据的插入、删除和修改
		{
			message=operator;
			if (operator.equals("add") ||operator.equals("modify"))
			{
				Book book1=new Book();
				if (operator.equals("modify"))
					book1.setProID(Integer.parseInt(request.getParameter("bookc")));

				book1.setbooka(request.getParameter("booka"));
				book1.setbookb(Integer.parseInt(request.getParameter("bookb")));
				book1.setbookc(Float.parseFloat(request.getParameter("bookc")));
				book1.setbookd(Float.parseFloat(request.getParameter("bookd")));
				book1.setbookd(Float.parseFloat(request.getParameter("bookd")));

				BookDAO pdao=new BookDAO();
				try
				{
					if (operator.equals("add"))
					{
						pdao.insert(book1);
						message="成功添加商品!";
						returnpage="/book/addBook.jsp";
					}
					else
					{
						pdao.update(book1);
						message="成功修改商品!";
						returnpage="/book/modifyBook.jsp";
					}

				}catch(Exception e)
				{
					if (operator.equals("add"))
						message="添加商品失败!";
					else
						message="修改商品失败!";
				}

			}else if (operator.equals("delete"))
			{
				returnpage="/book/deleteBook.jsp";
				BookDAO pdao=new BookDAO();
				int bookb=Integer.parseInt(request.getParameter("bookb"));
								boolean findFL=false;
				try{
					findFL=WarehoseDAO.findBybookID(bookb);
				}catch(Exception e){
					message="查询商品失败！";
				}
			    if (!findFL)
			    {
			    	try
			    	{
			    		pdao.deleteById(bookb);
			    		message="成功删除书籍!";
			    	}catch(Exception e)
			    	{
			    		message="删除书籍失败!";
			    	}
			    }else
			    	message="要删除的书籍还未归还！";
			}

			request.setAttribute("message", message);
			getServletConfig().getServletContext().getRequestDispatcher(returnpage).forward(request, response);
		}

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
