package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class AdminHomePageDAO {
	
	public static ArrayList<AddCharityBean> listCharity()
	{
		ArrayList<AddCharityBean> listOfCharities=new ArrayList<>();
		try{  
			Connection con=ConnectionProvider.getCon();  
			              
			PreparedStatement ps=con.prepareStatement("select * from Charity"); 		             
			ResultSet rs=ps.executeQuery(); 
			while (rs.next()) 
			{
				String name = rs.getString("name");
				AddCharityBean bean = new AddCharityBean();
				bean.setName(name);
				listOfCharities.add(bean);
			}
			
			}catch(Exception e){
				
				e.printStackTrace();
			}  	
		
		return listOfCharities;	
	}
	public static ArrayList<SignUpCelebrityBean> listCelebrities()
	{
		ArrayList<SignUpCelebrityBean> listOfCelebrities=new ArrayList<>();
		try{  
			Connection con=ConnectionProvider.getCon();  
			              
			PreparedStatement ps=con.prepareStatement("select * from Celebrity"); 		             
			ResultSet rs=ps.executeQuery(); 
			while (rs.next()) 
			{
				String name = rs.getString("email_ID");
				SignUpCelebrityBean bean = new SignUpCelebrityBean();
				bean.setEmailID(name);
				System.out.println(bean.getEmailID());
				
				/*String emailID = rs.getString(1);
				bean.setEmailID(emailID);
				
				String role = rs.getString(2);
				bean.setRole(role);
				
				String address = rs.getString(3);
				bean.setAddress(address);
				
				long zipcode = rs.getLong(4);
				bean.setId(zipcode);
				
				long phoneNo = rs.getLong(5);
				bean.setPhoneNo(phoneNo);
		
				long id = rs.getLong(7);
				bean.setId(id);
				
				bean.setFlag(rs.getString(8));*/
				
				listOfCelebrities.add(bean);
			}
			
			}catch(Exception e){
				
				e.printStackTrace();
			}  	
		
		return listOfCelebrities;	
	
	}

}
