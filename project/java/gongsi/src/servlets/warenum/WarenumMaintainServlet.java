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
						message="成功添加库存信息!";
						returnpage="/warenum/addWarenum.jsp";

				}catch(Exception e)
				{
						message="添加库存信息失败!";
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
							message="成功修改库存信息!";
							returnpage="/warenum/addWarenum.jsp"; 
							//returnpage="/warenum/modifyWarenum.jsp";不能跳回修改页，会报500，通宵得到的教训，草； 

					}catch(Exception e)
					{
							message="修改库存信息失败!";
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
			    		message="成功删除库存信息!";
			    	}catch(Exception e)
			    	{
			    		message="删除库存信息失败!";
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
