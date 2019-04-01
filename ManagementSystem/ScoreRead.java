package ManagementSystem;

import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;

	public class ScoreRead extends JFrame implements ActionListener{
		private static final Object[] String = null;
		private Connection conn=null;
	    private PreparedStatement perstmt=null;
	    private JRadioButton jrbutton1,jrbutton2,jrbutton3;//课程号、课程名、学分
	    private ButtonGroup buttongroup;
	    private JTextField field;
	    private JLabel label,label2,label3,label4;
	    private JPanel panel,panel2;
	    private JButton button;
	    
	    private DefaultTableModel model;
	    private JTable table;
	    private JScrollPane jsp;
	    
		public ScoreRead(String string,Connection conn,PreparedStatement perstmt){
			this.conn=conn;
			this.perstmt=perstmt;
			
			Font font=new Font("",Font.BOLD,22);
			Font font1=new Font("",Font.BOLD,17);
		    label=new JLabel("请选择查询方式：");
		    label2=new JLabel("输入框");
		    label.setFont(font);
		    label2.setFont(font);
		    jrbutton1=new JRadioButton("某科挂科名单(课程号)");
		    jrbutton2=new JRadioButton("某科90分及以上人数(课程号)");
		    jrbutton3=new JRadioButton("按学号查成绩");	
		    jrbutton1.setFont(font1);
		    jrbutton2.setFont(font1);
		    jrbutton3.setFont(font1);
		    buttongroup=new ButtonGroup();
		    buttongroup.add(jrbutton1);
		    buttongroup.add(jrbutton2);
		    buttongroup.add(jrbutton3);;
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
		    
		    //设置表格
		    String[] columnsNames = { "学    号", "课程号", "成    绩"};	    
		    model = new DefaultTableModel(columnsNames,8);
			table = new JTable(model);
			table.setFont(font1);
			jsp = new JScrollPane(table);
			label4=new JLabel("成绩信息表:");
	        label4.setFont(font);
	        
		    this.setTitle(string);
		    this.setVisible(true);
		    this.setLocation(700,300);
		    this.setSize(700,500);
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
						String Sname;
						String[] str = new String[20];
						try{    
							 String sql;								     	   
						     sql = "select sname from s where sno in(select sno from sc where cno=? and grade<60)";
						        perstmt=conn.prepareStatement(sql);
								perstmt.setString(1,field.getText()); 
								perstmt.executeUpdate();
								for(int ik=0;ik<table.getRowCount();ik++){  //让表的数据清空
									for(int jk=0;jk<table.getColumnCount();jk++){
										table.setValueAt("",ik,jk);
									}
								}
								ResultSet rs = perstmt.executeQuery();
								int i=0;
								 while(rs.next()){ 
							   	       Sname=rs.getString("sname");
							            //按格式处理变量	
							   	       str[i]=Sname;
							   	       i++;
								    }
								 String result="";
								 for(int j=0;j<str.length;j++){
									 if(str[j]!=null){
										 result=result+str[j]+"、";
									 }
									 							 }
							JOptionPane.showMessageDialog(null,result,"不及格名单",JOptionPane.INFORMATION_MESSAGE);
			      		  }catch(Exception te){	      			  
			      			JOptionPane.showMessageDialog(null,"仔细看看是哪出错了呢","提示",JOptionPane.QUESTION_MESSAGE);      		
			      		  }	  				
					}else if(jrbutton2.isSelected()){
						
						try{    
							 String sql;								     	   
						     sql = "select * from sc where grade>=90 and cno=?";
						        perstmt=conn.prepareStatement(sql);
								perstmt.setString(1,field.getText()); 
								perstmt.executeUpdate();								
								ResultSet rs = perstmt.executeQuery();
								int number=0;
								 while(rs.next()){ 
							   	    number++;
								    }
								 if(number!=0){
									 JOptionPane.showMessageDialog(null,number+"人上90分","查询结果",JOptionPane.INFORMATION_MESSAGE);
								 }else{
									 JOptionPane.showMessageDialog(null,"没有人上90分","查询结果",JOptionPane.INFORMATION_MESSAGE);
								 }
								 
			      		  }catch(Exception te){	      			  
			      			JOptionPane.showMessageDialog(null,"仔细看看是哪出错了呢","提示",JOptionPane.QUESTION_MESSAGE);      		
			      		  }	  				
					}else if(jrbutton3.isSelected()){
						String Sno,Cno,Grade;
						try{    
							 String sql;								     	   
						     sql = "select * from sc where sno=? ";
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
								   	     Cno = rs.getString("cno");
								   	     Grade = rs.getString("grade");							   	      
								        //按格式处理变量  将数据填入表格    
								   	  table.setValueAt(Sno,number,0);
	                                  table.setValueAt(Cno,number,1);
								   	  table.setValueAt(Grade,number,2);							   	
								   	  number++;
									  }	 
								if(number!=0){
									JOptionPane.showMessageDialog(null,"查询完毕","结果",JOptionPane.INFORMATION_MESSAGE);
								}else{
									JOptionPane.showMessageDialog(null,"没有该学生","提示",JOptionPane.INFORMATION_MESSAGE);
								}
			      		  }catch(Exception te){	      			  
			      			JOptionPane.showMessageDialog(null,"仔细看看是哪出错了呢","提示",JOptionPane.QUESTION_MESSAGE);      		
			      		  }	  								
					}
				}
			}
		}
	}
