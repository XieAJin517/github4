package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Shelve;
import util.ConnOfDatabase;

public class ShelveDAO {
	private Connection conn;
	public ShelveDAO()
	{
		ConnOfDatabase sqlconn;
		sqlconn=new ConnOfDatabase();
		conn=sqlconn.getConn();
	}
	public List<Shelve> findAll() throws Exception
	{
		Statement stmt;
		String queryStr="select sheid,lattice,whid,state,specification from shelve ";
		//String queryStr="select * from product";
		ResultSet rs;
		List<Shelve> shelves=new ArrayList<>();
		Shelve shelve;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			//int len=rs.getRow();
			while (rs.next())
			{
				shelve=new Shelve();
				shelve.setSheid(rs.getInt("sheid"));
				shelve.setLattice(rs.getInt("lattice"));
				shelve.setWhid(rs.getInt("whid"));
				shelve.setState(rs.getInt("state"));
				shelve.setSpecification(rs.getString("specification"));
				shelves.add(shelve);
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
		return shelves;
	}

	public  Shelve findById(int id) throws Exception
	{
		Statement stmt;
		String queryStr="";
		ResultSet rs;
		stmt =conn.createStatement();
		Shelve shelve=new Shelve();
		try
		{
			queryStr="select sheid,lattice,whid,state,specification from shelve where sheid="+id;
			rs=stmt.executeQuery(queryStr);

	        if (rs.next())
	        {
	        	shelve.setSheid(rs.getInt("sheid"));
				shelve.setLattice(rs.getInt("lattice"));
				shelve.setWhid(rs.getInt("whid"));
				shelve.setState(rs.getInt("state"));
				shelve.setSpecification(rs.getString("specification"));
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
		return shelve;
	}

	public  boolean findBySheidbool(int id) throws Exception
	{
		Statement stmt;
		String queryStr="select sheid,lattice,whid,state,specification from shelve where sheid="+id;
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
	public boolean findByWhid(int whid) throws Exception
	{
		Statement stmt;
		String queryStr="select whid from shelve where whid="+whid;
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

	public List<Shelve> findBywhid(int whid) throws Exception
	{
		Statement stmt;
		String queryStr="select sheid,lattice,whid,state,specification from shelve where whid="+whid;
		//String queryStr="select * from shelve";
		ResultSet rs;
		List<Shelve> shelves=new ArrayList<>();
		Shelve shelve;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			//int len=rs.getRow();
			while (rs.next())
			{
				shelve=new Shelve();
				shelve.setSheid(rs.getInt("sheid"));
				shelve.setLattice(rs.getInt("lattice"));
				shelve.setWhid(rs.getInt("whid"));
				shelve.setState(rs.getInt("state"));
				shelve.setSpecification(rs.getString("specification"));
				shelves.add(shelve);
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
		return shelves;
	}

	public  List<Shelve> findByPage(String queryStr, Integer currentPage, Integer pageCount) throws Exception
	{
		List<Shelve> shelves= new ArrayList<>();
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
				Shelve shelve=new Shelve();
				shelve.setSheid(rs.getInt("sheid"));
				shelve.setLattice(rs.getInt("lattice"));
				shelve.setWhid(rs.getInt("whid"));
				shelve.setState(rs.getInt("state"));
				shelve.setSpecification(rs.getString("specification"));
				shelves.add(shelve);
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
		return shelves;
	}
	//public abstract <T> boolean insert(T t) throws Exception;
	public boolean insert(Shelve shelve) throws Exception
	{
		PreparedStatement stmt;
		int sheid=0;
		boolean insFlag=false;
		String insertStr="insert into shelve values(?,?,?,?,?)";
		stmt =conn.prepareStatement(insertStr);
		try
		{
			String queryStr="select max(sheid) as msheid from shelve";
			Statement qstmt=conn.createStatement();
			ResultSet rs=qstmt.executeQuery(queryStr);
			if (rs.next())
			{
				sheid=1+rs.getInt("msheid");
				shelve.setSheid(sheid);
			}
			else
				sheid=1;
			stmt.setInt(1,shelve.getSheid());
			stmt.setInt(2,shelve.getLattice());
			stmt.setInt(3, shelve.getWhid());
			stmt.setInt(4, shelve.getState());
			stmt.setString(5, shelve.getSpecification());
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

	public  boolean update(Shelve shelve) throws Exception
	{
		PreparedStatement stmt;
		boolean updateFlag=false;
		String updateStr="update shelve set lattice=?,whid=?,state=?,specification=? where sheid=?";
		stmt =conn.prepareStatement(updateStr);
		try
		{

			stmt.setInt(1,shelve.getLattice());
			stmt.setInt(2, shelve.getWhid());
			stmt.setInt(3, shelve.getState());
			stmt.setString(4, shelve.getSpecification());
			stmt.setInt(5,shelve.getSheid());
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

	public boolean deleteById(int sheid) throws Exception
	{
		PreparedStatement stmt;
		boolean deleteFlag=false;
		try
		{
	    	String insertStr="delete from shelve where sheid=?";
			stmt =conn.prepareStatement(insertStr);
			stmt.setInt(1,sheid);
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
