package ManagementSystem;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
public class TeacherSystem extends JFrame implements ActionListener{
	//设置组件
	private Connection conn=null;
	private PreparedStatement perstmt=null;
	private JTextArea textfield1,textfield2;
	private JPanel panel;
	private JLabel label;
	private JMenu menubar1,menubar2,menubar3,menubar4,menubar5,menubar6;//文件、学生管理、课程管理、成绩管理、其他、帮助
	private JMenuBar bar1; //菜单栏
	private JMenuItem bar1open,bar1exit;
	private JMenuItem bar2create,bar2read,bar2update,bar2delete;     //学生信息的增删查改
	private JMenuItem bar3create,bar3read,bar3update,bar3delete;     //课程信息的增删查改
	private JMenuItem bar4create,bar4read,bar4update,bar4delete;     //成绩信息的增删查改
	private JMenuItem bar5other;   
	private JMenuItem bar6help,bar6about;
	public TeacherSystem(String string,Connection conn,PreparedStatement perstmt){
		this.conn=conn;
		this.perstmt=perstmt;
		
		Font font=new Font("",Font.BOLD,25);
		Font font1=new Font("",Font.BOLD,19);
		//菜单栏 及将菜单增加到菜单栏中
		bar1=new JMenuBar();
		menubar1=new JMenu("打开");
		menubar1.setFont(font);
		menubar2=new JMenu("学生管理");
		menubar2.setFont(font);
		menubar3=new JMenu("课程管理");
		menubar3.setFont(font);
		menubar4=new JMenu("成绩管理");
		menubar4.setFont(font);
		menubar5=new JMenu("其他");
		menubar5.setFont(font);
		menubar6=new JMenu("帮助");
		menubar6.setFont(font);
		bar1.add(menubar1);
		bar1.add(menubar2);
		bar1.add(menubar3);
		bar1.add(menubar4);
		bar1.add(menubar5);
		bar1.add(menubar6);
		
		//创建菜单项增加到菜单中
		bar1open=new JMenuItem("登陆界面");
		bar1open.setFont(font1);
		bar1exit=new JMenuItem("退出系统");
		bar1exit.setFont(font1);
		menubar1.add(bar1open);
		menubar1.add(bar1exit);
		
		bar2create=new JMenuItem("添  加");
		bar2read=new JMenuItem("查  询");
		bar2update=new JMenuItem("修  改");
		bar2delete=new JMenuItem("删  除");
		bar2create.setFont(font1);
		bar2read.setFont(font1);
		bar2update.setFont(font1);
		bar2delete.setFont(font1);
		menubar2.add(bar2create);
		menubar2.add(bar2read);
		menubar2.add(bar2update);
		menubar2.add(bar2delete);
		
		bar3create=new JMenuItem("添  加");
		bar3read=new JMenuItem("查  询");
		bar3update=new JMenuItem("修  改");
		bar3delete=new JMenuItem("删  除");
		bar3create.setFont(font1);
		bar3read.setFont(font1);
		bar3update.setFont(font1);
		bar3delete.setFont(font1);
		menubar3.add(bar3create);
		menubar3.add(bar3read);
		menubar3.add(bar3update);
		menubar3.add(bar3delete);
		 
		bar4create=new JMenuItem("添  加");
		bar4read=new JMenuItem("查  询");
		bar4update=new JMenuItem("修  改");
		bar4delete=new JMenuItem("删  除");
		bar4create.setFont(font1);
		bar4read.setFont(font1);
		bar4update.setFont(font1);
		bar4delete.setFont(font1);
		menubar4.add(bar4create);
		menubar4.add(bar4read);
		menubar4.add(bar4update);
		menubar4.add(bar4delete);
		
		bar5other=new JMenuItem("版本");
		bar5other.setFont(font1);
		menubar5.add(bar5other);
		
		bar6help=new JMenuItem("使用");
		bar6about=new JMenuItem("关于");
		bar6help.setFont(font1);
		bar6about.setFont(font1);
		menubar6.add(bar6help);
		menubar6.add(bar6about);
		
		label=new JLabel("      学   生   管  理  系   统");
		label.setFont(new Font("宋体",Font.BOLD,50));
		textfield1=new JTextArea();
		textfield1.setBackground(Color.gray);
		textfield1.setEditable(false);
	    textfield2 =new JTextArea();
	    textfield2.setBackground(Color.blue);
	    textfield2.setEditable(false);
	    panel=new JPanel();
	    panel.setLayout(new BorderLayout());
	    panel.add(textfield1,BorderLayout.NORTH);
	    panel.add(label,BorderLayout.CENTER);
	    panel.add(textfield2,BorderLayout.SOUTH);
	    this.add(panel);
	    
		this.setTitle(string);
		this.setSize(1050, 850);
		this.setLocation(600, 110);
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
		this.setJMenuBar(bar1);
		this.setVisible(true);
		
		//设置监听
		bar1open.addActionListener(this);
		bar1exit.addActionListener(this);
		
		bar2create.addActionListener(this);
		bar2read.addActionListener(this);
		bar2update.addActionListener(this);
		bar2delete.addActionListener(this);
		
		bar3create.addActionListener(this);
		bar3read.addActionListener(this);
		bar3update.addActionListener(this);
		bar3delete.addActionListener(this);
		
		bar4create.addActionListener(this);
		bar4read.addActionListener(this);
		bar4update.addActionListener(this);
		bar4delete.addActionListener(this);	
		
		bar5other.addActionListener(this); 
		
		bar6help.addActionListener(this);
		bar6about.addActionListener(this);
	}
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if(e.getSource().equals(bar1open)){      //返回登陆界面
			JOptionPane.showMessageDialog(null,"即将返回登录界面","提示信息",JOptionPane.CLOSED_OPTION);
			this.dispose();
			new Login("学生管理系统",conn,perstmt); 
		}else if(e.getSource().equals(bar1exit)){    //退出系统
			try {
				DBConnection.Close(conn);
				JOptionPane.showMessageDialog(null,"期待与您再次见面","温馨提示",JOptionPane.INFORMATION_MESSAGE);
				System.exit(0);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}	
			
		}else if(e.getSource().equals(bar2create)){    //学生信息添加
		    new StudentCreate("添加学生信息",conn,perstmt);			
		}else if(e.getSource().equals(bar2read)){      //学生信息查询
			new StudentRead("学生信息查询",conn,perstmt);		
		}else if(e.getSource().equals(bar2update)){     //学生信息修改
			new StudentUpdate("修改学生信息界面",conn,perstmt);			
		}else if(e.getSource().equals(bar2delete)){      //学生信息删除						
			new StudentDelete("学生删除界面",conn,perstmt);
			
			
        }else if(e.getSource().equals(bar3create)){    //课程信息添加
		    new CourseCreate("添加课程信息",conn,perstmt);        	
		}else if(e.getSource().equals(bar3read)){      //课程信息查询
			new CourseRead("课程信息查询",conn,perstmt);			
		}else if(e.getSource().equals(bar3update)){     //课程信息修改
			new CourseUpdate("课程修改界面",conn,perstmt);
		}else if(e.getSource().equals(bar3delete)){      //课程信息删除
			new CourseDelete("课程删除界面",conn,perstmt);
			
			
        }else if(e.getSource().equals(bar4create)){    //成绩信息添加
			new ScoreCreate("添加成绩信息",conn,perstmt);
		}else if(e.getSource().equals(bar4read)){      //成绩信息查询
			new ScoreRead("查询成绩信息",conn,perstmt);			
		}else if(e.getSource().equals(bar4update)){     //成绩信息修改
			new ScoreUpdate("修改成绩界面",conn,perstmt);
		}else if(e.getSource().equals(bar4delete)){      //成绩信息删除
			new ScoreDelete("删除成绩界面",conn,perstmt);
			
			
		}else if(e.getSource().equals(bar5other)){        //其他
			JOptionPane.showMessageDialog(null,"system 1-1-1.0","版本信息",JOptionPane.INFORMATION_MESSAGE);
		}else if(e.getSource().equals(bar6help)){        //使用
			JOptionPane.showMessageDialog(null,"打开功能可以选择退出系统及返回登陆界面\n"
					+ "学生管理即对学生信息进行增删查改操作\n"
					+ "课程管理和成绩管理同学生管理类似\n"
					+ "其他可以查看版本信息\n","使用",JOptionPane.QUESTION_MESSAGE);
		}else{                                            //关于
			JOptionPane.showMessageDialog(null,"这只是一个小系统\n"
					+ "可以吐槽,但我不听","关于系统",JOptionPane.INFORMATION_MESSAGE);
		}
	}

}
