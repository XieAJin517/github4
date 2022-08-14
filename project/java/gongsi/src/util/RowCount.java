package util;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class RowCount {
public int getTotalrow(String countStr) throws Exception
{
	ConnOfDatabase sqlconn=new ConnOfDatabase();
	Connection conn;
	Statement stmt;
	ResultSet rs;
	Integer rowcount=0;

	conn=sqlconn.getConn();
	stmt =conn.createStatement();
	try
	{
		rs=stmt.executeQuery(countStr);
		if (rs.next())
		{
			rowcount=rs.getInt(1);
		}
		}catch (SQLException e)
		{
		e.printStackTrace();
		}	finally
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
		return rowcount;
	}
}