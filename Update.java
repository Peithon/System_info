package ManagementSystem;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.KeyboardFocusManager;
import java.awt.event.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Enumeration;

import javax.swing.*;

import ManagementSystem.StudentCreate.C;

public class Update extends JFrame implements ActionListener{
	private JButton button1,button2,button3;
    private  JLabel label1,label2,label3,label4,label5;         //学号、姓名、性别、年龄，专业、照片
    private  JLabel label6,label7,label8,label9,label10;     //排版
    private  JLabel picture;
	 private  JTextField fiel1,fiel2,fiel3;
	 private  JTextArea area,are1;
	 private  JRadioButton jrbutton1,jrbutton2;
	 private  ButtonGroup buttonGroup;
	 private  JComboBox comboBox;
	 private  JPanel panel,panel2,panel3,panel4,panel5,panel6,panel7,panel8;
	 private  Connection conn=null;
	 private PreparedStatement perstmt=null;
	 private String stuSno=null;
	 public Update(String string ,String stuSno,Connection conn,PreparedStatement perstmt){
		 this.conn=conn;
		 this.perstmt=perstmt;
		 this.stuSno=stuSno;
		 
		 Font font=new Font("",Font.BOLD,22);
		 
		 label1=new JLabel("学号");
	     label2=new JLabel("姓名");
	     label3=new JLabel("性别");
	     label4=new JLabel("专业");
	     label5=new JLabel("年龄");
	     label1.setFont(font);
	     label2.setFont(font);
	     label3.setFont(font);
	     label4.setFont(font);
	     label5.setFont(font);
	     
	     fiel1=new JTextField(10);
	     fiel2=new JTextField(10);
	     fiel3=new JTextField(10);
	     fiel1.setFont(font);
	     fiel2.setFont(font);
	     fiel3.setFont(font);
	     
	     jrbutton1=new JRadioButton("男");
	     jrbutton2=new JRadioButton("女");
	     jrbutton1.setFont(font);
	     jrbutton2.setFont(font);
	     buttonGroup=new ButtonGroup();
	     buttonGroup.add(jrbutton1);
	     buttonGroup.add(jrbutton2);
	     jrbutton2.setSelected(true);
	     
	     comboBox=new JComboBox();    //专业
	     comboBox.addItem("CS");
	     comboBox.addItem("MA");
	     comboBox.addItem("null");
	     comboBox.setFont(font);
	     
	     button1=new JButton("修改");
	     button1.setFont(font);
	     button2=new JButton("取消");
	     button2.setFont(font);
		 
	     area=new JTextArea(8,12);
	     are1=new JTextArea(8,4);
	     are1.setBackground(Color.gray);
	     are1.setEditable(false);
	     area.setOpaque(false);
	     area.setEditable(false);
	     are1.setOpaque(false);
	     area.setText("   null  ");
	     button3=new JButton("上传照片");
	     button3.setFont(font);
	     
	     panel=new JPanel();
	     panel2=new JPanel();
	     panel3=new JPanel();
	     panel4=new JPanel();
	     panel5=new JPanel();
	     
	     panel.setLayout(new FlowLayout());               //学号
	     panel.add(label1);
	     panel.add(fiel1);
	    
	     panel2.setLayout(new FlowLayout());                //姓名
	     panel2.add(label2);
	     panel2.add(fiel2);
	     panel3.setLayout(new FlowLayout());               //性别
	     label6=new JLabel("               ");
	     label7=new JLabel("            ");	    
	     panel3.add(label3);
	     panel3.add(label6);
	     panel3.add(jrbutton1);
	     panel3.add(label7);
	     panel3.add(jrbutton2);	
	     
	     panel4.setLayout(new FlowLayout());               //专业 
	     label8=new JLabel("                     ");
	     label9=new JLabel("                   ");
	     panel4.add(label4);
	     panel4.add(label8);
	     panel4.add(comboBox);
	     panel4.add(label9);
	     
	     
	     panel5.setLayout(new FlowLayout());               //年龄
	     panel5.add(label5);
	     panel5.add(fiel3);
	     
	     panel6=new JPanel();     
	     panel6.setLayout(new GridLayout(5,1));                //放在一个容器
	     panel6.add(panel);
	     panel6.add(panel2);
	     panel6.add(panel3);
	     panel6.add(panel4);
	     panel6.add(panel5);
	     
	     panel7=new JPanel();
	     panel7.setLayout(new FlowLayout()); 
	     label10=new JLabel("                     ");
	     panel7.add(button1);
	     panel7.add(label10);
	     panel7.add(button2);
	     
	     panel8=new JPanel();
	     panel8.setLayout(new BorderLayout());
	     panel8.add(are1,BorderLayout.NORTH);
	     panel8.add(area,BorderLayout.CENTER);
	     panel8.add(button3,BorderLayout.SOUTH);
	     
	     this.setTitle(string);
	     this.setVisible(true);
	     this.setLocation(700, 150);
	     this.setSize(800,450);
	     this.setLayout(new BorderLayout());
	     this.add(panel6,BorderLayout.CENTER);
	     this.add(panel8,BorderLayout.EAST);
	     this.add(panel7,BorderLayout.SOUTH);
	     
	     //键盘监听
	     fiel1.addKeyListener(new C());
	     fiel2.addKeyListener(new C());
	     
	      //设置动作监听
	     fiel1.addActionListener(this);
	     fiel2.addActionListener(this);
	     fiel3.addActionListener(this);
	     button1.addActionListener(this);
	     button2.addActionListener(this);
	     button3.addActionListener(this);
	 }
	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		if(arg0.getSource().equals(button2)){       //退出
			this.dispose();
		}else if(arg0.getSource().equals(button1)){    //提交
			if(fiel1.getText().isEmpty()&&fiel2.getText().isEmpty()&&fiel3.getText().isEmpty()){
				JOptionPane.showMessageDialog(null,"请填写学生的修改资料","警告",JOptionPane.WARNING_MESSAGE);
			}else if(fiel1.getText().isEmpty()){				
				JOptionPane.showMessageDialog(null,"学号不能为空","警告",JOptionPane.WARNING_MESSAGE);			
			}else if(fiel2.getText().isEmpty()){
				JOptionPane.showMessageDialog(null,"姓名不能为空","警告",JOptionPane.WARNING_MESSAGE);
			}else if(fiel3.getText().isEmpty()){
				JOptionPane.showMessageDialog(null,"年龄不能为空","警告",JOptionPane.WARNING_MESSAGE);	
			}else if(!fiel3.getText().isEmpty()){                          
				try { 	               
	                int nume=Integer.valueOf(fiel3.getText());//把字符串强制转换为数字 
	             } 
	              catch (Exception e) {	 
	            	  JOptionPane.showMessageDialog(null,"年龄必须为整数","警告",JOptionPane.WARNING_MESSAGE);
	            	  fiel3.setText("");
	             }
			}
           if(!(fiel1.getText().isEmpty()||fiel2.getText().isEmpty()||fiel3.getText().isEmpty())){                                      //把资料送入数据库
				try{     					
					 String sql;					
				     int age=Integer.parseInt(fiel3.getText());				     
				     //从按钮中把性别提取出来
				     String enable=null;
				     Enumeration<AbstractButton> radioBtns=buttonGroup.getElements();
				     while(radioBtns.hasMoreElements()){
				         AbstractButton btn=radioBtns.nextElement();
				            if(btn.isSelected()){
				            enable=btn.getText();
				            break;				            
			         }
				     }
				     if(fiel1.getText().equals(stuSno)){
				    	 sql="update s set sname=?,sex=?,dept=?,age=? where sno=?";		   
							perstmt=conn.prepareStatement(sql);							
							perstmt.setString(1,fiel2.getText());
							perstmt.setString(2,enable);
							perstmt.setString(3,(String)comboBox.getSelectedItem());
							perstmt.setInt(4,age);	
							perstmt.setString(5,stuSno);
							perstmt.executeUpdate();  
							conn.commit();
				     }else{
				    	 sql = "INSERT INTO S(sno,sname,sex,dept,age) VALUES(?,?,?,?,?)";
					        perstmt=conn.prepareStatement(sql);  //
							perstmt.setString(1,fiel1.getText()); 
							perstmt.setString(2,fiel2.getText());
							perstmt.setString(3,enable);
							perstmt.setString(4,(String)comboBox.getSelectedItem());						
							perstmt.setInt(5,age);						                              
							perstmt.executeUpdate();
				            conn.commit();
				        sql="update sc set sno=? where sno=?";
							perstmt=conn.prepareStatement(sql);
							perstmt.setString(1,fiel1.getText());	
							perstmt.setString(2,stuSno);
							perstmt.executeUpdate(); 
				            conn.commit();
				        sql="update student set username=? where username=?";
				            perstmt=conn.prepareStatement(sql);
				            perstmt.setString(1,fiel1.getText());	
							perstmt.setString(2,stuSno); 
				            perstmt.executeUpdate();
				            conn.commit();	
				        sql="delete from s where sno=?";		
							perstmt=conn.prepareStatement(sql);
							perstmt.setString(1,stuSno);
							perstmt.executeUpdate();
							conn.commit();	
				     }				    
			            JOptionPane.showMessageDialog(null,"修改成功","提示",JOptionPane.CLOSED_OPTION);
			            this.dispose();
	      		  }catch(Exception te){	      			  
	      			JOptionPane.showMessageDialog(null,"仔细看看是哪出错了呢","提示",JOptionPane.QUESTION_MESSAGE);      		
	      		  }	      		  		
			}
			
		}else{                                         //上传图片
			new Picture(button3,picture,conn,perstmt);
		}
	}

	class C extends KeyAdapter{    //回车监听
	  	  public void keyPressed(KeyEvent e){
	  		  if(e.getKeyCode()==KeyEvent.VK_ENTER){
	  			  e.consume();
	  			  KeyboardFocusManager.getCurrentKeyboardFocusManager().focusNextComponent();
	  		  }
	  	  }
	    }  
}
