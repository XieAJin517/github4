package dao.statistics;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.StatisticsBean;
import util.ConnOfDatabase;

public class ProductStatisticsDAO {
	private Connection conn;
	public ProductStatisticsDAO()
	{
		ConnOfDatabase sqlconn;
		sqlconn=new ConnOfDatabase();
		conn=sqlconn.getConn();
	}
	public List<StatisticsBean> SumByName(String queryStr) throws Exception
	{
		Statement stmt;
		ResultSet rs;
		List<StatisticsBean> ptotals=new ArrayList<>();
		StatisticsBean ptotal;
		stmt =conn.createStatement();
		try
		{
			rs=stmt.executeQuery(queryStr);
			while (rs.next())
			{
				ptotal=new StatisticsBean();
				ptotal.setName(rs.getString(1));
				ptotal.setInumber1(rs.getInt(2));
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
