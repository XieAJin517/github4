package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Supplier;
import util.ConnOfDatabase;

public class SupplierDAO {
	private Connection conn;
	public SupplierDAO()
	{
		ConnOfDatabase sqlconn;
		sqlconn=new ConnOfDatabase();
		conn=sqlconn.getConn();
	}
	public List<Supplier> findAll() throws Exception
	{
		Statement stmt;
		String queryStr="select * from supplier";
		ResultSet rs;
		List<Supplier> suppliers=new ArrayList<>();
		Supplier supplier;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				supplier=new Supplier();
				supplier.setSupplierID(rs.getInt("supplierID"));
				supplier.setSuppliername(rs.getString("supplierName"));
				supplier.setRelaname(rs.getString("relaname"));
				supplier.setPhone(rs.getString("phone"));
				supplier.setAddress(rs.getString("address"));
				supplier.setZipcode(rs.getString("zipcode"));
				supplier.setPwd(rs.getString("pwd"));
				supplier.setDescriptio(rs.getString("descriptio"));
				supplier.setBusinesslicens(rs.getString("businesslicens"));
				suppliers.add(supplier);
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
		return suppliers;
	}
	public boolean findBysupid(int id) throws Exception
	{
		Statement stmt;
		String queryStr="select supplierID from supplier where supplierID="+id;
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
	public Supplier findByID(int ID) throws Exception
	{
		Statement stmt;
		String queryStr="";
		ResultSet rs;
		stmt =conn.createStatement();
		Supplier supplier=new Supplier();
		try
		{
			queryStr="select supplierID,suppliername,pwd from supplier where supplierID="+ID;
			rs=stmt.executeQuery(queryStr);

	        if (rs.next())
	        {
	        	supplier.setSupplierID(rs.getInt("supplierID"));
				supplier.setSuppliername(rs.getString("supplierName"));
				supplier.setPwd(rs.getString("pwd"));
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
		return supplier;
	}
	public Supplier findBysupplierID(int supplierID) throws Exception
	{
		Statement stmt;
		String queryStr="";
		ResultSet rs;
		stmt =conn.createStatement();
		Supplier supplier=new Supplier();
		try
		{
			queryStr="select supplierID,suppliername,relaname,phone,address,zipcode,pwd,descriptio,businesslicens from supplier where supplierID="+supplierID;
			rs=stmt.executeQuery(queryStr);

	        if (rs.next())
	        {
	        	supplier.setSupplierID(rs.getInt("supplierID"));
				supplier.setSuppliername(rs.getString("supplierName"));
				supplier.setRelaname(rs.getString("relaname"));
				supplier.setPhone(rs.getString("phone"));
				supplier.setAddress(rs.getString("address"));
				supplier.setZipcode(rs.getString("zipcode"));
				supplier.setPwd(rs.getString("pwd"));
				supplier.setDescriptio(rs.getString("descriptio"));
				supplier.setBusinesslicens(rs.getString("businesslicens"));
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
		return supplier;
	}

	public  List<Supplier> findByPage(String queryStr, Integer currentPage, Integer pageCount) throws Exception
	{
		List<Supplier> suppliers= new ArrayList<>();
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
				Supplier supplier=new Supplier();
				supplier.setSupplierID(rs.getInt("supplierID"));
				supplier.setSuppliername(rs.getString("supplierName"));
				supplier.setRelaname(rs.getString("relaname"));
				supplier.setPhone(rs.getString("phone"));
				supplier.setAddress(rs.getString("address"));
				supplier.setZipcode(rs.getString("zipcode"));
				supplier.setPwd(rs.getString("pwd"));
				supplier.setDescriptio(rs.getString("descriptio"));
				supplier.setBusinesslicens(rs.getString("businesslicens"));
				suppliers.add(supplier);
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
		return suppliers;
	}
	public boolean insert(Supplier supplier) throws Exception
	{
		PreparedStatement stmt;
		int supID=0;
		boolean insFlag=false;
		String insertStr="insert into supplier values(?,?,?,?,?,?,?,?,?)";
		stmt =conn.prepareStatement(insertStr);
		try
		{
			String queryStr="select max(supplierID) as msupID from supplier";
			Statement qstmt=conn.createStatement();
			ResultSet rs=qstmt.executeQuery(queryStr);
			if (rs.next())
			{
				supID=1+rs.getInt("msupID");
				supplier.setSupplierID(supID);
			}
			else
				supID=1;
			
			stmt.setInt(1,supplier.getSupplierID());
			stmt.setString(2,supplier.getSuppliername());
			stmt.setString(3, supplier.getRelaname());
			stmt.setString(4, supplier.getPhone());
			stmt.setString(5, supplier.getAddress());
			stmt.setString(6, supplier.getZipcode());
			stmt.setString(7, supplier.getPwd());
			stmt.setString(8, supplier.getDescriptio());
			stmt.setString(9, supplier.getBusinesslicens());
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

	public  boolean update(Supplier supplier) throws Exception
	{
		PreparedStatement stmt;
		boolean updateFlag=false;
		String updateStr="update supplier set suppliername=?,relaname=?,phone=?,address=?,zipcode=?,pwd=?,descriptio=?,businesslicens=? where supplierID=?";
		stmt =conn.prepareStatement(updateStr);
		try
		{
			stmt.setString(1,supplier.getSuppliername());
			stmt.setString(2, supplier.getRelaname());
			stmt.setString(3, supplier.getPhone());
			stmt.setString(4, supplier.getAddress());
			stmt.setString(5, supplier.getZipcode());
			stmt.setString(6, supplier.getPwd());
			stmt.setString(7, supplier.getDescriptio());
			stmt.setString(8, supplier.getBusinesslicens());
			stmt.setInt(9,supplier.getSupplierID());
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

	public boolean deleteById(int id) throws Exception
	{
		int supplierID=id;
		PreparedStatement stmt;
		boolean deleteFlag=false;
		try
		{
	    	String insertStr="delete from supplier where supplierID=?";
			stmt =conn.prepareStatement(insertStr);
			stmt.setInt(1,supplierID);
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

