package ManagementSystem;

import java.sql.*;
public class SystemDemo {
	private static Connection conn=null;
	private static PreparedStatement perstmt=null;
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		conn=DBConnection.getDBConnection();
		 //new StudentSystem("学生管理系统--学生界面","",conn,perstmt);
	  //	new TimeTable();
		//new MyInfo(""+"同学的成绩","",conn,perstmt);
		//new TimeTable();
 //		new TeacherSystem("学生管理系统--教师界面",conn,perstmt);
		new Login("学生管理系统",conn,perstmt);	
		
		// new Password("学生管理系统","",conn,perstmt);
		//new CourseCreate("添加课程信息",conn,perstmt);
		//new StudentCreate("添加学生信息",conn,perstmt);
		//new ScoreCreate("添加成绩信息",conn,perstmt);
		//new Update2("修改学生成绩信息","14","14",conn,perstmt);
		//new ScoreDelete("删除成绩界面",conn,perstmt);
		//new CourseUpdate("修改学生信息界面",conn,perstmt);
		//new Update1("修改界面","025",conn,perstmt);
     //   perstmt.close();
      //  conn.close();
	}

}
