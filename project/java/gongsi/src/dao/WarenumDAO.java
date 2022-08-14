package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Warenum;
import util.ConnOfDatabase;

public class WarenumDAO {
	private Connection conn;
	public WarenumDAO()
	{
		ConnOfDatabase sqlconn;
		sqlconn=new ConnOfDatabase();
		conn=sqlconn.getConn();
	}
	public List<Warenum> findAll() throws Exception
	{
		Statement stmt;
		String queryStr="select proid,name,latid,warenum from warenum ";
		//String queryStr="select * from product";
		ResultSet rs;
		List<Warenum> warenums=new ArrayList<>();
		Warenum warenum;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				warenum=new Warenum();
				warenum.setProid(rs.getInt("proid"));
				warenum.setName(rs.getString("name"));
				warenum.setLatid(rs.getInt("latid"));
				warenum.setWarenum(rs.getInt("warenum"));
				warenums.add(warenum);
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
		return warenums;
	}

	public  Warenum findById(int id) throws Exception
	{
		Statement stmt;
		String queryStr="";
		ResultSet rs;
		stmt =conn.createStatement();
		Warenum warenum=new Warenum();
		try
		{
			queryStr="select proid,name,latid,warenum from warenum where proid="+id;
			rs=stmt.executeQuery(queryStr);

	        if (rs.next())
	        {
	        	warenum.setProid(rs.getInt("proid"));
	        	warenum.setName(rs.getString("name"));
	        	warenum.setLatid(rs.getInt("latid"));
				warenum.setWarenum(rs.getInt("warenum"));
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
		return warenum;
	}


	public boolean findByLatid(int id) throws Exception
	{
		Statement stmt;
		String queryStr="select latid from warenum  where latid="+id;
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

	public List<Warenum> findBylatid(int id) throws Exception
	{
		Statement stmt;
		String queryStr="select proid,name,latid,warenum from warenum where latid="+id;
		//String queryStr="select * from shelve";
		ResultSet rs;
		List<Warenum> warenums=new ArrayList<>();
		Warenum warenum;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				warenum=new Warenum();
				warenum.setProid(rs.getInt("proid"));
				warenum.setName(rs.getString("name"));
				warenum.setLatid(rs.getInt("latid"));
				warenum.setWarenum(rs.getInt("warenum"));
				warenums.add(warenum);
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
		return warenums;
	}

	public  List<Warenum> findByPage(String queryStr, Integer currentPage, Integer pageCount) throws Exception
	{
		List<Warenum> warenums= new ArrayList<>();
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
				Warenum warenum=new Warenum();
				warenum.setProid(rs.getInt("proid"));
				warenum.setName(rs.getString("name"));
				warenum.setLatid(rs.getInt("latid"));
				warenum.setWarenum(rs.getInt("warenum"));
				warenums.add(warenum);
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
		return warenums;
	}
	//public abstract <T> boolean insert(T t) throws Exception;
	public boolean insert(Warenum warenum) throws Exception
	{
		PreparedStatement stmt;
		boolean insFlag=false;
		String insertStr="insert into warenum values(?,?,?,?)";
		stmt =conn.prepareStatement(insertStr);
		try
		{
			stmt.setInt(1,warenum.getProid());
			stmt.setString(2, warenum.getName());
			stmt.setInt(3,warenum.getLatid());
			stmt.setInt(4,warenum.getWarenum());
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

	public  boolean update(Warenum warenum) throws Exception
	{
		PreparedStatement stmt;
		boolean updateFlag=false;
		String updateStr="update warenum set latid=?,warenum=? where proid=?";
		stmt =conn.prepareStatement(updateStr);
		try
		{
			stmt.setInt(1,warenum.getLatid());
			stmt.setInt(2,warenum.getWarenum());
			stmt.setInt(3,warenum.getProid());
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
		PreparedStatement stmt;
		boolean deleteFlag=false;
		try
		{
	    	String insertStr="delete from warenum where proid=?";
			stmt =conn.prepareStatement(insertStr);
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
}
