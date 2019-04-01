package ManagementSystem;

import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;

public class MyInfo extends JFrame implements ActionListener{
    private Connection conn=null;
    private PreparedStatement perstmt=null;
    private String Sno=null;
    private DefaultTableModel model;
    private JTable table;
    private JScrollPane jsp;
	public MyInfo(String string,String Sno,Connection conn,PreparedStatement perstmt){
		this.Sno=Sno;
		this.conn=conn;
		this.perstmt=perstmt;
		
		  Font font1=new Font("",Font.BOLD,17);
		//设置表格
		    String[] columnsNames = { "学号", "姓名", "性别","专业","年龄"};	    
		    model = new DefaultTableModel(columnsNames,3);
			table = new JTable(model);
			table.setFont(font1);
			jsp = new JScrollPane(table);
			
	        this.setTitle(string);
		    this.setVisible(true);
		    this.setLocation(700,300);
		    this.setSize(700,500);
		    this.setLayout(new GridLayout(1,1));	   
		    this.add(jsp);
		    
		    String XH,XM,XB,ZY,NL;
			try{    
				 String sql;								     	   
			     sql = "select * from s where sno=?";
			        perstmt=conn.prepareStatement(sql);
					perstmt.setString(1,Sno); 
					perstmt.executeUpdate();	
					ResultSet rs = perstmt.executeQuery();							
					int number=0;
						 while(rs.next()){ 
							 XH = rs.getString("sno");
							 XM= rs.getString("sname");
							 XB= rs.getString("sex");
							 ZY= rs.getString("dept");
							 NL= rs.getString("age");	
					        //按格式处理变量  将数据填入表格    
					   	  table.setValueAt(XH,number,0);
                          table.setValueAt(XM,number,1);
					   	  table.setValueAt(XB,number,2);	
                          table.setValueAt(ZY,number,3);
					   	  table.setValueAt(NL,number,4);
					   	  number++;
						  }	 
					if(number==0){					
						JOptionPane.showMessageDialog(null,"木有个人信息","提示",JOptionPane.INFORMATION_MESSAGE);
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
