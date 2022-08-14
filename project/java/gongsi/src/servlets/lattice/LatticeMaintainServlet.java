package servlets.lattice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Lattice;
import dao.LatticeDAO;

/**
 * Servlet implementation class LatticeMaintainServlet
 */
@WebServlet("/LatticeMaintainServlet")
public class LatticeMaintainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LatticeMaintainServlet() {
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
				    Lattice lattice=new Lattice();
				    if (operator.equals("modify"))
						lattice.setLatid(Integer.parseInt(request.getParameter("latid")));
					lattice.setSheid(Integer.parseInt(request.getParameter("sheid")));
					lattice.setState(Integer.parseInt(request.getParameter("state")));
					lattice.setSpecification(request.getParameter("specification"));
					LatticeDAO latticeDAO=new LatticeDAO();
				try
				{
					if (operator.equals("add"))
					{
						latticeDAO.insert(lattice);
						message="成功添加格子!";
						returnpage="/lattice/addLattice.jsp";
					}
					else
					{
						latticeDAO.update(lattice);
						message="成功修改格子!";
						returnpage="/lattice/modifyLattice.jsp";
					}

				}catch(Exception e)
				{
					if (operator.equals("add"))
						message="添加格子失败!";
					else
						message="修改格子失败!";
				}

			}else if (operator.equals("delete"))
			{
				returnpage="/lattice/deleteLattice.jsp";
				LatticeDAO latticeDAO=new LatticeDAO();
				int id=Integer.parseInt(request.getParameter("latid"));
			    	try
			    	{
			    		latticeDAO.deleteById(id);
			    		message="成功删除格子!";
			    	}catch(Exception e)
			    	{
			    		message="删除格子失败!";
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
