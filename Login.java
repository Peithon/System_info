package ManagementSystem;

import java.awt.*;
import java.awt.event.*;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.swing.*;
	public class Login extends JFrame implements ActionListener {
	    //定义登录界面的组件	
		private String path="D:\\java 编程\\StudentManagementSystem\\back.jpg";
		private Image image=Toolkit.getDefaultToolkit().getImage(path);
		private  Connection conn=null;
		private  PreparedStatement perstmt=null;
		private JButton button1,button2;
		private JRadioButton jrbutton1,jrbutton2;
		private JLabel label1,label2,label3;
		private JLabel  label4,label5,label6;  //让排版美观
		private JTextField text;
		private JPasswordField password;
		private ButtonGroup buttongroup;
		private JPanel panel1,panel2,panel3,panel4;
		public Login(String string,Connection conn,PreparedStatement perstmt){
			
			this.conn=conn;
			this.perstmt=perstmt;
			
			
			Font font=new Font("",Font.BOLD,32);
			Font font1=new Font("",Font.BOLD,22);
			//创建组件
		    label1=new JLabel("账 户");
		    label1.setFont(font);
		    label2=new JLabel("密 码");
		    label2.setFont(font);
		    label3=new JLabel("权 限");
		    label3.setFont(font);
		    label4=new JLabel("            ");
		    label5=new JLabel("         ");
		    label6=new JLabel("                     ");
		    
		    jrbutton1 =new JRadioButton("教师");
		    jrbutton1.setFont(font1);
		    jrbutton2 =new JRadioButton("学生");
		    jrbutton2.setFont(font1);
		    buttongroup=new ButtonGroup();
		    buttongroup.add(jrbutton1);
		    buttongroup.add(jrbutton2);
		    jrbutton2.setSelected(true);    //组中只可以选择一个按钮 默认按钮2
			
		    button1= new JButton("退出");
			button1.setFont(font);
			button2= new JButton("登录");
			button2.setFont(font);
			
			panel1=new JPanel();
			panel2=new JPanel();
			panel3=new JPanel();
			panel4=new JPanel();
			
			text=new JTextField(10);               //键入用户
			text.setFont(font);
			password=new JPasswordField(10);        //键入密码
			password.setFont(font);
			
			panel1.setLayout(new FlowLayout());         //用户名
			panel1.add(label1);
			panel1.add(text);
			
			panel2.setLayout(new FlowLayout());         //密码
			panel2.add(label2);
			panel2.add(password);
			
			panel3.setLayout(new FlowLayout());         //身份
			panel3.add(label3);
			panel3.add(label4);
			panel3.add(jrbutton1);
			panel3.add(label5);
			panel3.add(jrbutton2);
			panel3.add(label6);
			
			panel4.setLayout(new FlowLayout());          //功能
			panel4.add(button1);       //觉得在登录界面放一个退出按钮有不合理,还是先用着
			JLabel  jl=new JLabel("                   ");
			panel4.add(jl);
			panel4.add(button2);
			
			//设置图片
			/*String path="D:\\java 编程\\StudentManagementSystem\\back.jpg";
			Icon background = new ImageIcon(path);
			JLabel label66=new JLabel(background,JLabel.CENTER);
			label66.setBounds(0,0,this.getWidth(),this.getHeight());		
			JPanel imagePanel=(JPanel)this.getContentPane();		
			imagePanel.setOpaque(false);
			this.getLayeredPane().add(label66,new Integer(Integer.MIN_VALUE));  */
			this.setLayout(new GridLayout(4,1));  //网状布局 四行一列
			this.add(panel1); 
			this.add(panel2);
			this.add(panel3);
			this.add(panel4); 
			
				   
			//设置标题、窗口大小、窗口的初始位置
			this.setTitle(string);
			this.setSize(550, 350);
			this.setLocation(700, 150);
			this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);   //退出应用程序使用System exit方法。仅在应用程序中使用		
			this.setVisible(true);
			
			//设置监听
			button1.addActionListener(this);
			button2.addActionListener(this);
			text.addKeyListener(new C());
			password.addKeyListener(new C());
		}
		
		public void cls(){
			text.setText("");
			password.setText("");
		}
		@Override
		public void actionPerformed(ActionEvent arg0) {
			// TODO Auto-generated method stub
			
			if(arg0.getSource().equals(button1)){   //选了关闭按钮就直接退出
				System.exit(0);
			}else{       //登录 先判断输入框不为空的情况
				
				if(text.getText().isEmpty()&&password.getText().isEmpty()){
					JOptionPane.showMessageDialog(null,"请输入账户和密码！","提示消息",JOptionPane.WARNING_MESSAGE);
				}else if(text.getText().isEmpty()){
					JOptionPane.showMessageDialog(null,"请输入账户！","提示消息",JOptionPane.WARNING_MESSAGE);
				}else if(password.getText().isEmpty()){
					JOptionPane.showMessageDialog(null,"请输入密码！","提示消息",JOptionPane.WARNING_MESSAGE);
				}else{
					//如果输入框都不为空，连接数据库
					if(jrbutton1.isSelected()){    //如果权限选了教师
						try {		
							if(DBConnection.teacherQuery(text.getText(),password.getText(),conn,perstmt)==true){     //账号和密码正确
							//if(text.getText().equals("admin")&&password.getText().equals("password")){//测试用的代码
								JOptionPane.showMessageDialog(null,"登录成功！","提示消息",JOptionPane.NO_OPTION);
								//关闭当前界面
								this.dispose();
							   // this.setVisible(false);
							   //System.exit(0);
								//创建一个新界面	
								new TeacherSystem("学生管理系统--教师界面",conn,perstmt);
							}else{
								JOptionPane.showMessageDialog(null,"账户或密码错误\n请重新输入","提示消息",JOptionPane.ERROR_MESSAGE);
								cls();
							}					
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}else{              //如果权限选了学生        
						try {					
							if(DBConnection.studentQuery(text.getText(),password.getText(),conn,perstmt)){     //账号和密码正确
						//	if(text.getText().equals("801")&&password.getText().equals("good")){  //测试用的代码
								JOptionPane.showMessageDialog(null,"登录成功！","提示消息",JOptionPane.CLOSED_OPTION);
								//关闭当前界面
								this.dispose();
								//System.exit(0);
								//创建一个新界面	
								new StudentSystem("学生管理系统--学生界面",text.getText(),conn,perstmt);
							}else{
								JOptionPane.showMessageDialog(null,"账户或密码错误\n请重新输入","提示消息",JOptionPane.ERROR_MESSAGE);
								cls();
								/*
								 显示一个错误对话框，显示消息，“警报”： 
	                             JOptionPane.showMessageDialog(null, "alert", "alert", JOptionPane.ERROR_MESSAGE); 
								 */
							}
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}   
					}
				}											
			}
		}
	/*	public void paint(Graphics g){    //添加背景图片
			super.paintComponents(g);
			g.drawImage(image,0,0,this);
		}*/
		class C extends KeyAdapter{    //回车监听
	  	  public void keyPressed(KeyEvent e){
	  		  if(e.getKeyCode()==KeyEvent.VK_ENTER){
	  			  e.consume();
	  			  KeyboardFocusManager.getCurrentKeyboardFocusManager().focusNextComponent();
	  		  }
	  	  }
	    }  
		
	}
