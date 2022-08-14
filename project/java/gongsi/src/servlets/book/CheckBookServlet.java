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
			message="��������Ϊ�գ�";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}else
		{
			if (booka.trim().length()==0)
			{
				message="��������Ϊ���ַ�����";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
			}
		}

		if (bookd == null) {
			message="���߲���Ϊ�գ�";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}else
		{
			if (bookd.trim().length()==0)
			{
				message="���߲���Ϊ���ַ�����";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
			}
		}


		try{
			bookb = Integer.parseInt(request.getParameter("bookb"));
			if(bookb<=0){
				message="��Ų�����0������";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
				}
		}catch (NumberFormatException e) {
				// �ض���productEdit.jspҳ��
			message="���ֻ���Ǵ���0�����������������ַ���";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}

		try{
			bookc = Integer.parseInt(request.getParameter("bookc"));
			if(bookc<0){
				message="���������Ǹ�����";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
				}
		}catch (NumberFormatException e) {
				// �ض���productEdit.jspҳ��
			message="����ֻ���������������������ַ���";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}

		
		
		//����4������Ҫ��ӻ��޸ĵ���Ʒ�������Ʒ���ơ��۸񡢿������д��request����Ϊrequestֻ����һ����ת�ﴫ����Ϣ��
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
