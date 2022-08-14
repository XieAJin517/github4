package servlets.warehose;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(name = "CheckWarehoseServlet", urlPatterns = { "/CheckWarehoseServlet" })
public class CheckWarehoseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CheckWarehoseServlet() {
    	super();
    }
    /**
     * @see HttpServlet#HttpServlet()
     */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO �Զ����ɵķ������
		String operator=request.getParameter("operator");
		String name = request.getParameter("name");
		String position=request.getParameter("position");
		String shelves_total=request.getParameter("shelves_total");
		String state=request.getParameter("state");
		String specification=request.getParameter("specification");
		String message="";
        RequestDispatcher dispatcher=null;
		Integer shelves_total1,state1;
		shelves_total1=Integer.parseInt(request.getParameter("shelves_total"));
		state1=Integer.parseInt(request.getParameter("state"));

		if (operator.equals("add"))
	        dispatcher =	request.getRequestDispatcher("/warehose/addWarehose.jsp");
		else
			dispatcher =	request.getRequestDispatcher("/warehose/modifyWarehose.jsp");
		if (name == null) {
			message="��λ���Ʋ���Ϊ�գ�";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}else
		{
			if (name.trim().length()==0)
			{
				message="��λ���Ʋ���Ϊ���ַ�����";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
			}
		}
		try{
			if(shelves_total1<=0){
				message="���ɻ��ܲ�����0������";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
				}
		}catch (NumberFormatException e) {
				// �ض���
			message="���ɻ�����ֻ���Ǵ���0�����������������ַ���";
			request.setAttribute("message", message);
			dispatcher.forward(request, response);
			return;
		}
		try {
			if(state.toString()==null)
			{
				message="��λ״̬����Ϊ���ַ�����";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
			}
			else {
				   if (state.toString().trim().length()==0)
				   {
					message="��λ״̬����Ϊ���ַ�����";
					request.setAttribute("message", message);
					dispatcher.forward(request, response);
					return;
				  	}
			}

		}
		catch (NumberFormatException e) {
			 if(state1<0||state1>1) {
					message="��λ״ֻ̬��Ϊ0����1��";
					request.setAttribute("message", message);
					dispatcher.forward(request, response);
					return;
			 }
	}
		String id;
		if (operator.equals("modify"))
		{
			id=request.getParameter("id");
			request.setAttribute("id", id);
		}
		//����4������Ҫ��ӻ��޸ĵ���Ʒ�������Ʒ���ơ��۸񡢿������д��request����Ϊrequestֻ����һ����ת�ﴫ����Ϣ��
		request.setAttribute("name", name);
		request.setAttribute("position", position);
		request.setAttribute("shelves_total", shelves_total);
		request.setAttribute("state", state);
		request.setAttribute("specification", specification);
		RequestDispatcher dispatcher1 =	request.getRequestDispatcher("WarehoseMaintain");
		dispatcher1.forward(request, response);


}


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO �Զ����ɵķ������
		doGet( request, response);
	}




}
