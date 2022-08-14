package servlets.shelve;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Shelve;
import dao.ShelveDAO;


/**
 * Servlet implementation class GetShelveServlet
 */
@WebServlet("/GetShelveServlet")
public class GetShelveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetShelveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		String sheid=request.getParameter("sheid");
		String operator=request.getParameter("operator");
		String getType=request.getParameter("getType");
		String message="";
		String dispatchpage="";

		List<Shelve> shelves=new ArrayList<>();
		Shelve shelve=new Shelve();
		ShelveDAO shelveDAO=new ShelveDAO();
		try
		{
			if (getType.equals("warehoseList")) //根据选中的仓库寻找其所属货架
			{
				shelves=shelveDAO.findBywhid(Integer.parseInt(id));
				HttpSession  session=request.getSession();
				session.setAttribute("shelves", shelves);
				session.setAttribute("id",id);  //把类别编码放到session才不会丢失。用request就会丢失。
			}
			if (getType.equals("oneShelve"))
			{
				shelve=shelveDAO.findById(Integer.parseInt(sheid));
				request.setAttribute("sheid", sheid);
				request.setAttribute("shelve", shelve);
			}

		}
		catch (Exception e) {
			// TODO: handle exception
			message="查找货架信息失败";
		}
		if (operator.equals("modify"))
			  dispatchpage="/shelve/modifyShelve.jsp";
			else if (operator.equals("delete"))
			  dispatchpage="/shelve/deleteShelve.jsp";

		getServletConfig().getServletContext().getRequestDispatcher(dispatchpage).forward(request, response);
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
