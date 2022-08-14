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

import bean.Warehose;
import dao.WarehoseDAO;

@WebServlet("/GetWarehoseListServlet")
public class GetWarehoseListServlet  extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public GetWarehoseListServlet() {
		// TODO �Զ����ɵĹ��캯�����
		super();
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO �Զ����ɵķ������
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

		List<Warehose> warehoses=new ArrayList<>();
		WarehoseDAO warehoseDAO=new WarehoseDAO();


		try
		{
			warehoses=warehoseDAO.findAll();
		}catch(Exception e)
		{
			message="���Ҳֿ���Ϣʧ��";
		}
		HttpSession  session=request.getSession();
		session.setAttribute("warehoses", warehoses);//�������Ϣ�ŵ�session������ᶪʧ

		getServletConfig().getServletContext().getRequestDispatcher(nextPage).forward(request, response);

	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO �Զ����ɵķ������

	}


}
