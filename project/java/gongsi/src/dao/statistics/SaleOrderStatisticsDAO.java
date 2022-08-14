package dao.statistics;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.StatisticsBean;
import util.ConnOfDatabase;

public class SaleOrderStatisticsDAO {
	private Connection conn;
	public SaleOrderStatisticsDAO()
	{
		ConnOfDatabase sqlconn;
		sqlconn=new ConnOfDatabase();
		conn=sqlconn.getConn();
	}
	public List<StatisticsBean> SumByName(String queryStr) throws Exception
	{
		Statement stmt;
		ResultSet rs;
		List<StatisticsBean> sototals=new ArrayList<>();
		StatisticsBean sototal;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				sototal=new StatisticsBean();
				sototal.setName(rs.getString(1));
				sototal.setInumber1(rs.getInt(2));
				sototal.setFnumber1(rs.getFloat(3));
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
