package bean;

import java.sql.*;

public class LoginDao {

	public static Connection con;
	public static boolean validate(LoginBean bean){  
		boolean status=false;  
		try{  
			con=ConnectionProvider.getCon();  
			              
			PreparedStatement ps=con.prepareStatement(  
			    "select * from Admin where USERNAME=? and PASSWORD=?"); 		  
			ps.setString(1,bean.getEmail());  
			ps.setString(2, bean.getPass());               
			ResultSet rs=ps.executeQuery();  
			status=rs.next();
			System.out.println(status);
			
			}catch(Exception e){}  
			  
			return status;  
			  
			}
}
