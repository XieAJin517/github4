package servlets.lattice;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Lattice;
import dao.LatticeDAO;


/**
 * Servlet implementation class GetLatticeServlet
 */
@WebServlet("/GetLatticeServlet")
public class GetLatticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetLatticeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sheid=request.getParameter("sheid");
		String latid=request.getParameter("latid");
		String operator=request.getParameter("operator");
		String getType=request.getParameter("getType");
		String message="";
		String dispatchpage="";

		List<Lattice> lattices=new ArrayList<>();
		Lattice lattice=new Lattice();
		LatticeDAO latticeDAO=new LatticeDAO();
		try
		{
			if (getType.equals("shelveList")) //根据选中的货架寻找其所属格子
			{
				lattices=latticeDAO.findBysheid(Integer.parseInt(sheid));
				HttpSession  session=request.getSession();
				session.setAttribute("lattices", lattices);
				session.setAttribute("sheid",sheid);  //把类别编码放到session才不会丢失。用request就会丢失。
			}
			if (getType.equals("oneLattice"))
			{
				lattice=latticeDAO.findById(Integer.parseInt(latid));
				request.setAttribute("latid", latid);
				request.setAttribute("lattice", lattice);
			}

		}
		catch (Exception e) {
			// TODO: handle exception
			message="查找格子信息失败";
		}
		if (operator.equals("modify"))
			  dispatchpage="/lattice/modifyLattice.jsp";
			else if (operator.equals("delete"))
			  dispatchpage="/lattice/deleteLattice.jsp";

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
