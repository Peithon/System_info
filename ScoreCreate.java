package ManagementSystem;

import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.KeyboardFocusManager;
import java.awt.event.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.swing.*;
public class ScoreCreate extends JFrame implements ActionListener{

	private JLabel label,label2,label3,label4,label5;
    private JTextField field1,field2,field3;
    private JButton button1,button2;
    private JPanel panel1,panel2,panel3,panel4;
    private Connection conn=null;
    private PreparedStatement perstmt=null;
    public ScoreCreate(String string,Connection conn,PreparedStatement perstmt){
    	 this.conn=conn;
    	 this.perstmt=perstmt;
    	 
    	 Font font=new Font("",Font.BOLD,22);
    	 label=new JLabel("学    号");
    	 label2=new JLabel("课程号");
    	 label3=new JLabel("成    绩");
    	 label.setFont(font);
    	 label2.setFont(font);
    	 label3.setFont(font);
    	 
    	 field1=new JTextField(10);
    	 field2=new JTextField(10);
    	 field3=new JTextField(10);
    	 field1.setFont(font);
    	 field2.setFont(font);
    	 field3.setFont(font);
    	 
    	 button1=new JButton("确定");
    	 button2=new JButton("取消");
    	 button1.setFont(font);
    	 button2.setFont(font);
    	 
    	 panel1=new JPanel();
    	 panel2=new JPanel();
    	 panel3=new JPanel();
    	 panel4=new JPanel();
    	 
    	 panel1.setLayout(new FlowLayout());
    	 panel1.add(label);
    	 panel1.add(field1);
    	
    	 panel2.setLayout(new FlowLayout());
    	 panel2.add(label2);
    	 panel2.add(field2);
    	
    	 panel3.setLayout(new FlowLayout());
    	 panel3.add(label3);
    	 panel3.add(field3);
    	
    	 panel4.setLayout(new FlowLayout());   	 
    	 label4=new JLabel("     ");
    	 panel4.add(button1);
    	 panel4.add(label4);
    	 panel4.add(button2);
    	 
    	 this.setTitle(string);
    	 this.setSize(450,330);
    	 this.setLocation(700,150);
    	 this.setVisible(true);
    	 this.setLayout(new GridLayout(4,1));
    	 this.add(panel1);
    	 this.add(panel2);
    	 this.add(panel3);
    	 this.add(panel4);
    	 //回车监听
    	 field1.addKeyListener(new C());
    	 field2.addKeyListener(new C());
    	 field3.addKeyListener(new C());
    	 
    	 //设置动作监听
    	 field1.addActionListener(this);
    	 field2.addActionListener(this);
    	 field3.addActionListener(this);
    	 button1.addActionListener(this);
    	 button2.addActionListener(this);
    	 
    }
	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		if(arg0.getSource().equals(button1)){
			if(field1.getText().isEmpty()&&field2.getText().isEmpty()&&field3.getText().isEmpty()){
				JOptionPane.showMessageDialog(null,"请填写成绩信息","警告",JOptionPane.WARNING_MESSAGE);
			}else if(field1.getText().isEmpty()){			
				JOptionPane.showMessageDialog(null,"学号不能为空","警告",JOptionPane.WARNING_MESSAGE);				
			}else if(field2.getText().isEmpty()){
				JOptionPane.showMessageDialog(null,"课程号不能为空","警告",JOptionPane.WARNING_MESSAGE);
			}else if(field3.getText().isEmpty()){
				JOptionPane.showMessageDialog(null,"成绩不能为空","警告",JOptionPane.WARNING_MESSAGE);	
			}else if(!field3.getText().isEmpty()){                          
				try { 	               
	                double nume=Integer.valueOf(field3.getText());//把字符串强制转换为数字 
	             } 
	              catch (Exception e) {	 
	            	  JOptionPane.showMessageDialog(null,"成绩不能为字符","警告",JOptionPane.WARNING_MESSAGE);
	            	  field3.setText("");
	             }
			}
            if(!(field1.getText().isEmpty()||field2.getText().isEmpty()||field3.getText().isEmpty())){ 
            	//把资料送入数据库
				try{    
					 String sql;								     	   
				     sql = "INSERT INTO SC(sno,cno,grade) VALUES(?,?,?)";
				        perstmt=conn.prepareStatement(sql);  
						perstmt.setString(1,field1.getText()); 
						perstmt.setString(2,field2.getText());
						perstmt.setString(3,field3.getText());
						perstmt.executeUpdate();
			            conn.commit();	
			            JOptionPane.showMessageDialog(null,"添加成功","提示",JOptionPane.CLOSED_OPTION); 
			            this.dispose();
	      		  }catch(Exception te){	      			  
	      			JOptionPane.showMessageDialog(null,"仔细看看是哪出错了呢\n可能没有该学生或课程\n或该学生此课程已有成绩","提示",JOptionPane.QUESTION_MESSAGE);      		
	      		  }	 
			}  
		}else{
	//	if(arg0.getSource().equals(button2)){
			this.dispose();
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
