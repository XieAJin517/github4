package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Customer;
import util.ConnOfDatabase;

public class CustomerDAO {
	private Connection conn;
	public CustomerDAO()
	{
		ConnOfDatabase sqlconn;
		sqlconn=new ConnOfDatabase();
		conn=sqlconn.getConn();
	}
	public List<Customer> findAll() throws Exception
	{
		Statement stmt;
		String queryStr="select * from customer";
		ResultSet rs;
		List<Customer> customers=new ArrayList<>();
		Customer customer;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				customer=new Customer();
				customer.setCustID(rs.getInt("custID"));
				customer.setCustName(rs.getString("comName"));
				customers.add(customer);
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
		return customers;
	}
	public Customer findBycustID(int custID) throws Exception
	{
		Statement stmt;
		String queryStr="";
		ResultSet rs;
		stmt =conn.createStatement();
		Customer customer=new Customer();
		try
		{
			queryStr="select custID,custname,pwd from customer where custID="+custID;
			rs=stmt.executeQuery(queryStr);

	        if (rs.next())
	        {
	        	customer.setCustID(custID);
	        	customer.setCustName(rs.getString("custname"));
	        	customer.setPwd(rs.getString("pwd"));
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
		return customer;
	}
}

