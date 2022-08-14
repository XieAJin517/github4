package servlets.shelve;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Shelve;
import dao.ShelveDAO;

/**
 * Servlet implementation class ShelveMaintainServlet
 */
@WebServlet("/ShelveMaintainServlet")
public class ShelveMaintainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShelveMaintainServlet() {
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
		if (operator!=null)
		{
			message=operator;
			if (operator.equals("add") ||operator.equals("modify"))
			{
				    Shelve shelve=new Shelve();
				    if (operator.equals("modify"))
						shelve.setSheid(Integer.parseInt(request.getParameter("sheid")));
					shelve.setLattice(Integer.parseInt(request.getParameter("lattice")));
					shelve.setWhid(Integer.parseInt(request.getParameter("whid")));
					shelve.setState(Integer.parseInt(request.getParameter("state")));
					shelve.setSpecification(request.getParameter("specification"));
					ShelveDAO shelveDAO=new ShelveDAO();
				try
				{
					if (operator.equals("add"))
					{
						shelveDAO.insert(shelve);
						message="�ɹ���ӻ���!";
						returnpage="/shelve/addShelve.jsp";
					}
					else
					{
						shelveDAO.update(shelve);
						message="�ɹ��޸Ļ���!";
						returnpage="/shelve/modifyShelve.jsp";
					}

				}catch(Exception e)
				{
					if (operator.equals("add"))
						message="��ӻ���ʧ��!";
					else
						message="�޸Ļ���ʧ��!";
				}

			}else if (operator.equals("delete"))
			{
				returnpage="/shelve/deleteShelve.jsp";
				ShelveDAO shelveDAO=new ShelveDAO();
				int id=Integer.parseInt(request.getParameter("sheid"));
			    	try
			    	{
			    		shelveDAO.deleteById(id);
			    		message="�ɹ�ɾ������!";
			    	}catch(Exception e)
			    	{
			    		message="ɾ������ʧ��!";
			    	}
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
