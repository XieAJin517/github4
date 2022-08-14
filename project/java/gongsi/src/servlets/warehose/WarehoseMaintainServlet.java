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
		// TODO 自动生成的方法存根
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
						message="成功添加书位!";
						returnpage="/warehose/addWarehose.jsp";
					}
					else
					{
						warehoseDAO.update(warehose);
						message="成功修改书位!";
						returnpage="/warehose/modifyWarehose.jsp";
					}

				}catch(Exception e)
				{
					if (operator.equals("add"))
						message="添加仓库书位!";
					else
						message="修改仓库书位!";
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
					message="查询货架失败！";
				}
			    if (!findFL)
			    {
			    	try
			    	{
						warehoseDAO.deleteById(id);
			    		message="成功删除书位!";
			    	}catch(Exception e)
			    	{
			    		message="删除书位失败!";
			    	}
			    }else
			    	message="要删除的书位存在某些货架信息中！请先删除这些货架再删除该书位！";

			    }

			request.setAttribute("message", message);
			getServletConfig().getServletContext().getRequestDispatcher(returnpage).forward(request, response);
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		doGet(request, response);
	}


}
