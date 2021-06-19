package verification.tourist;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class reviewDBUtil {
	/*public static List<Tourist> validate(String touristName,String tourID){ 
		ArrayList<Tourist> Tr=new ArrayList<>();
		
		//create database connection
		String url="jdbc:mysql://localhost:3306/tour";
		String user="root";
		String passw="venura11";
		
		//validate
		try {
			Class.forName("com.mysql.jdbc.Driver" );
			Connection con = DriverManager.getConnection(url,user,passw);
			Statement stmt=con.createStatement();
			
			String sql="select *from tourreview where  tourID='"+tourID+"'";
			
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next()) {
				String id=rs.getString(1);
				String tname=rs.getString(2);
				String email=rs.getString(3);
				String phone=rs.getString(4);
				String username=rs.getString(5);
				String password=rs.getString(6);
				
				Tourist t=new Tourist(id,tname,email,phone,username,password);
				
				 Tr.add(t);
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return Tr;	
	} */
	
	public static boolean insertTourReview(String tourID, String fullName, String contact, String tourName, String days, String review){
		boolean isSuccess=false;

		//create database connection
		String url="jdbc:mysql://localhost:3306/tour";
		String user="root";
		String passw="venura11";
		try {
			Class.forName("com.mysql.jdbc.Driver" );
			Connection con = DriverManager.getConnection(url,user,passw);
			Statement stmt=con.createStatement();
			String sql ="insert into tourreview values('"+tourID+"','"+fullName+"','"+contact+"','"+tourName+"','"+days+"','"+review+"')";
			int rs=stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess=true;
			} else {
				isSuccess=false;
			} 
		
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

}
