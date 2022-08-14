package servlets.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Product;
import dao.P_orderDAO;
import dao.ProductDAO;
/**
 * Servlet implementation class ProductMaintain
 */
@WebServlet("/ProductMaintain")
public class ProductMaintainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductMaintainServlet() {
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

		if (operator!=null)  //operatorStr!=null��˵�������productEdit.jsp����׼���������ݵĲ��롢ɾ�����޸�
		{
			message=operator;
			if (operator.equals("add") ||operator.equals("modify"))
			{
				Product product1=new Product();
				if (operator.equals("modify"))
					product1.setProID(Integer.parseInt(request.getParameter("proID")));

				product1.setProName(request.getParameter("proName"));
				product1.setKindID(Integer.parseInt(request.getParameter("kindID")));
				product1.setPrice(Float.parseFloat(request.getParameter("price")));
				product1.setWareNum(Float.parseFloat(request.getParameter("wareNum")));
				product1.setProImage(request.getParameter("proImage"));

				ProductDAO pdao=new ProductDAO();
				try
				{
					if (operator.equals("add"))
					{
						pdao.insert(product1);
						message="�ɹ������Ʒ!";
						returnpage="/product/addProduct.jsp";
					}
					else
					{
						pdao.update(product1);
						message="�ɹ��޸���Ʒ!";
						returnpage="/product/modifyProduct.jsp";
					}

				}catch(Exception e)
				{
					if (operator.equals("add"))
						message="�����Ʒʧ��!";
					else
						message="�޸���Ʒʧ��!";
				}

			}else if (operator.equals("delete"))
			{
				returnpage="/product/deleteProduct.jsp";
				ProductDAO pdao=new ProductDAO();
				int proID=Integer.parseInt(request.getParameter("proID"));
				P_orderDAO p_orderdao=new P_orderDAO();
				boolean findFL=false;
				try{
					findFL=p_orderdao.findByProductID(proID);
				}catch(Exception e){
					message="��ѯ��Ʒʧ�ܣ�";
				}
			    if (!findFL)
			    {
			    	try
			    	{
			    		pdao.deleteById(proID);
			    		message="�ɹ�ɾ����Ʒ!";
			    	}catch(Exception e)
			    	{
			    		message="ɾ����Ʒʧ��!";
			    	}
			    }else
			    	message="Ҫɾ������Ʒ����ĳЩ�����У�����ɾ����Щ������ɾ������Ʒ��";
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
