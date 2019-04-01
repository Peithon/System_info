package ManagementSystem;

import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;

	public class Password extends JFrame implements ActionListener{
	    private String Sno=null;
	    private StudentSystem stu=null;
	    private Connection conn=null;
	    private PreparedStatement perstmt=null;
	    private JLabel label,label2;
	    private JButton button1,button2;
	    private JTextField field1;
	    private JPasswordField field2;
	    private JPanel panel1,panel2,panel3;
	    public Password(String string,String Sno,StudentSystem stu,Connection conn,PreparedStatement perstmt){
	    	this.Sno=Sno;
	    	this.stu=stu;
	    	this.conn=conn;
	    	this.perstmt=perstmt;
	    	
	    	Font font =new Font("",Font.BOLD,22);
	    	 label=new JLabel("新 密 码 ");
	    	label2=new JLabel("确认密码");
	    	field1=new JTextField(10);
	    	field2=new JPasswordField(10);
	    	button1=new JButton("确定");
	    	button2=new JButton("取消");
	    	label.setFont(font);
	    	label2.setFont(font);
	    	field1.setFont(font);
	    	field2.setFont(font);
	    	button1.setFont(font);
	    	button2.setFont(font);
	    	
	    	panel1=new JPanel();
	    	panel2=new JPanel();
	    	panel3=new JPanel();
	    	panel1.setLayout(new FlowLayout());
	    	panel2.setLayout(new FlowLayout());
	    	panel1.add(label);
	    	panel1.add(field1);
	    	panel2.add(label2);
	    	panel2.add(field2);
	    	panel3.add(button1);
	    	panel3.add(button2);
	    	
	    	this.setTitle(string);
		    this.setVisible(true);
		    this.setLocation(700,300);
		    this.setSize(500,300);
		    this.setLayout(new GridLayout(3,1));	   
		    this.add(panel1);
		    this.add(panel2);
		    this.add(panel3);
		    
		    //监听
		    field1.addKeyListener(new C());
		    field2.addKeyListener(new C());
		    field1.addActionListener(this);
		    field2.addActionListener(this);
		    button1.addActionListener(this);
		    button2.addActionListener(this);
	    }
		@Override
		public void actionPerformed(ActionEvent arg0) {
			// TODO Auto-generated method stub
			if(arg0.getSource().equals(button1)){
				if(field1.getText().isEmpty()&&field2.getText().isEmpty()){
					JOptionPane.showMessageDialog(null,"请输入密码","提示消息",JOptionPane.ERROR_MESSAGE);
				}else if(field1.getText().isEmpty()){
					JOptionPane.showMessageDialog(null,"请输入新密码","提示消息",JOptionPane.ERROR_MESSAGE);
				}else if(field2.getText().isEmpty()){
					JOptionPane.showMessageDialog(null,"请输入确认密码","提示消息",JOptionPane.ERROR_MESSAGE);
				}else{
					if(field1.getText().equals(field2.getText())){				
							try {
								String sql;								     	   
								sql="update student set password=? where username=?";
								perstmt=conn.prepareStatement(sql);
								perstmt.setString(1,field1.getText());
								perstmt.setString(2,Sno);
								perstmt.executeUpdate(); 
					            conn.commit();
					            JOptionPane.showMessageDialog(null,"修改密码成功！\n请重新登录","提示消息",JOptionPane.CLOSED_OPTION);
					            this.dispose();
					            stu.dispose();
					            new Login("学生管理系统",conn,perstmt);
							} catch (Exception e) {
								// TODO Auto-generated catch block
								JOptionPane.showMessageDialog(null,"呜呜呜~~~~","提示消息",JOptionPane.ERROR_MESSAGE);
							}												
					}else{
						JOptionPane.showMessageDialog(null,"密码不一致\n请重新输入","提示消息",JOptionPane.ERROR_MESSAGE);
						field2.setText("");
					}
				}
			}else{
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
