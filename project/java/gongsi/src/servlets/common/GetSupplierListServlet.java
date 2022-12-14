package servlets.common;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bean.Supplier;
import dao.SupplierDAO;

/**
 * Servlet implementation class GetSupplierListServlet
 */
@WebServlet("/GetSupplierListServlet")
public class GetSupplierListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSupplierListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String message="";
		String nextSource=request.getQueryString();
		char currentchar;
		String nextPage="";
		int position1=0,position2=0;
		int firtAnd=0;
		String currentStr="";
		for(int i=0;i<nextSource.length();i++)
		{
			currentchar=nextSource.charAt(i);
			if (currentchar=='=')
				position1=i+1;

            if (currentchar=='&')
            {
            	if (firtAnd==0)
            	{
            		firtAnd=1;
            		position2=i-1;
            		nextPage=nextSource.substring(position1, position2+1)+"?"+nextSource.substring(position2+2,nextSource.length());

            		break;
            	}
            }
		}
		List<Supplier> suppliers=new ArrayList<Supplier>();
		SupplierDAO supplierDAO=new SupplierDAO();
		try
		{
			suppliers=supplierDAO.findAll();
		}catch(Exception e)
		{
			message="查找供应商信息失败";
		}
		HttpSession  session=request.getSession();
		session.setAttribute("suppliers", suppliers);//把类别信息放到session，否则会丢失

		getServletConfig().getServletContext().getRequestDispatcher(nextPage).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
