package servlets.warenum;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Warenum;
import dao.WarenumDAO;


/**
 * Servlet implementation class WarenumMaintainServlet
 */
@WebServlet("/WarenumMaintainServlet")
public class WarenumMaintainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public WarenumMaintainServlet() {
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
		
		 RequestDispatcher dispatcher=null;
		if (operator!=null)
		{
			message=operator;
			if (operator.equals("add"))
			{
				    Warenum warenum=new Warenum();
				    warenum.setProid(Integer.parseInt(request.getParameter("proid2")));
				    warenum.setName(request.getParameter("name"));
				    warenum.setLatid(Integer.parseInt(request.getParameter("latid")));
				    warenum.setWarenum(Integer.parseInt(request.getParameter("warenum")));
				    WarenumDAO warenumDAO=new WarenumDAO();
				try
				{
						warenumDAO.insert(warenum);
						message="�ɹ���ӿ����Ϣ!";
						returnpage="/warenum/addWarenum.jsp";

				}catch(Exception e)
				{
						message="��ӿ����Ϣʧ��!";
				}

			}
			else if (operator.equals("modify"))
			{
				 	Warenum warenum=new Warenum();
				    warenum.setProid(Integer.parseInt(request.getParameter("proid")));
				    warenum.setLatid(Integer.parseInt(request.getParameter("latid")));
				    warenum.setWarenum(Integer.parseInt(request.getParameter("warenum")));
				    WarenumDAO warenumDAO=new WarenumDAO();
				try
					{
							warenumDAO.update(warenum);
							message="�ɹ��޸Ŀ����Ϣ!";
							returnpage="/warenum/addWarenum.jsp"; 
							//returnpage="/warenum/modifyWarenum.jsp";���������޸�ҳ���ᱨ500��ͨ���õ��Ľ�ѵ���ݣ� 

					}catch(Exception e)
					{
							message="�޸Ŀ����Ϣʧ��!";
					}
			}
			else if (operator.equals("delete"))
			{
				returnpage="/warenum/deleteWarenum.jsp";
				WarenumDAO warenumDAO=new WarenumDAO();
				int id=Integer.parseInt(request.getParameter("proid"));
			    	try
			    	{
			    		warenumDAO.deleteById(id);
			    		message="�ɹ�ɾ�������Ϣ!";
			    	}catch(Exception e)
			    	{
			    		message="ɾ�������Ϣʧ��!";
			    	}
			    }
		}
		request.setAttribute("message", message);
		
	    getServletConfig().getServletContext().getRequestDispatcher(returnpage).forward(request, response);
		 
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
