package house_board_corporation_app;
import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import house_board_corporation_app.transaction.*;


public class tran1 {

	
		// TODO Auto-generated method stub
		public static Connection getConnection(){  
		    Connection con=null;  
		    try{  
		    	Class.forName("com.mysql.jdbc.Driver");  
				con=DriverManager.getConnection(  
				"jdbc:mysql://localhost:3306/house","root","root");  
				      
		    }catch(Exception e){System.out.println(e);}  
		    return con;  
		} 
		
		public static int save(transaction u){  
		    int status=0;  
		    System.out.println(123);
		    try{  
		    	System.out.println(123);
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement(  
		"insert into transaction values(?,?,?,?,?,?,?,?)");  
		        ps.setString(1,u.getName());     
		        ps.setString(2,u.getEmail());
		        ps.setInt(3,u.getPay());
		        ps.setString(4,u.getCid());
		        ps.setString(5,u.getCountry());
		        ps.setString(6,u.getState());
		        ps.setString(7,u.getDistrict());
		        ps.setInt(8,u.getTot());

		        System.out.println(u.getName() + u.getName());
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);} 
		    System.out.println(123);
		    return status;  
		}
		
		public static int getAll2(){  
	         int m=0;	      
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select count(*) as total from transaction");  
		        ResultSet rs=ps.executeQuery();  
		        rs.next()  ;
		            transaction u=new transaction();  
		             m=(rs.getInt("total"));
		            
		    }catch(Exception e){System.out.println(e);}  
		    return m;  
		}  
		
		public static List<transaction> getAll1(){  
		    List<transaction> list=new ArrayList<transaction>();  
		      
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select name,email,pay,cid,country from transaction");
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		        	transaction u =new transaction();
		            u.setName(rs.getString("name"));
		            u.setEmail(rs.getString("email"));

		            u.setPay(rs.getInt("pay"));
		            u.setCid(rs.getString("cid"));
		           
		            list.add(u);
		        }  
		    }catch(Exception e){System.out.println(e);} 
		    System.out.println(123);
		    System.out.println(list + "88");
		    return list;
		    
		    
		}  
		
		public static List<transaction> getAll3(){  
		    List<transaction> list=new ArrayList<transaction>();  
		      
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select state from transaction");
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		        	transaction u =new transaction();
		            
		            u.setState(rs.getString("state"));
		           
		            list.add(u);
		        }  
		    }catch(Exception e){System.out.println(e);} 
		    System.out.println(123);
		    System.out.println(list + "88");
		    return list;
		    
		    
		}  
		
		public static int getAll4(){  
	         int m=0;	      
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select sum(tot) as total from transaction");  
		        ResultSet rs=ps.executeQuery();  
		        rs.next()  ;
		            transaction u=new transaction();  
		             m=(rs.getInt("total"));
		            
		    }catch(Exception e){System.out.println(e);}  
		    return m;  
		}  
		

}
