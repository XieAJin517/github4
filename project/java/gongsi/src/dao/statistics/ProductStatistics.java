package dao.statistics;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.statistics.product.ProductTotal;
import util.ConnOfDatabase;

public class ProductStatistics {
	private Connection conn;
	public ProductStatistics()
	{
		ConnOfDatabase sqlconn;
		sqlconn=new ConnOfDatabase();
		conn=sqlconn.getConn();
	}
	public List<ProductTotal> SumByName(String queryStr) throws Exception
	{
		Statement stmt;
		ResultSet rs;
		List<ProductTotal> ptotals=new ArrayList<>();
		ProductTotal ptotal;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				ptotal=new ProductTotal();
				ptotal.setName(rs.getString(1));
				ptotal.setTotal(rs.getDouble(2));
				ptotals.add(ptotal);
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
		return ptotals;
	}

}
