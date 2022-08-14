package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Lattice;
import util.ConnOfDatabase;

public class LatticeDAO {

	private Connection conn;
	public LatticeDAO()
	{
		ConnOfDatabase sqlconn;
		sqlconn=new ConnOfDatabase();
		conn=sqlconn.getConn();
	}
	public List<Lattice> findAll() throws Exception
	{
		Statement stmt;
		String queryStr="select latid,sheid,state,specification from lattice ";
		//String queryStr="select * from product";
		ResultSet rs;
		List<Lattice> lattices=new ArrayList<>();
		Lattice lattice;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			//int len=rs.getRow();
			while (rs.next())
			{
				lattice=new Lattice();
				lattice.setLatid(rs.getInt("latid"));
				lattice.setSheid(rs.getInt("sheid"));
				lattice.setState(rs.getInt("state"));
				lattice.setSpecification(rs.getString("specification"));
				lattices.add(lattice);
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
		return lattices;
	}

	public  Lattice findById(int id) throws Exception
	{
		Statement stmt;
		String queryStr="";
		ResultSet rs;
		stmt =conn.createStatement();
		Lattice lattice=new Lattice();
		try
		{
			queryStr="select latid,sheid,state,specification from lattice where latid="+id;
			rs=stmt.executeQuery(queryStr);

	        if (rs.next())
	        {
	        	lattice.setLatid(rs.getInt("latid"));
	        	lattice.setSheid(rs.getInt("sheid"));
				lattice.setState(rs.getInt("state"));
				lattice.setSpecification(rs.getString("specification"));
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
		return lattice;
	}


	public boolean findBySheid(int id) throws Exception
	{
		Statement stmt;
		String queryStr="select sheid from lattice  where sheid="+id;
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

	public List<Lattice> findBysheid(int id) throws Exception
	{
		Statement stmt;
		String queryStr="select latid,sheid,state,specification from lattice where sheid="+id;
		//String queryStr="select * from shelve";
		ResultSet rs;
		List<Lattice> lattices=new ArrayList<>();
		Lattice lattice;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			//int len=rs.getRow();
			while (rs.next())
			{
				lattice=new Lattice();
				lattice.setLatid(rs.getInt("latid"));
				lattice.setSheid(rs.getInt("sheid"));
				lattice.setState(rs.getInt("state"));
				lattice.setSpecification(rs.getString("specification"));
				lattices.add(lattice);
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
		return lattices;
	}

	public  List<Lattice> findByPage(String queryStr, Integer currentPage, Integer pageCount) throws Exception
	{
		List<Lattice> lattices= new ArrayList<>();
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
				Lattice lattice=new Lattice();
				lattice.setLatid(rs.getInt("latid"));
				lattice.setSheid(rs.getInt("sheid"));
				lattice.setState(rs.getInt("state"));
				lattice.setSpecification(rs.getString("specification"));
				lattices.add(lattice);
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
		return lattices;
	}
	//public abstract <T> boolean insert(T t) throws Exception;
	public boolean insert(Lattice lattice) throws Exception
	{
		PreparedStatement stmt;
		int latid=0;
		boolean insFlag=false;
		String insertStr="insert into lattice values(?,?,?,?)";
		stmt =conn.prepareStatement(insertStr);
		try
		{
			String queryStr="select max(latid) as mlatid from lattice";
			Statement qstmt=conn.createStatement();
			ResultSet rs=qstmt.executeQuery(queryStr);
			if (rs.next())
			{
				latid=1+rs.getInt("mlatid");
				lattice.setLatid(latid);
			}
			else
				latid=1;
			stmt.setInt(1,lattice.getLatid());
			stmt.setInt(2,lattice.getSheid());
			stmt.setInt(3,lattice.getState());
			stmt.setString(4,lattice.getSpecification());
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

	public  boolean update(Lattice lattice) throws Exception
	{
		PreparedStatement stmt;
		boolean updateFlag=false;
		String updateStr="update lattice set sheid=?,state=?,specification=? where latid=?";
		stmt =conn.prepareStatement(updateStr);
		try
		{

			stmt.setInt(1,lattice.getSheid());
			stmt.setInt(2,lattice.getState());
			stmt.setString(3,lattice.getSpecification());
			stmt.setInt(4,lattice.getLatid());
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
	    	String insertStr="delete from lattice where latid=?";
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