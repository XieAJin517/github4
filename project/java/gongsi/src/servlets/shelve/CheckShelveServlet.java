package servlets.shelve;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.WarehoseDAO;

/**
 * Servlet implementation class CheckShelveServlet
 */
@WebServlet("/CheckShelveServlet")
public class CheckShelveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckShelveServlet() {
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
		String lattice=request.getParameter("lattice");
		String whid=request.getParameter("whid");
		String state=request.getParameter("state");
		String specification=request.getParameter("specification");
		String message="";
        RequestDispatcher dispatcher=null;
        Integer lattice1,whid1,state1;
       lattice1=Integer.parseInt(request.getParameter("lattice"));
       whid1=Integer.parseInt(request.getParameter("whid"));
	   state1=Integer.parseInt(request.getParameter("state"));

	   if (operator.equals("add"))
	        dispatcher =	request.getRequestDispatcher("/shelve/addShelve.jsp");
		else
			dispatcher =	request.getRequestDispatcher("/shelve/modifyShelve.jsp");
	   try{
			if(lattice1<=0){
				message="���ܸ�����������0������";
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
		   WarehoseDAO warehoseDAO=new WarehoseDAO();
		   warehoseDAO.findByIdbool(whid1);
	     } catch (Exception e) {
	    	 message="�ֿⲻ���ڣ�";
	     }

		try {
			if(state.toString()==null)
			{
				message="����״̬����Ϊ���ַ�����";
				request.setAttribute("message", message);
				dispatcher.forward(request, response);
				return;
			}
			else {
				   if (state.toString().trim().length()==0)
				   {
					message="����״̬����Ϊ���ַ�����";
					request.setAttribute("message", message);
					dispatcher.forward(request, response);
					return;
				  	}
			}

		}
		catch (NumberFormatException e) {
			 if(state1<0||state1>1) {
					message="����״ֻ̬��Ϊ0����1��";
					request.setAttribute("message", message);
					dispatcher.forward(request, response);
					return;
			 }
	    }

		String sheid;
		if (operator.equals("modify"))
		{
			sheid=request.getParameter("sheid");
			request.setAttribute("sheid", sheid);
		}
		//����4������Ҫ��ӻ��޸ĵ���Ʒ�������Ʒ���ơ��۸񡢿������д��request����Ϊrequestֻ����һ����ת�ﴫ����Ϣ��
		request.setAttribute("lattice", lattice);
		request.setAttribute("whid", whid);
		request.setAttribute("state", state);
		request.setAttribute("specification", specification);
		RequestDispatcher dispatcher1 =	request.getRequestDispatcher("ShelveMaintainServlet");
		dispatcher1.forward(request, response);

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
