package ManagementSystem;

import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.naming.spi.DirStateFactory.*;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;

	public class StudentRead extends JFrame implements ActionListener{
	    private Connection conn=null;
	    private PreparedStatement perstmt=null;
	    private JRadioButton jrbutton1,jrbutton2,jrbutton3,jrbutton4;//学号、姓名、姓氏、专业
	    private ButtonGroup buttongroup;
	    private JTextField field;
	    private JLabel label,label2,label3,label4;
	    private JPanel panel,panel2;
	    private JButton button;
	    private DefaultTableModel model;
	    private JTable table;
	    private JScrollPane jsp;
	
		public StudentRead(String string,Connection conn,PreparedStatement perstmt){
			this.conn=conn;
			this.perstmt=perstmt;
			
			Font font=new Font("",Font.BOLD,22);
			Font font1=new Font("",Font.BOLD,17);
		    label=new JLabel("请选择查询方式：");
		    label2=new JLabel("输入框");
		    label.setFont(font);
		    label2.setFont(font);
		    jrbutton1=new JRadioButton("学号");
		    jrbutton2=new JRadioButton("姓名");
		    jrbutton3=new JRadioButton("姓氏");
		    jrbutton4=new JRadioButton("专业");
		    jrbutton1.setFont(font1);
		    jrbutton2.setFont(font1);
		    jrbutton3.setFont(font1);
		    jrbutton4.setFont(font1);
		    buttongroup=new ButtonGroup();
		    buttongroup.add(jrbutton1);
		    buttongroup.add(jrbutton2);
		    buttongroup.add(jrbutton3);
		    buttongroup.add(jrbutton4);
		    jrbutton1.setSelected(true);
		    
		    field=new JTextField(10);
		    field.setFont(font);
		    
		    button=new JButton("查询");
		    button.setFont(font);
		    
		    panel=new JPanel();
		    panel.setLayout(new FlowLayout());
		    panel.add(label2);
		    panel.add(field);
		    panel.add(button);
		    
		    panel2=new JPanel();
		    label3=new JLabel("     ");
		    panel2.setLayout(new FlowLayout());
		    panel2.add(label3);
		    panel2.add(jrbutton1);
		    panel2.add(jrbutton2);
		    panel2.add(jrbutton3);
		    panel2.add(jrbutton4);
		    
		    //设置表格
		    String[] columnsNames = { "学号", "姓名", "性别", "专业", "年龄"};	    
		    model = new DefaultTableModel(columnsNames,10);
			table = new JTable(model);
			table.setEnabled(false);
			table.setFont(font1);
			jsp = new JScrollPane(table);
			label4=new JLabel("学生信息表:");
	        label4.setFont(font);
	        
		    this.setTitle(string);
		    this.setVisible(true);
		    this.setLocation(700,300);
		    this.setSize(800,600);
		    this.setLayout(new GridLayout(5,1));
		    this.add(label);
		    this.add(panel2);
		    this.add(panel);
		    this.add(label4);
		    this.add(jsp);
		    
		    //设置监听
		    jrbutton1.addActionListener(this);
		    jrbutton2.addActionListener(this);
		    jrbutton3.addActionListener(this);
		    jrbutton4.addActionListener(this);
		    button.addActionListener(this);
		}
		@Override
		public void actionPerformed(ActionEvent arg0) {
			// TODO Auto-generated method stub
			if(arg0.getSource().equals(button)){
				if(field.getText().isEmpty()){
					JOptionPane.showMessageDialog(null,"请先输入信息","警告",JOptionPane.WARNING_MESSAGE);				
				}else{
					if(jrbutton1.isSelected()){
						String sql;	
						try{   
							String Sno,name,sex,Dept;
							int age;											 		     	   
						    sql = "select sno,sname,sex,dept,age from s where sno=?";
						        perstmt=conn.prepareStatement(sql);
								perstmt.setString(1,field.getText()); 
								perstmt.executeUpdate();
								for(int ik=0;ik<table.getRowCount();ik++){  //让表的数据清空
									for(int jk=0;jk<table.getColumnCount();jk++){
										table.setValueAt("",ik,jk);
									}
								}					
								ResultSet rs = perstmt.executeQuery();							
								int number=0;
									 while(rs.next()){ 
								   	     Sno = rs.getString("sno");
								   	     name = rs.getString("sname");
								   	     sex = rs.getString("sex");
								   	     Dept=rs.getString("dept");
								   	     age = rs.getInt("age");    
								         //按格式处理变量  将数据填入表格    
								   	  table.setValueAt(Sno,number,0);
	                                  table.setValueAt(name,number,1);
								   	  table.setValueAt(sex,number,2);
								   	  table.setValueAt(Dept,number,3);
								   	  table.setValueAt(age,number,4);
								   	  number++;
									  }	
								if(number!=0){
									JOptionPane.showMessageDialog(null,"查询完毕","结果",JOptionPane.INFORMATION_MESSAGE);
								}else{
									JOptionPane.showMessageDialog(null,"没有学号为"+field.getText()+"的学生","提示",JOptionPane.INFORMATION_MESSAGE);
								}
			      		  }catch(Exception te){	      			  
			      			JOptionPane.showMessageDialog(null,"仔细看看是哪出错了呢","提示",JOptionPane.QUESTION_MESSAGE);      		
			      		  }	  				
					}else if(jrbutton2.isSelected()){
						String Sno,name,sex,Dept;
						int age;
						try{    
							 String sql;								     	   
						     sql = "select sno,sname,sex,dept,age from s where sname=?";
						        perstmt=conn.prepareStatement(sql);
								perstmt.setString(1,field.getText()); 
								perstmt.executeUpdate();
								for(int ik=0;ik<table.getRowCount();ik++){  //让表的数据清空
									for(int jk=0;jk<table.getColumnCount();jk++){
										table.setValueAt("",ik,jk);
									}
								}
								ResultSet rs = perstmt.executeQuery();							
								int number=0;							
									 while(rs.next()){ 
								   	     Sno = rs.getString("sno");
								   	     name = rs.getString("sname");
								   	     sex = rs.getString("sex");
								   	     Dept=rs.getString("dept");
								   	     age = rs.getInt("age");    
								         //按格式处理变量  将数据填入表格    
								   	  table.setValueAt(Sno,number,0);
	                                  table.setValueAt(name,number,1);
								   	  table.setValueAt(sex,number,2);
								   	  table.setValueAt(Dept,number,3);
								   	  table.setValueAt(age,number,4);
								   	  number++;
									  }	
								if(number!=0){
									JOptionPane.showMessageDialog(null,"查询完毕","结果",JOptionPane.INFORMATION_MESSAGE);
								}else{
									JOptionPane.showMessageDialog(null,"没有姓名为"+field.getText()+"的学生","提示",JOptionPane.INFORMATION_MESSAGE);
								}
			      		  }catch(Exception te){	      			  
			      			JOptionPane.showMessageDialog(null,"仔细看看是哪出错了呢","提示",JOptionPane.QUESTION_MESSAGE);      		
			      		  }	  				
					}else if(jrbutton3.isSelected()){
						String Sno,name,sex,Dept;
						int age;
						try{    
							 String sql;								     	   
						     sql = "select sno,sname,sex,dept,age from s where sname like ?";
						        perstmt=conn.prepareStatement(sql);
								perstmt.setString(1,field.getText()+"%"); 
								perstmt.executeUpdate();
								for(int ik=0;ik<table.getRowCount();ik++){  //让表的数据清空
									for(int jk=0;jk<table.getColumnCount();jk++){
										table.setValueAt("",ik,jk);
									}
								}
								ResultSet rs = perstmt.executeQuery();							
								int number=0;
									 while(rs.next()){ 
								   	     Sno = rs.getString("sno");
								   	     name = rs.getString("sname");
								   	     sex = rs.getString("sex");
								   	     Dept=rs.getString("dept");
								   	     age = rs.getInt("age");    
								         //按格式处理变量  将数据填入表格    
								   	  table.setValueAt(Sno,number,0);
	                                  table.setValueAt(name,number,1);
								   	  table.setValueAt(sex,number,2);
								   	  table.setValueAt(Dept,number,3);
								   	  table.setValueAt(age,number,4);
								   	  number++;
								   	 }
								if(number!=0){
									JOptionPane.showMessageDialog(null,"查询完毕","结果",JOptionPane.INFORMATION_MESSAGE);	  		
								}else{
									JOptionPane.showMessageDialog(null,"没有"+field.getText()+"姓学生","提示",JOptionPane.INFORMATION_MESSAGE);
								}						
								
			      		  }catch(Exception te){	      			  
			      			JOptionPane.showMessageDialog(null,"仔细看看是哪出错了呢","提示",JOptionPane.QUESTION_MESSAGE);      		
			      		  }	
					}else if(jrbutton4.isSelected()){
						String Sno,name,sex,Dept;
						int age;
						try{    
							 String sql;								     	   
						     sql = "select sno,sname,sex,dept,age from s where dept=?";
						        perstmt=conn.prepareStatement(sql);
								perstmt.setString(1,field.getText()); 
								perstmt.executeUpdate();
								for(int ik=0;ik<table.getRowCount();ik++){  //让表的数据清空
									for(int jk=0;jk<table.getColumnCount();jk++){
										table.setValueAt("",ik,jk);
									}
								}
								ResultSet rs = perstmt.executeQuery();							
								int number=0;
									 while(rs.next()){ 
								   	     Sno = rs.getString("sno");
								   	     name = rs.getString("sname");
								   	     sex = rs.getString("sex");
								   	     Dept=rs.getString("dept");
								   	     age = rs.getInt("age");    
								         //按格式处理变量  将数据填入表格    
								   	  table.setValueAt(Sno,number,0);
	                                  table.setValueAt(name,number,1);
								   	  table.setValueAt(sex,number,2);
								   	  table.setValueAt(Dept,number,3);
								   	  table.setValueAt(age,number,4);
								   	  number++;
									  }	
								if(number!=0){
									JOptionPane.showMessageDialog(null,"查询完毕","结果",JOptionPane.INFORMATION_MESSAGE);
								}else{
									JOptionPane.showMessageDialog(null,"没有该专业学生","提示",JOptionPane.INFORMATION_MESSAGE);
								}
			      		  }catch(Exception te){	      			  
			      			JOptionPane.showMessageDialog(null,"仔细看看是哪出错了呢","提示",JOptionPane.QUESTION_MESSAGE);      		
			      		  }	  				
					}
				}
			}
		}
	
	}
