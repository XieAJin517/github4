package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Product;
import util.ConnOfDatabase;

public class ProductDAO{
	private Connection conn;
	public ProductDAO()
	{
		ConnOfDatabase sqlconn;
		sqlconn=new ConnOfDatabase();
		conn=sqlconn.getConn();
	}
	public List<Product> findAll() throws Exception
	{
		Statement stmt;
		String queryStr="select proID,proname,product.kindId,kindname,price,warenum,proimage from product,category where product.kindId=category.kindId";
		//String queryStr="select * from product";
		ResultSet rs;
		List<Product> products=new ArrayList<>();
		Product product;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			//int len=rs.getRow();
			while (rs.next())
			{
				product=new Product();
				product.setKindID(rs.getInt("product.kindId"));
				product.setKindName(rs.getString("kindname"));
				product.setProID(rs.getInt("proID"));
				product.setProName(rs.getString("proname"));
				product.setPrice(rs.getFloat("price"));
				product.setWareNum(rs.getInt("warenum"));
				product.setProImage(rs.getString("proimage"));
				products.add(product);
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
		return products;
	}

	public  Product findById(int id) throws Exception
	{
		Statement stmt;
		String queryStr="";
		ResultSet rs;
		stmt =conn.createStatement();
		Product product=new Product();
		try
		{
			queryStr="select proID,product.kindId,proname,kindname,price,warenum,proimage from product, category where product.kindId=category.kindId and product.proID="+id;
			rs=stmt.executeQuery(queryStr);

	        if (rs.next())
	        {
	        	product.setProID(rs.getInt("proID"));
	        	product.setKindID(rs.getInt("product.kindId"));
	        	product.setKindName(rs.getString("kindname"));
	        	product.setProName(rs.getString("proName"));
	        	product.setPrice(rs.getFloat("price"));
	        	product.setWareNum(rs.getInt("wareNum"));
	        	product.setProImage(rs.getString("proimage"));
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
		return product;
	}


	public Product findByProId1(int id) throws Exception
	{
		Statement stmt;
		String queryStr="select price.proID,proname,in_price,sale_price,holiday_price from price, product where product.proID=price.proID and product.proID=" +id;
		ResultSet rs;
		Product product=new Product();
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			if (rs.next())
			{
				product.setProID(rs.getInt("proID"));
				product.setProName(rs.getString("proName"));
				product.setInPrice(rs.getFloat("in_price"));
				product.setHolidayPrice(rs.getFloat("holiday_price"));
				product.setSalePrice(rs.getFloat("sale_price"));

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
		return product;
	}



	public boolean findByKindID(int kindID) throws Exception
	{
		Statement stmt;
		String queryStr="select kindID from product where kindId="+kindID;
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

	public List<Product> findByKindId(int id) throws Exception
	{
		Statement stmt;
		String queryStr="select proID,proname,product.kindId,kindname,price,warenum from product,category where product.kindId=category.kindId and product.kindId="+id;
		//String queryStr="select * from product";
		ResultSet rs;
		List<Product> products=new ArrayList<>();
		Product product;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			//int len=rs.getRow();
			while (rs.next())
			{
				product=new Product();
				product.setKindID(rs.getInt("product.kindId"));
				product.setKindName(rs.getString("kindname"));
				product.setProID(rs.getInt("proID"));
				product.setProName(rs.getString("proname"));
				product.setPrice(rs.getFloat("price"));
				product.setWareNum(rs.getInt("warenum"));
				products.add(product);
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
		return products;
	}

	public List<Product> findByPrice(Float priceBegin,Float priceEnd) throws Exception
	{
		Statement stmt;
		String queryStr="select proID,proname,product.kindId,kindname,price,warenum from product,category where product.kindId=category.kindId and price>="+priceBegin+" and price<="+priceEnd;
		//String queryStr="select * from product";
		ResultSet rs;
		List<Product> products=new ArrayList<>();
		Product product;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			//int len=rs.getRow();
			while (rs.next())
			{
				product=new Product();
				product.setKindID(rs.getInt("product.kindId"));
				product.setKindName(rs.getString("kindname"));
				product.setProID(rs.getInt("proID"));
				product.setProName(rs.getString("proname"));
				product.setPrice(rs.getFloat("price"));
				product.setWareNum(rs.getInt("warenum"));
				products.add(product);
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
		return products;
	}

	public List<Product> findByWhareNumber(Float whareNumBegin,Float whareNumEnd) throws Exception
	{
		Statement stmt;
		String queryStr="select proID,proname,product.kindId,kindname,price,warenum from product,category where product.kindId=category.kindId and warenum>="+whareNumBegin+" and warenum<="+whareNumEnd;
		//String queryStr="select * from product";
		ResultSet rs;
		List<Product> products=new ArrayList<>();
		Product product;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			//int len=rs.getRow();
			while (rs.next())
			{
				product=new Product();
				product.setKindID(rs.getInt("product.kindId"));
				product.setKindName(rs.getString("kindname"));
				product.setProID(rs.getInt("proID"));
				product.setProName(rs.getString("proname"));
				product.setPrice(rs.getFloat("price"));
				product.setWareNum(rs.getInt("warenum"));
				products.add(product);
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
		return products;
	}


	public  List<Product> findByPage(String queryStr, Integer currentPage, Integer pageCount) throws Exception
	{
		List<Product> products= new ArrayList<>();
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
				Product pro=new Product();
				pro.setProID(rs.getInt("proID"));
				pro.setProName(rs.getString("proname"));
				pro.setKindName(rs.getString("kindname"));
				pro.setPrice(rs.getFloat("price"));
				pro.setWareNum(rs.getInt("warenum"));
				pro.setProImage(rs.getString("proimage"));
				products.add(pro);
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
		return products;
	}
	//public abstract <T> boolean insert(T t) throws Exception;
	public boolean insert(Product product) throws Exception
	{
		PreparedStatement stmt;
		int proID=0;
		boolean insFlag=false;
		String insertStr="insert into product values(?,?,?,?,?,?,?)";
		stmt =conn.prepareStatement(insertStr);
		try
		{
			String queryStr="select max(proID) as mproId from product";
			Statement qstmt=conn.createStatement();
			ResultSet rs=qstmt.executeQuery(queryStr);
			if (rs.next())
			{
				proID=1+rs.getInt("mproId");
				product.setProID(proID);
			}
			else
				proID=1;
			stmt.setInt(1,product.getProID());
			stmt.setString(2,product.getProName());
			stmt.setInt(3, product.getKindID());
			stmt.setFloat(4, product.getPrice());
			stmt.setFloat(5, product.getWareNum());
			stmt.setString(6, product.getProImage());
			stmt.setInt(7, 0);

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

	public  boolean update(Product product) throws Exception
	{
		PreparedStatement stmt;
		boolean updateFlag=false;
		String updateStr="update product set proname=?,kindID=?,price=?,warenum=?,proimage=? where proID=?";
		stmt =conn.prepareStatement(updateStr);
		try
		{
			stmt.setString(1,product.getProName());
			stmt.setInt(2, product.getKindID());
			stmt.setFloat(3, product.getPrice());
			stmt.setFloat(4, product.getWareNum());
			stmt.setString(5, product.getProImage());
			stmt.setInt(6,product.getProID());

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
		int proId=id;
		PreparedStatement stmt;
		boolean deleteFlag=false;
		try
		{
	    	String insertStr="delete from product where proID=?";
			stmt =conn.prepareStatement(insertStr);
			stmt.setInt(1,proId);
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
	public List<Product> findPart() throws Exception
	{
		Statement stmt;
		String queryStr="select proID,proname,product.kindId,price,warenum from product where proID  not in (select proID from price where proID)";
		ResultSet rs;
		List<Product> products=new ArrayList<>();
		Product product;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);

			while (rs.next())
			{
				product=new Product();
				product.setKindID(rs.getInt("product.kindId"));
				product.setProID(rs.getInt("proID"));
				product.setProName(rs.getString("proname"));
				product.setPrice(rs.getFloat("price"));
				product.setWareNum(rs.getInt("warenum"));
				products.add(product);
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
		return products;
	}


	public List<Product> findPart1() throws Exception
	{
		Statement stmt;
		String queryStr="select proID,proname,product.kindId,price,warenum from product where proID   in (select proID from price where proID)";
		ResultSet rs;
		List<Product> products=new ArrayList<>();
		Product product;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);

			while (rs.next())
			{
				product=new Product();
				product.setKindID(rs.getInt("product.kindId"));
				product.setProID(rs.getInt("proID"));
				product.setProName(rs.getString("proname"));
				product.setPrice(rs.getFloat("price"));
				product.setWareNum(rs.getInt("warenum"));
				products.add(product);
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
		return products;
	}

}
