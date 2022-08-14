package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnOfDatabase {
	protected Connection conn = null;//数据库连接
	public Connection getConn() {
		try {
			 String driverName="com.mysql.jdbc.Driver";
			  String userName="root";
			  String userPasswd="123456";
			  String dbName="companyinfo1223";
			  String tableName="product";
			  String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd+"&useUnicode=true&serverTimezone=UTC&characterEncoding=GBK";
			  Class.forName("com.mysql.jdbc.Driver").newInstance();
			   conn=DriverManager.getConnection(url);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
