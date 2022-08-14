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
			message="��Ʒ���Ʋ���Ϊ�գ�";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}else
		{
			if (proName.trim().length()==0)
			{
				message="��Ʒ���Ʋ���Ϊ���ַ�����";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
			}
		}


		try{
			price = Float.parseFloat(request.getParameter("price"));
			if(price<=0){
				message="��Ʒ�۸�����0������";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
				}
		}catch (NumberFormatException e) {
				// �ض���productEdit.jspҳ��
			message="��Ʒ�۸�ֻ���Ǵ���0�����������������ַ���";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}

		try{
			wareNum = Float.parseFloat(request.getParameter("wareNum"));
			if(wareNum<0){
				message="������������Ǹ�����";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
				}
		}catch (NumberFormatException e) {
				// �ض���productEdit.jspҳ��
			message="�������ֻ���������������������ַ���";
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
		//����4������Ҫ��ӻ��޸ĵ���Ʒ�������Ʒ���ơ��۸񡢿������д��request����Ϊrequestֻ����һ����ת�ﴫ����Ϣ��
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
