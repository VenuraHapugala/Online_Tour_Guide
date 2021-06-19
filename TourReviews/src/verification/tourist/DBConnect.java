package verification.tourist;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DBConnect {
	private static String url="jdbc:mysql://localhost:3306/tour";
	private static String user="root";
	private static String passw="venura11";
	private static Connection con;
	
	public static Connection getConnection() {
			try {
			Class.forName("com.mysql.jdbc.Driver" );
			con = DriverManager.getConnection(url,user,passw);
			}

		catch(Exception e) {
			System.out.println("Database connection is not successful");
		}
			return con;
	}
}
