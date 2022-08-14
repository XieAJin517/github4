package dao.statistics;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.statistics.saleOrder.SaleOrderTotal;
import util.ConnOfDatabase;

public class SaleOrderStatistics {
	private Connection conn;
	public SaleOrderStatistics()
	{
		ConnOfDatabase sqlconn;
		sqlconn=new ConnOfDatabase();
		conn=sqlconn.getConn();
	}
	public List<SaleOrderTotal> SumByName(String queryStr) throws Exception
	{
		Statement stmt;
		ResultSet rs;
		List<SaleOrderTotal> sototals=new ArrayList<>();
		SaleOrderTotal sototal;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				sototal=new SaleOrderTotal();
				sototal.setName(rs.getString(1));
				sototal.setSaleNumTotal(rs.getDouble(2));
				sototal.setSaleMoneyTotal(rs.getDouble(3));
				sototals.add(sototal);
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
		return sototals;
	}
}
