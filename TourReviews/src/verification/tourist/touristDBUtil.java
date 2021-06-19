package verification.tourist;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class touristDBUtil {

	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	private static ResultSet rs1=null;
	
	public static boolean validate(String touristName,String tourID){ 
		


		//validate
			try {
				con=DBConnect.getConnection();
				stmt=con.createStatement();
				String sql="select * from tourist where name='"+touristName+"' and tourID='"+tourID+"'" ; 
			
				 rs =stmt.executeQuery(sql);
			 
				if(rs.next()) {
					isSuccess=true;
					}
				else {
					isSuccess = false;
				}
				}

				catch(Exception e) {
					e.printStackTrace();
				}
			return isSuccess;	
		} 
	
	
public static List<Tourist> getvalidation(String tourID){ 
ArrayList<Tourist> Tr=new ArrayList<>();


//validate
	try {
		con=DBConnect.getConnection();
		stmt=con.createStatement();
	
		String sql1="select *from tourreview where  tourID='"+tourID+"'";
		
		 rs =stmt.executeQuery(sql1);
	 
		while(rs.next()) {
			String tID=rs.getString(1);
			String fullName=rs.getString(2);
			String contact=rs.getString(3);
			String tourName=rs.getString(4);
			String days=rs.getString(5);
			String review=rs.getString(6);
			
			Tourist t=new Tourist(tID,fullName,contact,tourName,days,review);
		
			Tr.add(t);
			}
		}

		catch(Exception e) {
			e.printStackTrace();
		}
	return Tr;	
} 


public static boolean updateTourReviews(String tID, String fullName, String contact, String tourName, String days, String review) {
	boolean isSuccess=false;

	//create database connection
	String url="jdbc:mysql://localhost:3306/tour";
	String user="root";
	String passw="venura11";
	try {
		Class.forName("com.mysql.jdbc.Driver" );
		Connection con = DriverManager.getConnection(url,user,passw);
		Statement stmt=con.createStatement();
		String sql ="update tourreview set fullName='"+fullName+"',contact='"+contact+"',tourName='"+tourName+"',days='"+days+"',review='"+review+"'"
				+"where tourID='"+tID+"'";
		int rs=stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess=true;
		} else {
			isSuccess=false;
		} 

		
	}
	
	catch(Exception e) {
		
	}
	
	
	return isSuccess;
}


public static List<Tourist> getCustomerDetails(String tourID){
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
		
		while(rs.next()) {
			String tID=rs.getString(1);
			String fullName=rs.getString(2);
			String contact=rs.getString(3);
			String tourName=rs.getString(4);
			String days=rs.getString(5);
			String review=rs.getString(6);
			
			Tourist t=new Tourist(tID,fullName,contact,tourName,days,review);
			
			 Tr.add(t);
		}
	}

	catch(Exception e) {
		e.printStackTrace();
	}
	return Tr;	
	} 

	public static boolean deleteTourReview(String tID) {
		boolean isSuccess=false;
		
	

		//validate
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="delete from tourreview where  tourID='"+tID+"'";
			
			int rs =stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}

		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

//new part begins


public static List<Review> getReview(){
	ArrayList<Review> Rev=new ArrayList<>();



	//validate
	try {
		con=DBConnect.getConnection();
		stmt=con.createStatement();
	
		
		String sql="select * from tourreview";
		
		rs =stmt.executeQuery(sql);
		
		while(rs.next()) {
		
			String fullName=rs.getString(2);
			String review=rs.getString(6);
			/*	String tID=rs.getString(1);
			  String contact=rs.getString(3);
			String tourName=rs.getString(4);
			String days=rs.getString(5); */
			Review R=new Review(fullName,review);
			
			 Rev.add(R);
		}
	}

	catch(Exception e) {
		e.printStackTrace();
	}
	return Rev;	
	}
}
