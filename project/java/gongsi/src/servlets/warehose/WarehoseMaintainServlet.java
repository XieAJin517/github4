package servlets.warehose;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Warehose;
import dao.ShelveDAO;
import dao.WarehoseDAO;

@WebServlet("/WarehoseMaintain")
public class WarehoseMaintainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public WarehoseMaintainServlet() {
	super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO �Զ����ɵķ������
		String operator=request.getParameter("operator");
		String message="";
		String returnpage="";
		if (operator!=null)
		{
			message=operator;
			if (operator.equals("add") ||operator.equals("modify"))
			{
				    Warehose warehose=new Warehose();
				    if (operator.equals("modify"))
						warehose.setId(Integer.parseInt(request.getParameter("id")));
					warehose.setName(request.getParameter("name"));
					warehose.setPosition(request.getParameter("position"));
					warehose.setShelves_total(Integer.parseInt(request.getParameter("shelves_total")));
					warehose.setState(Integer.parseInt(request.getParameter("state")));
					warehose.setSpecification(request.getParameter("specification"));
					WarehoseDAO warehoseDAO=new WarehoseDAO();
				try
				{
					if (operator.equals("add"))
					{
						warehoseDAO.insert(warehose);
						message="�ɹ������λ!";
						returnpage="/warehose/addWarehose.jsp";
					}
					else
					{
						warehoseDAO.update(warehose);
						message="�ɹ��޸���λ!";
						returnpage="/warehose/modifyWarehose.jsp";
					}

				}catch(Exception e)
				{
					if (operator.equals("add"))
						message="��Ӳֿ���λ!";
					else
						message="�޸Ĳֿ���λ!";
				}

			}else if (operator.equals("delete"))
			{
				returnpage="/warehose/deleteWarehose.jsp";
				WarehoseDAO warehoseDAO=new WarehoseDAO();
				int id=Integer.parseInt(request.getParameter("warehid"));
				ShelveDAO shelveDAO=new ShelveDAO();
				boolean findFL=false;
				try{
					findFL=shelveDAO.findByWhid(id);
				}catch(Exception e){
					message="��ѯ����ʧ�ܣ�";
				}
			    if (!findFL)
			    {
			    	try
			    	{
						warehoseDAO.deleteById(id);
			    		message="�ɹ�ɾ����λ!";
			    	}catch(Exception e)
			    	{
			    		message="ɾ����λʧ��!";
			    	}
			    }else
			    	message="Ҫɾ������λ����ĳЩ������Ϣ�У�����ɾ����Щ������ɾ������λ��";

			    }

			request.setAttribute("message", message);
			getServletConfig().getServletContext().getRequestDispatcher(returnpage).forward(request, response);
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO �Զ����ɵķ������
		doGet(request, response);
	}


}
