package servlets.warenum;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Warenum;
import dao.WarenumDAO;

/**
 * Servlet implementation class GetWarenumServlet
 */
@WebServlet("/GetWarenumServlet")
public class GetWarenumServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetWarenumServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String proid=request.getParameter("proid");
		String operator=request.getParameter("operator");
		String getType=request.getParameter("getType");
		String message="";
		String dispatchpage="";

		Warenum warenum=new Warenum();
		WarenumDAO warenumDAO=new WarenumDAO();
		try
		{
			if (getType.equals("oneWarenum"))
			{
				warenum=warenumDAO.findById(Integer.parseInt(proid));
				request.setAttribute("proid", proid);
				request.setAttribute("warenum", warenum);
			}

		}
		catch (Exception e) {
			// TODO: handle exception
			message="≤È’“ø‚¥Ê–≈œ¢ ß∞‹";
		}
		if (operator.equals("modify"))
			  dispatchpage="/warenum/modifyWarenum.jsp";
			else if (operator.equals("delete"))
			  dispatchpage="/warenum/deleteWarenum.jsp";

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
