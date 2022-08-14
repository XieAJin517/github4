package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.PriceChange;
import util.ConnOfDatabase;


public class PriceChangeDAO {
	private Connection conn;
	public PriceChangeDAO()
	{
		ConnOfDatabase sqlconn;
		sqlconn=new ConnOfDatabase();
		conn=sqlconn.getConn();
	}


	public List<PriceChange> findAll() throws Exception
	{
		Statement stmt;
		String queryStr="select * from price_change";
		ResultSet rs;
		List<PriceChange> pricechanges=new ArrayList<>();
		PriceChange pricechange;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);

			while (rs.next())
			{
				pricechange=new PriceChange();
				pricechange.setPriceChangeID(rs.getInt("price_change_id"));
				pricechange.setChangeDate(rs.getDate("change_date"));
				pricechange.setOpratorType(rs.getString("oprator_type"));
				pricechange.setPriceType(rs.getString("price_type"));
				pricechange.setProID(rs.getInt("proID"));
				pricechange.setOldPrice(rs.getFloat("old_price"));
				pricechange.setNewPrice(rs.getFloat("new_price"));
				pricechanges.add(pricechange);
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
		return pricechanges;
	}


public PriceChange findByProId1(int id) throws Exception
{
	Statement stmt;
	String queryStr="select * from price_change, product where product.proID=price_change.proID and product.proID=" +id;
	ResultSet rs;
	PriceChange pricechange=null;
	stmt =conn.createStatement();
	try
	{
		rs=stmt.executeQuery(queryStr);
		if (rs.next())
		{
			pricechange=new PriceChange();
			//pricechange.setProID(rs.getInt("proID"));
	    //pricechange.setPriceChangeID(rs.getInt("price_change_id"));
		//	pricechange.setChangeDate(rs.getDate("change_date"));
			//pricechange.setOpratorType(rs.getString("oprator_type"));
			pricechange.setPriceType(rs.getString("price_type"));
		//	pricechange.setOldPrice(rs.getFloat("old_price"));
		//	pricechange.setNewPrice(rs.getFloat("new_price"));
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
	return pricechange;
}

public  List<PriceChange> findByProId(int id) throws Exception
{
	Statement stmt;
	String queryStr="";
	ResultSet rs;
	stmt =conn.createStatement();
	List<PriceChange> pricechanges=new ArrayList<>();
	PriceChange pricechange;
	try
	{
		queryStr="select * from price_change, product where product.proID=price_change.proID and product.proID=" +id;
		rs=stmt.executeQuery(queryStr);

        if (rs.next())
        {
        	pricechange=new PriceChange();
        	pricechange.setProID(rs.getInt("proID"));
        	pricechange.setPriceChangeID(rs.getInt("price_change_id"));
        	pricechange.setChangeDate(rs.getDate("change_date"));
        	pricechange.setOldPrice(rs.getFloat("old_price"));
        	pricechange.setNewPrice(rs.getFloat("new_price"));
        	pricechange.setOpratorType(rs.getString("oprator_type"));
        	pricechange.setPriceType(rs.getString("price_type "));
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
	return pricechanges;
}


public boolean insert(PriceChange pricechange) throws Exception
{
	PreparedStatement stmt;
	int pricechangeID=0;
	boolean insFlag1=false;
	String insertStr="insert into price_change values(?,?,?,?,?,?,?)";
	stmt =conn.prepareStatement(insertStr);
	try
	{
		String queryStr="select max(price_change_id) as mpricechangeId from price_change";
		Statement qstmt=conn.createStatement();
		ResultSet rs=qstmt.executeQuery(queryStr);
		if (rs.next())
		{
			pricechangeID=1+rs.getInt("mpricechangeId");
			pricechange.setPriceChangeID(pricechangeID);
		}
		stmt.setInt(1,pricechange.getPriceChangeID());
		stmt.setDate(2,pricechange.getChangeDate());
		stmt.setString(3,pricechange.getOpratorType());
		stmt.setString(4,pricechange.getPriceType());
		stmt.setInt(5,pricechange.getProID());
		stmt.setFloat(6,pricechange.getOldPrice());
		stmt.setFloat(7,pricechange.getNewPrice());
		stmt.executeUpdate();
		insFlag1=true;
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
	return insFlag1;
}




public  boolean update(PriceChange pricechange) throws Exception
{
	PreparedStatement stmt;
	boolean updateFlag=false;
	String updateStr="update price_change set price_change_id=?,change_date=?,oprator_type=?,price_type=?,old_price=?,new_price=? where proID=?";
	stmt =conn.prepareStatement(updateStr);
	try
	{
		stmt.setInt(1,pricechange.getPriceChangeID());
		stmt.setDate(2,pricechange.getChangeDate());
		stmt.setString(3,pricechange.getOpratorType());
		stmt.setString(4,pricechange.getPriceType());
		stmt.setFloat(5,pricechange.getNewPrice());
		stmt.setFloat(6,pricechange.getOldPrice());
		stmt.setInt(7,pricechange.getProID());
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

public List<PriceChange> findDetailById(int id) throws Exception
{
	Statement stmt;
	String queryStr="select change_date,oprator_type,price_type,old_price,new_price from price_change where price_change.proid='"+id+"'";
	ResultSet rs;
	List<PriceChange> pricechanges=new ArrayList<>();
	PriceChange pricechange;
	stmt =conn.createStatement();
	try
	{
		rs=stmt.executeQuery(queryStr);
		while (rs.next())
		{
			pricechange=new PriceChange();
			pricechange.setChangeDate(rs.getDate("change_date"));
			pricechange.setOpratorType(rs.getString("oprator_type"));
			pricechange.setPriceType(rs.getString("price_type"));
			pricechange.setOldPrice(rs.getFloat("old_price"));
			pricechange.setNewPrice(rs.getFloat("new_price"));
			pricechanges.add(pricechange);
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
	return pricechanges;
}



public PriceChange findByProIdUpdate(int id) throws Exception
{
	Statement stmt;
	String queryStr="select price_change_id,change_date,oprator_type,price_type,old_price,new_price from price_change, product where product.proID=price_change.proID and product.proID=" +id;
	ResultSet rs;
	PriceChange pricechange=null;
	stmt =conn.createStatement();
	try
	{
		rs=stmt.executeQuery(queryStr);
		if (rs.next())
		{
			pricechange=new PriceChange();
			pricechange.setPriceChangeID(rs.getInt("price_change_id"));
			pricechange.setChangeDate(rs.getDate("change_date"));
			pricechange.setOpratorType(rs.getString("oprator_type"));
			pricechange.setPriceType(rs.getString("price_type"));
			pricechange.setOldPrice(rs.getFloat("old_price"));
			pricechange.setNewPrice(rs.getFloat("new_price"));
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
	return pricechange;
}

public boolean delete1(PriceChange pricechange) throws Exception
{

	PreparedStatement stmt;
	boolean deleteFlag1=false;
	String deleteStr="update price_change set price_change_id=?,change_date=?,oprator_type='删除',price_type='进价',old_price=?,new_price=0 where proID=?";
	stmt =conn.prepareStatement(deleteStr);
	try
	{

		stmt.setInt(1,pricechange.getPriceChangeID());
		stmt.setDate(2,pricechange.getChangeDate());
		stmt.setFloat(3,pricechange.getOldPrice());
		stmt.setInt(4,pricechange.getProID());
		stmt.executeUpdate();
		deleteFlag1=true;
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

	return deleteFlag1;
}


public boolean delete2(PriceChange pricechange) throws Exception
{

	PreparedStatement stmt;
	boolean deleteFlag2=false;
	String insertStr="insert into price_change values(?,?,?,?,?,?,?)";
	stmt =conn.prepareStatement(insertStr);
	try
	{

		stmt.setInt(1,pricechange.getPriceChangeID());
		stmt.setDate(2,pricechange.getChangeDate());
		stmt.setString(3,pricechange.getOpratorType());
		stmt.setString(4, pricechange.getPriceType());
		stmt.setFloat(5,pricechange.getOldPrice());
		stmt.setFloat(6,pricechange.getNewPrice());
		stmt.setInt(7,pricechange.getProID());
		stmt.executeUpdate();
		deleteFlag2=true;
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
	return deleteFlag2;
}




public boolean delete3(PriceChange pricechange) throws Exception
{

	PreparedStatement stmt;
	boolean deleteFlag=false;
	String deleteStr="update price_change set price_change_id=?,change_date=?,oprator_type='删除',price_type='节日价',old_price=?,new_price=0 where proID=?";
	stmt =conn.prepareStatement(deleteStr);
	try
	{
		stmt.setInt(1,pricechange.getPriceChangeID());
		stmt.setDate(2,pricechange.getChangeDate());
		stmt.setFloat(3,pricechange.getOldPrice());
		stmt.setInt(4,pricechange.getProID());
		stmt.executeUpdate();
		deleteFlag=true;
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

	return deleteFlag;
}

public boolean delete5(PriceChange pricechange) throws Exception
{

	PreparedStatement stmt;
	boolean deleteFlag=false;
	String deleteStr="update price_change set price_change_id=?,change_date=?,oprator_type='删除',price_type='售价',old_price=?,new_price=0 where proID=?";
	stmt =conn.prepareStatement(deleteStr);
	try
	{
		stmt.setInt(1,pricechange.getPriceChangeID());
		stmt.setDate(2,pricechange.getChangeDate());
		stmt.setFloat(3,pricechange.getOldPrice());
		stmt.setInt(4,pricechange.getProID());
		stmt.executeUpdate();
		deleteFlag=true;
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

	return deleteFlag;
}

}