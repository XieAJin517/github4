package servlets.category;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Category;
import dao.CategoryDAO;
import dao.ProductDAO;


/**
 * Servlet implementation class CategoryMaintainServlet
 */
@WebServlet("/CategoryMaintainServlet")
public class CategoryMaintainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryMaintainServlet() {
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
		if (operator!=null)  //operatorStr!=null，说明请求从productEdit.jsp来，准备进行数据的插入、删除和修改
		{
			message=operator;
			if (operator.equals("add") ||operator.equals("modify"))
			{
				Category category1=new Category();
				if (operator.equals("modify"))
					category1.setKindID(Integer.parseInt(request.getParameter("kindID")));

				category1.setKindName(request.getParameter("kindName"));
				category1.setDescription(request.getParameter("description"));

				CategoryDAO cgdao=new CategoryDAO();
				try
				{
					if (operator.equals("add"))
					{
						cgdao.insert(category1);
						message="成功添加类别!";
						returnpage="/category/addCategory.jsp";
					}
					else
					{
						cgdao.update(category1);
						message="成功修改!";
						returnpage="/category/modifyCategory.jsp";
					}

				}catch(Exception e)
				{
					if (operator.equals("add"))
						message="添加类别失败!";
					else
						message="修改类别失败!";
				}

			}else if (operator.equals("delete"))
			{
				returnpage="/category/deleteCategory.jsp";
				CategoryDAO cgdao=new CategoryDAO();
				int kindID=Integer.parseInt(request.getParameter("kindID"));
				ProductDAO productdao=new ProductDAO();
				boolean findFL=false;
				try{
					findFL=productdao.findByKindID(kindID);
				}catch(Exception e){
					message="查询类别失败！";
				}
			    if (!findFL)
			    {
			    	try
			    	{
			    		cgdao.deleteById(kindID);
			    		message="成功删除类别!";
			    	}catch(Exception e)
			    	{
			    		message="删除类别失败!";
			    	}
			    }else
			    	message="要删除的类别中存在商品！请先删除这些商品再删除类别！";
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
