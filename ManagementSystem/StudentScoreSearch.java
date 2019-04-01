package ManagementSystem;

import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;

	public class StudentScoreSearch extends JFrame implements ActionListener{
	    private Connection conn=null;
	    private PreparedStatement perstmt=null;
	   
	    private String Sno=null;
	    private DefaultTableModel model;
	    private JTable table;
	    private JScrollPane jsp;
		public StudentScoreSearch(String string,String Sno,Connection conn,PreparedStatement perstmt){
			 this.conn=conn;
			 this.perstmt=perstmt;
			 this.Sno=Sno;			
			  Font font1=new Font("",Font.BOLD,17);
			//设置表格
			    String[] columnsNames = { "课程号", "课程名", "成    绩"};	    
			    model = new DefaultTableModel(columnsNames,10);
				table = new JTable(model);
				table.setFont(font1);
				jsp = new JScrollPane(table);			
		        
		        this.setTitle(string);
			    this.setVisible(true);
			    this.setLocation(700,300);
			    this.setSize(700,500);
			    this.setLayout(new GridLayout(1,1));	   
			    this.add(jsp);
			    
			    String CNO1,CNAME,Grade1;
				try{    
					 String sql;								     	   
				     sql = "select c.cno,c.cname,sc.grade from c,sc where c.cno=sc.cno and sno=?";
				        perstmt=conn.prepareStatement(sql);
						perstmt.setString(1,Sno); 
						perstmt.executeUpdate();	
						ResultSet rs = perstmt.executeQuery();							
						int number=0;
							 while(rs.next()){ 
								 CNO1 = rs.getString("cno");
								 CNAME= rs.getString("cname");
								 Grade1= rs.getString("grade");							   	      
						        //按格式处理变量  将数据填入表格    
						   	  table.setValueAt(CNO1,number,0);
	                          table.setValueAt(CNAME,number,1);
						   	  table.setValueAt(Grade1,number,2);							   	
						   	  number++;
							  }	 
						if(number==0){		
							JOptionPane.showMessageDialog(null,"成绩还没公布","提示",JOptionPane.INFORMATION_MESSAGE);
						}
	      		  }catch(Exception te){	      			  
	      			JOptionPane.showMessageDialog(null,"仔细看看是哪出错了呢","提示",JOptionPane.QUESTION_MESSAGE);      		
	      		  }	  								
			 
		}
		@Override
		public void actionPerformed(ActionEvent arg0) {
			// TODO Auto-generated method stub
			
		}
	
	}
