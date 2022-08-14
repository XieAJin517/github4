package servlets.warehose;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Warehose;
import dao.WarehoseDAO;

@WebServlet("/GetWarehoseServlet")
public class GetWarehoseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public GetWarehoseServlet () {
		super();
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO �Զ����ɵķ������
		String id=request.getParameter("wareid");
		String operator=request.getParameter("operator");
		String getType=request.getParameter("getType");
		String message="";
		String dispatchpage="";

		Warehose warehose=new Warehose();
		WarehoseDAO warehoseDAO=new WarehoseDAO();
		try
		{
			if (getType.equals("OneWarehose"))
			{
				warehose=warehoseDAO.findById(Integer.parseInt(id));
				request.setAttribute("id", id);
				request.setAttribute("warehose", warehose);
			}

		}
		catch (Exception e) {
			// TODO: handle exception
			message="������λ��Ϣʧ��";
		}
		if (operator.equals("modify"))
			  dispatchpage="/warehose/modifyWarehose.jsp";
			else if (operator.equals("delete"))
			  dispatchpage="/warehose/deleteWarehose.jsp";

		getServletConfig().getServletContext().getRequestDispatcher(dispatchpage).forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO �Զ����ɵķ������
		doGet(request, response);
	}

}
