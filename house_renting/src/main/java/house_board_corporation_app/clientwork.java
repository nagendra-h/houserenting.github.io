package house_board_corporation_app;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class clientwork {

	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	    	Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/house","root","root");  
			      
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	
	public static int save(client u){  
	    int status=0;  
	    try{  
	    	System.out.println(123);
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into client values(?,?,?,?,?,?)");  
	        ps.setString(1,u.getFname());  
	        ps.setString(2,u.getLname());  
	        ps.setString(3,u.getPhoneno());  
	        ps.setString(4,u.getEmailid());
	        ps.setString(5,u.getPassword());
	        ps.setString(6,u.getGender());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);} 
	    System.out.println(123);
	    return status;  
	}
	
	public static boolean validate(String name,String password){  
		boolean status=false;  
		try{  
			System.out.println("10"+6);
			Connection con=getConnection();   
		      
		PreparedStatement ps=con.prepareStatement(  
		"select * from client where email=? and password=?");  
		ps.setString(1,name);  
		ps.setString(2,password);  
		      
		ResultSet rs=ps.executeQuery();  
		status=rs.next();  
		          
		}catch(Exception e){System.out.println(e);}  
		return status;  
		} 
	

}
