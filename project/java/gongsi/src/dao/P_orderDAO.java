package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.OrderItem;
import bean.P_order;
import util.ConnOfDatabase;

public class P_orderDAO{
	private Connection conn;
	public P_orderDAO()
	{
		ConnOfDatabase sqlconn;
		sqlconn=new ConnOfDatabase();
		conn=sqlconn.getConn();
	}
	public List<P_order> findAll() throws Exception
	{
		Statement stmt;
		String queryStr="select orderID,empName,comName,orderDate,total from p_order o, customer c,employee e where o.empID=e.empID and o.custID=c.custID order by orderID";
		ResultSet rs;
		List<P_order> p_orders=new ArrayList<>();
		P_order p_order;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				p_order=new P_order();
				p_order.setOrderID(rs.getInt("orderID"));
				p_order.setEmpName(rs.getString("empName"));
				p_order.setComName(rs.getString("comName"));
				p_order.setOrderDate(rs.getDate("orderDate"));
				p_order.setTotal(rs.getFloat("total"));
				p_orders.add(p_order);
			}
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return p_orders;
	}

	public List<P_order> findByOrderDate(String numberBegin,String numberEnd) throws Exception
	{
		Statement stmt;
		String queryStr="select orderID,empName,comName,orderDate,total from p_order o, customer c,employee e where o.empID=e.empID and o.custID=c.custID and orderdate>='"+numberBegin+"' and orderdate<='"+numberEnd+"' order by orderID";
		System.out.println("queryStr"+queryStr);
		ResultSet rs;
		List<P_order> p_orders=new ArrayList<>();
		P_order p_order;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				p_order=new P_order();
				p_order.setOrderID(rs.getInt("orderID"));
				p_order.setEmpName(rs.getString("empName"));
				p_order.setComName(rs.getString("comName"));
				p_order.setOrderDate(rs.getDate("orderDate"));
				p_order.setTotal(rs.getFloat("total"));
				p_orders.add(p_order);
			}
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return p_orders;
	}

	public List<OrderItem> findDetailById(int id) throws Exception
	{
		Statement stmt;
		String queryStr="select orderId,o.proId,proname,kindname,buyprice,buynum,buynum*buyprice total from product p, orderitem o,category c where p.kindID=c.kindID and p.proID=o.proID and o.orderID="+id;
		ResultSet rs;
		List<OrderItem> orderItems=new ArrayList<>();
		OrderItem orderItem;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				orderItem=new OrderItem();
				orderItem.setProID(rs.getInt("o.proId"));
				orderItem.setOrderID(rs.getInt("orderId"));
				orderItem.setProName(rs.getString("proName"));
				orderItem.setKindName(rs.getString("kindName"));
				orderItem.setBuyprice(rs.getFloat("buyprice"));
				orderItem.setBuyNum(rs.getFloat("buynum"));
				orderItem.setTotalMoney(rs.getFloat("total"));
				orderItems.add(orderItem);
			}
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return orderItems;
	}

	public P_order findById(int id) throws Exception
	{
		int orderID=id;
		Statement stmt;
		String queryStr="select orderID,o.custID custID,o.empID empID,empName,comName,orderDate, total from p_order o, customer c,employee e where o.empID=e.empID and o.custID=c.custID and orderID="+orderID;
		ResultSet rs;
		P_order p_order=new P_order();
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				p_order=new P_order();
				p_order.setOrderID(rs.getInt("orderID"));
				p_order.setCustID(rs.getInt("custID"));
				p_order.setEmpID(rs.getInt("empID"));
				p_order.setEmpName(rs.getString("empName"));
				p_order.setComName(rs.getString("comName"));
				p_order.setOrderDate(rs.getDate("orderDate"));
				p_order.setTotal(rs.getFloat("total"));
			}
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return p_order;
	}

	public List<P_order> findByEmployeeName(String name) throws Exception
	{
		Statement stmt;
		String queryStr="select orderID,empName,comName,orderDate, total from p_order o, customer c,employee e where o.empID=e.empID and o.custID=c.custID and e.empName='"+name+"'";
		ResultSet rs;
		List<P_order> p_orders=new ArrayList<>();
		P_order p_order;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				p_order=new P_order();
				p_order.setOrderID(rs.getInt("orderID"));
				p_order.setEmpName(rs.getString("empName"));
				p_order.setComName(rs.getString("comName"));
				p_order.setOrderDate(rs.getDate("orderDate"));
				p_order.setTotal(rs.getFloat("total"));
				p_orders.add(p_order);
			}
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return p_orders;
	}

	public List<P_order> findByCustomerName(String name) throws Exception
	{
		Statement stmt;
		String queryStr="select orderID,empName,comName,orderDate, total from p_order o, customer c,employee e where o.empID=e.empID and o.custID=c.custID and c.comName='"+name+"'";
		ResultSet rs;
		List<P_order> p_orders=new ArrayList<>();
		P_order p_order;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				p_order=new P_order();
				p_order.setOrderID(rs.getInt("orderID"));
				p_order.setEmpName(rs.getString("empName"));
				p_order.setComName(rs.getString("comName"));
				p_order.setOrderDate(rs.getDate("orderDate"));
				p_order.setTotal(rs.getFloat("total"));
				p_orders.add(p_order);
			}
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return p_orders;
	}

	public boolean findByProductID(int proID) throws Exception
	{
		Statement stmt;
		String queryStr="select orderID from orderitem where proId="+proID;
		ResultSet rs;
		boolean finFl=false;

		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				finFl=true;
			}
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return finFl;
	}

	public boolean findByEmpID(int empID) throws Exception
	{
		Statement stmt;
		String queryStr="select empID from p_order where emdID="+empID;
		ResultSet rs;
		boolean finFl=false;

		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				finFl=true;
			}
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return finFl;
	}


	public List<P_order> findByProductName(String name) throws Exception
	{
		Statement stmt;
		String queryStr="select o.orderID,empName,comName,orderDate, total from p_order o, orderitem i,product p, customer c,employee e where o.orderId=i.orderId and i.proId=p.proId and o.empID=e.empID and o.custID=c.custID and p.proName='"+name+"'";
		ResultSet rs;
		List<P_order> p_orders=new ArrayList<>();
		P_order p_order;

		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				p_order=new P_order();
				p_order.setOrderID(rs.getInt("orderID"));
				p_order.setEmpName(rs.getString("empName"));
				p_order.setComName(rs.getString("comName"));
				p_order.setOrderDate(rs.getDate("orderDate"));
				p_order.setTotal(rs.getFloat("total"));
				p_orders.add(p_order);
			}
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return p_orders;
	}



	public List<P_order> findByEmpId(int id) throws Exception
	{
		Statement stmt;
		String queryStr="select orderID,empName,comName,orderDate, total from p_order o, customer c,employee e where o.empID=e.empID and o.custID=c.custID and o.empID="+id;
		ResultSet rs;
		List<P_order> p_orders=new ArrayList<>();
		P_order p_order;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				p_order=new P_order();
				p_order.setOrderID(rs.getInt("orderID"));
				p_order.setEmpName(rs.getString("empName"));
				p_order.setComName(rs.getString("comName"));
				p_order.setOrderDate(rs.getDate("orderDate"));
				p_order.setTotal(rs.getFloat("total"));
				p_orders.add(p_order);
			}
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return p_orders;
	}


	public List<P_order> findBycustId(int id) throws Exception
	{
		Statement stmt;
		String queryStr="select orderID,empName,comName,orderDate, total from p_order o, customer c,employee e where  o.empID=e.empID and o.custID=c.custID and o.custID="+id;
		ResultSet rs;
		List<P_order> p_orders=new ArrayList<>();
		P_order p_order;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				p_order=new P_order();
				p_order.setOrderID(rs.getInt("orderID"));
				p_order.setEmpName(rs.getString("empName"));
				p_order.setComName(rs.getString("comName"));
				p_order.setOrderDate(rs.getDate("orderDate"));
				p_order.setTotal(rs.getFloat("total"));
				p_orders.add(p_order);
			}
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return p_orders;
	}


	public List<P_order> findByTotal(Float numberBegin,Float numberEnd) throws Exception
	{
		Statement stmt;
		String queryStr="select orderID,empName,comName,orderDate, total from p_order o, customer c,employee e where  o.empID=e.empID and o.custID=c.custID and total>="+numberBegin+" and total<="+numberEnd;
		ResultSet rs;
		List<P_order> p_orders=new ArrayList<>();
		P_order p_order;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				p_order=new P_order();
				p_order.setOrderID(rs.getInt("orderID"));
				p_order.setEmpName(rs.getString("empName"));
				p_order.setComName(rs.getString("comName"));
				p_order.setOrderDate(rs.getDate("orderDate"));
				p_order.setTotal(rs.getFloat("total"));
				p_orders.add(p_order);
			}
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return p_orders;
	}

	public List<P_order> findByPage(String queryStr, Integer currentPage, Integer pageCount) throws Exception
	{
		List<P_order> p_orders=new ArrayList<>();
		P_order p_order;
		Statement stmt;
		ResultSet rs;
		stmt =conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);

		try
		{
		rs=stmt.executeQuery(queryStr);
		if (rs.next())
		{
			rs.beforeFirst();
			if ((currentPage - 1) * pageCount > 0) {
			// 移动结果集数据到当前页
			rs.absolute((currentPage - 1) * pageCount);
			}
			if (currentPage==1)
			{
				rs.beforeFirst();
			}
				int i = 0; // Readed pages
				while (rs.next() && i < pageCount)
				{
				i++;
				p_order=new P_order();
				p_order.setOrderID(rs.getInt("orderID"));
				p_order.setEmpName(rs.getString("empName"));
				p_order.setComName(rs.getString("comName"));
				p_order.setOrderDate(rs.getDate("orderDate"));
				p_order.setTotal(rs.getFloat("total"));
				p_orders.add(p_order);
				}
		}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return p_orders;
	}
	public boolean insert(P_order p_order) throws Exception
	{
		PreparedStatement stmt;
		int orderID=0;
		boolean insFlag=false;
		String insertStr="insert into p_order values(?,?,?,?,?)";
		stmt =conn.prepareStatement(insertStr);

		try
		{
			String queryStr="select max(orderId) as morderId from p_order";
			Statement qstmt=conn.createStatement();
			ResultSet rs=qstmt.executeQuery(queryStr);
			if (rs.next())
			{
				orderID=1+rs.getInt("morderId");

			}else
				orderID=1;
			p_order.setOrderID(orderID);
			qstmt.close();
			stmt.setInt(1,p_order.getOrderID());
			stmt.setInt(2,p_order.getEmpID());
			stmt.setFloat(3, p_order.getCustID());

			java.util.Date curDate=new java.util.Date();
			java.sql.Date date=new java.sql.Date(curDate.getTime());

			stmt.setDate(4,date);

			stmt.setFloat(5,p_order.getTotal());
			stmt.executeUpdate();

			insFlag=true;
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return insFlag;
	}

	public boolean insertOrderDetail(List<OrderItem> orderItems) throws Exception
	{
		PreparedStatement stmt=null;
		int orderID=0;
		boolean insFlag=false;
		String insertStr="insert orderitem values(?,?,?,?)";
		stmt =conn.prepareStatement(insertStr);
		try
		{
			String queryStr="select max(orderId) as morderId from p_order";
			Statement qstmt=conn.createStatement();
			ResultSet rs=qstmt.executeQuery(queryStr);
			if (rs.next())
				orderID=rs.getInt("morderId");

			qstmt.close();
			for (OrderItem orderItem : orderItems) {

				stmt.setInt(1, orderID);
				stmt.setInt(2, orderItem.getProID());
				stmt.setFloat(3, orderItem.getBuyNum());
				stmt.setFloat(4, orderItem.getBuyprice());
				stmt.executeUpdate();
			}

			insFlag=true;
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}
		return insFlag;
	}


	public boolean update(P_order p_order) throws Exception
	{
		PreparedStatement stmt;
		boolean updateFlag=false;
		String updateStr="update p_order set empId=?,custId=?,orderdate=?,total=? where orderId=?";
		stmt =conn.prepareStatement(updateStr);
		try
		{
			stmt.setInt(1, p_order.getEmpID());
			stmt.setInt(2, p_order.getCustID());
			stmt.setDate(3, p_order.getOrderDate());
			stmt.setFloat(4,p_order.getTotal());
			stmt.setInt(5, p_order.getOrderID());
			stmt.executeUpdate();
			updateFlag=true;
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}

		return updateFlag;
	}

	public boolean updateOrderDetail(List<OrderItem> orderItems) throws Exception
	{
		PreparedStatement stmt=null;
		boolean updateFlag=false;
		String Str="delete from orderitem where orderId=?";

		stmt =conn.prepareStatement(Str);
		try
		{
			System.out.println("orderid="+ orderItems.get(0).getOrderID());
			stmt.setInt(1, orderItems.get(0).getOrderID());
			stmt.executeUpdate();
			Str="insert into orderitem values(?,?,?,?)";
			stmt =conn.prepareStatement(Str);
			for (OrderItem orderItem : orderItems) {
				stmt.setInt(1, orderItems.get(0).getOrderID()); //第一条商品肯定有订单号.
				stmt.setInt(2, orderItem.getProID());
				stmt.setFloat(3, orderItem.getBuyNum());
				stmt.setFloat(4, orderItem.getBuyprice());
				stmt.executeUpdate();
			}
			updateFlag=true;
		}catch (SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				stmt.close();
			} catch (SQLException e) {
			}
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}

		return updateFlag;
	}

	public boolean deleteById(int id) throws Exception
	{
		int orderId=id;
		PreparedStatement stmt;
		boolean deleteFlag=false;
		try
		{
	    	String deleteStr="delete from p_order where orderId=?";
			stmt =conn.prepareStatement(deleteStr);
			stmt.setInt(1,orderId);
			stmt.executeUpdate();
			deleteStr="delete from orderitem where orderId=?";
			stmt.setInt(1,orderId);
			stmt.executeUpdate();
			deleteFlag=true;
		}catch(SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}

		return deleteFlag;
	}

	public boolean deleteOrderDetail(OrderItem orderItem) throws Exception
	{
		PreparedStatement stmt;
		boolean deleteFlag=false;
		try
		{
	    	String deleteStr="delete from orderitem where orderId=? and proId=?";
			stmt =conn.prepareStatement(deleteStr);
			int orderID=orderItem.getOrderID();
			int proID=orderItem.getProID();
			stmt.setInt(1,orderID);
			stmt.setInt(2,proID);
			stmt.executeUpdate();
			deleteFlag=true;
		}catch(SQLException e)
		{
			e.printStackTrace();
		}finally
		{
			try {
				conn.close();
			} catch (SQLException e) {
			}
		}

		return deleteFlag;
	}
}
