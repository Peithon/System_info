package ManagementSystem;

import java.io.*;
import java.sql.*;
import java.util.*;
	public class DBConnection {
		public static Connection getDBConnection( ) throws Exception {
	    	Properties prop = new Properties();
	    	prop.load(new FileInputStream("D:\\java 编程\\StudentManagementSystem\\src\\ManagementSystem\\logon_initial.properties"));
		    String drivers = prop.getProperty("drivers");
		    String url = prop.getProperty("url");
		    String username = prop.getProperty("username");
		    String password= prop.getProperty("password");  
		    	 Class.forName(drivers);   //加载驱动程序，JDK7以上版本可以不用  
		    	 Connection conn= DriverManager.getConnection(url,username,password); //连接数据库	 
	        return conn;
	   }  
		//在数据库的teacher表中进行教师身份验证,用户名、密码
		public static boolean teacherQuery(String user,String pwd,Connection conn,PreparedStatement perstmt){
			String sql=null;
			boolean flag=true;
			int row=0;
			try{
		    	sql="select * from teacher where username=? and password=?";
		        perstmt=conn.prepareStatement(sql);
		    	perstmt.setString(1, user);
		    	perstmt.setString(2, pwd);
		    	ResultSet rs=perstmt.executeQuery();
		    	while(rs.next()){
		    		row++;
		    	}
		    	if(row==0){
		    		flag=false;
		    	}
		    }catch(Exception e){
		    	e.printStackTrace();
		    }
			return flag;
		}
		//在数据库student表中进行教师身份验证,用户名、密码
		public static boolean studentQuery(String user,String pwd,Connection conn,PreparedStatement perstmt){
			String sql=null;
			boolean flag=true;
			int row=0;
			try{
		    	sql="select * from student where username=? and password=?";
		    	perstmt=conn.prepareStatement(sql);
		    	perstmt.setString(1, user);
		    	perstmt.setString(2, pwd);
		    	ResultSet rs=perstmt.executeQuery();
		    	while(rs.next()){
		    		row++;
		    	}
		    	if(row==0){
		    		flag=false;
		    	}
		    }catch(Exception e){
		    	e.printStackTrace();
		    }
			return flag;
		}
		
	   public static void Close(Connection conn) throws SQLException{
		   conn.close();	  
	   }
	}
