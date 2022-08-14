package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Warehose;
import util.ConnOfDatabase;

public class WarehoseDAO {
	private Connection conn;
	public WarehoseDAO()
	{
		ConnOfDatabase sqlconn;
		sqlconn=new ConnOfDatabase();
		conn=sqlconn.getConn();
	}
	public List<Warehose> findAll() throws Exception
	{
		Statement stmt;
		String queryStr="select id,name,position,shelves_total,state,specification from warehose";
		//String queryStr="select * from warehose";
		ResultSet rs;
		List<Warehose> warehoses=new ArrayList<>();
		Warehose warehose;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				warehose=new Warehose();
				warehose.setId(rs.getInt("id"));
				warehose.setName(rs.getString("name"));
				warehose.setPosition(rs.getString("position"));
				warehose.setShelves_total(rs.getInt("shelves_total"));
				warehose.setState(rs.getInt("state"));
				warehose.setSpecification(rs.getString("specification"));
				warehoses.add(warehose);
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
		return warehoses;
	}

	public  Warehose findById(int id) throws Exception
	{
		Statement stmt;
		String queryStr="";
		ResultSet rs;
		stmt =conn.createStatement();
		Warehose warehose=new Warehose();
		try
		{
			queryStr="select id,name,position,shelves_total,state,specification from warehose where id="+id;
			rs=stmt.executeQuery(queryStr);

	        if (rs.next())
	        {
	        	warehose.setId(rs.getInt("id"));
				warehose.setName(rs.getString("name"));
				warehose.setPosition(rs.getString("position"));
				warehose.setShelves_total(rs.getInt("shelves_total"));
				warehose.setState(rs.getInt("state"));
				warehose.setSpecification(rs.getString("specification"));
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
		return warehose;
	}


	public  boolean findByIdbool(int id) throws Exception
	{
		Statement stmt;
		String queryStr="select id,name,position,shelves_total,state,specification from warehose where id="+id;
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
	public  List<Warehose> findByPage(String queryStr, Integer currentPage, Integer pageCount) throws Exception
	{
		List<Warehose> warehoses= new ArrayList<>();
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
				Warehose warehose=new Warehose();
				warehose.setId(rs.getInt("id"));
				warehose.setName(rs.getString("name"));
				warehose.setPosition(rs.getString("position"));
				warehose.setShelves_total(rs.getInt("shelves_total"));
				warehose.setState(rs.getInt("state"));
				warehose.setSpecification(rs.getString("specification"));
				warehoses.add(warehose);
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
		return warehoses;
	}
	//public abstract <T> boolean insert(T t) throws Exception;
	public boolean insert(Warehose warehose) throws Exception
	{
		PreparedStatement stmt;
		int ID=0;
		boolean insFlag=false;
		String insertStr="insert into warehose values(?,?,?,?,?,?)";
		stmt =conn.prepareStatement(insertStr);
		try
		{
			String queryStr="select max(ID) as id from warehose";
			Statement qstmt=conn.createStatement();
			ResultSet rs=qstmt.executeQuery(queryStr);
			if (rs.next())
			{
				ID=1+rs.getInt("id");
				warehose.setId(ID);
			}
			else
				ID=1;
			stmt.setInt(1, warehose.getId());
			stmt.setString(2,warehose.getName());
			stmt.setString(3, warehose.getPosition());
			stmt.setInt(4, warehose.getShelves_total());
			stmt.setInt(5, warehose.getState());
			stmt.setString(6, warehose.getSpecification());

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

	public  boolean update(Warehose warehose) throws Exception
	{
		PreparedStatement stmt;
		boolean updateFlag=false;
		String updateStr="update warehose set name=?,position=?,shelves_total=?,state=?,specification=? where id=?";
		stmt =conn.prepareStatement(updateStr);
		try
		{

			stmt.setString(1,warehose.getName());
			stmt.setString(2, warehose.getPosition());
			stmt.setInt(3, warehose.getShelves_total());
			stmt.setInt(4, warehose.getState());
			stmt.setString(5, warehose.getSpecification());
			stmt.setInt(6,warehose.getId());

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
	    	String deleteStr="delete from warehose where id=?";
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


}
