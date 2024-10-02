package com.registration;




import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;






public class registrationDBUtil {
	

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<customerregistration> validate(String username,String Password) {
		
		ArrayList<customerregistration> reg = new ArrayList<>();
		
		try {
			con =   DBConnect.getConnection();
			stmt =  con.createStatement();
			
			
			String sql = "select * from registration where username= '"+username+"' and password = '"+Password+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String firstname = rs.getString(2);
				String lastname = rs.getString(3);
				String email = rs.getString(4);
				String phonenumber = rs.getString(5);
				String password = rs.getString(6);
				
				customerregistration R = new customerregistration(id, firstname,  lastname,  email, phonenumber, password);
				reg.add(R);
				
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return reg;
	}
	
       public static boolean insertregdetails(String fname,String lname, String email, String phonenum,String pwd) {
		
		isSuccess = false;
		
		try {
			con =  DBConnect.getConnection();
			stmt =  con.createStatement();
			String sql = "insert into registration values(0, '"+fname+"', '"+lname+"', '"+email+"','"+phonenum+"','"+pwd+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}



