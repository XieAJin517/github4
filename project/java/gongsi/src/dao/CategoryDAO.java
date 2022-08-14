package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Category;
import util.ConnOfDatabase;
public class CategoryDAO {
	private Connection conn;
	public CategoryDAO()
	{
		ConnOfDatabase sqlconn;
		sqlconn=new ConnOfDatabase();
		conn=sqlconn.getConn();
	}
	public List<Category> findAll() throws Exception
	{
		Statement stmt;
		String queryStr="select * from category";
		ResultSet rs;
		List<Category> categorys=new ArrayList<>();
		Category category;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			//int len=rs.getRow();
			while (rs.next())
			{
				category=new Category();
				category.setKindID(rs.getInt("kindId"));
				category.setKindName(rs.getString("kindname"));
				categorys.add(category);
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
		return categorys;
	}
	public boolean insert(Category category) throws Exception
	{
		PreparedStatement stmt;
		int kindID=0;
		boolean insFlag=false;
		String insertStr="insert into category values(?,?,?)";
		stmt =conn.prepareStatement(insertStr);
		try
		{
			String queryStr="select max(kindID) as mkinId from category";
			Statement qstmt=conn.createStatement();
			ResultSet rs=qstmt.executeQuery(queryStr);
			if (rs.next())
			{
				kindID=1+rs.getInt("mkinId");
				category.setKindID(kindID);
			}
			else
				kindID=1;
			stmt.setInt(1,category.getKindID());
			stmt.setString(2,category.getKindName());
			stmt.setString(3, category.getDescription());
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
	public boolean deleteById(int id) throws Exception
	{
		PreparedStatement stmt;
		boolean deleteFlag=false;
		try
		{
	    	String deleteStr="delete from category where kindID=?";
			stmt =conn.prepareStatement(deleteStr);
			stmt.setInt(1,id);
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
	public  Category findById(int id) throws Exception
	{
		Statement stmt;
		String queryStr="";
		ResultSet rs;
		stmt =conn.createStatement();
		Category category=new Category();
		try
		{
			queryStr="select kindID,kindname,description from category where kindId="+id;
			rs=stmt.executeQuery(queryStr);

	        if (rs.next())
	        {
	        	category.setKindID(rs.getInt("kindID"));
	           	category.setKindName(rs.getString("kindname"));
	           	category.setDescription(rs.getString("description"));
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
		return category;
	}

	public  boolean update(Category category) throws Exception
	{
		PreparedStatement stmt;
		boolean updateFlag=false;
		String updateStr="update category set kindname=?,description=? where kindID=?";
		stmt =conn.prepareStatement(updateStr);
		try
		{
			stmt.setString(1,category.getKindName());
			stmt.setString(2, category.getDescription());
			stmt.setInt(3,category.getKindID());

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

	public List<Category> findByKindId(int id) throws Exception
	{
		Statement stmt;
		String queryStr="select kindId,kindname,description from category where kindId="+id;
		//String queryStr="select * from product";
		ResultSet rs;
		List<Category> categorys=new ArrayList<>();
		Category category;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			//int len=rs.getRow();
			while (rs.next())
			{
				category=new Category();
				category.setKindID(rs.getInt("kindId"));
				category.setKindName(rs.getString("kindname"));
				category.setDescription(rs.getString("description"));
				categorys.add(category);
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
		return categorys;
	}

	public  List<Category> findByPage(String queryStr, Integer currentPage, Integer pageCount) throws Exception
	{
		List<Category> categorys= new ArrayList<>();
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
				Category category=new Category();
				category.setKindID(rs.getInt("kindID"));
				category.setKindName(rs.getString("kindname"));
				category.setDescription(rs.getString("description"));
				categorys.add(category);
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
		return categorys;
	}

}
