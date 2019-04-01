package ManagementSystem;

import java.awt.Font;
import java.awt.GridLayout;
import java.awt.HeadlessException;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
//课表查询、成绩查询、个人信息、活动报名、教学质量评估、密码修改、退出系统、登录界面
//使用网状布局
public class StudentSystem extends JFrame implements ActionListener {
    private Connection conn=null;
    private PreparedStatement perstmt=null;
    private String Sno=null;
    private JButton button1,button2,button3,button4,button5,button6,button7,button8;
    private JMenuBar bar;
    private JMenu menubar;
    private JMenuItem men1,men2;
    private JPanel panel,panel2;
	public StudentSystem(String string,String Sno,Connection conn,PreparedStatement perstmt){
		this.conn=conn;
		this.perstmt=perstmt;
		this.Sno=Sno;
		
		Font font=new Font("",Font.BOLD,22);
		Font font1=new Font("",Font.BOLD,15);
		
		button1=new JButton("返回登录界面");
		button2=new JButton("成绩查询");
		button3=new JButton("个人信息");
		button4=new JButton("活动报名");
		button5=new JButton("教学质量评估");
		button6=new JButton("课表查询");
		button7=new JButton("密码修改");
		button8=new JButton("退出系统");
		
		button1.setFont(font);
		button2.setFont(font);
		button3.setFont(font);
		button4.setFont(font);
		button5.setFont(font);
		button6.setFont(font);
		button7.setFont(font);
		button8.setFont(font);
		
		panel=new JPanel();
		panel.setLayout(new GridLayout(8,1));
		panel2=new JPanel();
		panel.add(button1);
		panel.add(button2);
		panel.add(button3);
		panel.add(button4);
		panel.add(button5);
		panel.add(button6);
		panel.add(button7);
		panel.add(button8);
		
		bar=new JMenuBar();
		menubar=new JMenu("帮助");
		menubar.setFont(font1);
		bar.add(menubar);
		men1=new JMenuItem("使用");
		men2=new JMenuItem("关于");
		menubar.add(men1);
		menubar.add(men2);
		
			
		panel2.add(panel);
		this.add(panel2);
		this.setTitle(string);
		this.setJMenuBar(bar);
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
		this.setSize(750, 550);
		this.setLocation(700, 150);
		this.setVisible(true);
		
		//设置监听
		button1.addActionListener(this);
		button2.addActionListener(this);
		button3.addActionListener(this);
		button4.addActionListener(this);
		button5.addActionListener(this);
		button6.addActionListener(this);
		button7.addActionListener(this);
		button8.addActionListener(this);
		men1.addActionListener(this);
		men2.addActionListener(this);
		
	}
	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		if(arg0.getSource().equals(men1)){                      //使用
			JOptionPane.showMessageDialog(null,"这没什么好说的","使用",JOptionPane.QUESTION_MESSAGE);
		}else if(arg0.getSource().equals(men2)){                //关于
			JOptionPane.showMessageDialog(null,"版本1-1-1.0\n"
					+ "   版权所有,违者上菜刀","关于",JOptionPane.CLOSED_OPTION);
		}else if(arg0.getSource().equals(button1)){                   //返回登录界面
			JOptionPane.showMessageDialog(null,"即将返回登录界面","提示信息",JOptionPane.CLOSED_OPTION);
			this.dispose();
			new Login("学生管理系统",conn,perstmt); 
        }else if(arg0.getSource().equals(button2)){                    //成绩查询       	
		        try {
		        	String sql,name=null;								     	   
				    sql = "select sname from s where sno=?";
					perstmt=conn.prepareStatement(sql);
					perstmt.setString(1,Sno); 
					perstmt.executeUpdate();
					ResultSet rs = perstmt.executeQuery(); 
					 while(rs.next()){ 
				   	       name=rs.getString("sname");
				            //按格式处理变量
					    }
				   new StudentScoreSearch(name+"同学的成绩",Sno,conn,perstmt);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					JOptionPane.showMessageDialog(null,"发生什么了？","提示",JOptionPane.QUESTION_MESSAGE);
				}			
        }else if(arg0.getSource().equals(button3)){                    //个人信息
        	try {
	        	String sql,name=null;								     	   
			    sql = "select sname from s where sno=?";
				perstmt=conn.prepareStatement(sql);
				perstmt.setString(1,Sno); 
				perstmt.executeUpdate();
				ResultSet rs = perstmt.executeQuery(); 
				 while(rs.next()){ 
			   	       name=rs.getString("sname");
			            //按格式处理变量
				    }
			   new MyInfo(name+"同学的个人信息",Sno,conn,perstmt);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				JOptionPane.showMessageDialog(null,"发生什么了？","提示",JOptionPane.QUESTION_MESSAGE);
			}			
        }else if(arg0.getSource().equals(button4)){                     //活动报名
        	JOptionPane.showMessageDialog(null,"还没有发布活动消息，请耐心等待","温馨提示",JOptionPane.CLOSED_OPTION);
        }else if(arg0.getSource().equals(button5)){                     //教学质量评估
        	JOptionPane.showMessageDialog(null,"还没有教学评估消息，请耐心等待","温馨提示",JOptionPane.CLOSED_OPTION);
        }else if(arg0.getSource().equals(button6)){                     //课表查询
 			try {
				new TimeTable();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }else if(arg0.getSource().equals(button7)){                     //修改密码
        	 new Password("修改密码",Sno,this,conn,perstmt);
        	
        }else {                                              //退出系统
        	try {
				DBConnection.Close(conn);
				JOptionPane.showMessageDialog(null,"期待与您再次见面","温馨提示",JOptionPane.INFORMATION_MESSAGE);
				System.exit(0);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}	        	
		}
	}

}
