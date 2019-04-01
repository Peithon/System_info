package ManagementSystem;

import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;

public class ScoreUpdate extends JFrame implements ActionListener{
    private Connection conn=null;
    private PreparedStatement perstmt=null;
    private JButton button;
    private JLabel label,label2,label3;  
    private JTextField field1,field2;
    private JPanel panel,panel2,panel3;
    private DefaultTableModel model;
    private JTable table;
    private JScrollPane jsp;
    public ScoreUpdate(String string,Connection conn,PreparedStatement perstmt){
    	this.conn=conn;
    	this.perstmt=perstmt;
    	
    	Font font=new Font("",Font.BOLD,22);
    	Font font1=new Font("",Font.BOLD,17);
    	label=new JLabel("学    号");
    	label2=new JLabel("课程号");
    	label.setFont(font);
    	label2.setFont(font);
    	
    	field1 =new JTextField(10);
    	field2 =new JTextField(10);
    	field1.setFont(font);
    	field2.setFont(font);
    	
    	button =new JButton("确定");
    	button.setFont(font);
    	
    	panel=new JPanel();
    	panel2=new JPanel();
    	panel3=new JPanel();
    	panel.setLayout(new FlowLayout());
    	panel2.setLayout(new FlowLayout());
    	panel.add(label);
    	panel.add(field1);
    	panel2.add(label2);
    	panel2.add(field2);
    	panel3.add(button);
    	
    	//设置表格
	    String[] columnsNames = { "学    号", "课程号", "成    绩"};	    
	    model = new DefaultTableModel(columnsNames,3);
		table = new JTable(model);
		table.setFont(font1);
		jsp = new JScrollPane(table);
		label3=new JLabel("成绩信息表:");
        label3.setFont(font);
    	
        this.setTitle(string);
	    this.setVisible(true);
	    this.setLocation(700,300);
	    this.setSize(700,500);
	    this.setLayout(new GridLayout(5,1));
	    this.add(panel);
	    this.add(panel2);
	    this.add(panel3); 
	    this.add(label3);
	    this.add(jsp);
	    
	    field1.addActionListener(this);
	    field2.addActionListener(this);
	    button.addActionListener(this);
	    field1.addKeyListener(new C());
	    field2.addKeyListener(new C());
    }
	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		if(arg0.getSource().equals(button)){
			if(field1.getText().isEmpty()&&field2.getText().isEmpty()){
				JOptionPane.showMessageDialog(null,"请先输入学号和课程号","警告",JOptionPane.WARNING_MESSAGE);				
			}else if(field1.getText().isEmpty()){
				JOptionPane.showMessageDialog(null,"请先输入学号","警告",JOptionPane.WARNING_MESSAGE);
			}else if(field2.getText().isEmpty()){
				JOptionPane.showMessageDialog(null,"请先输入课程号","警告",JOptionPane.WARNING_MESSAGE);
			}else{
				String sno1=null,cno1=null,grade1=null;
				try{
				String sql;								     	   
			     sql = "select * from sc where sno=? and cno=? ";
			        perstmt=conn.prepareStatement(sql);
					perstmt.setString(1,field1.getText()); 
					perstmt.setString(2,field2.getText());
					perstmt.executeUpdate();	
					for(int ik=0;ik<table.getRowCount();ik++){  //让表的数据清空
						for(int jk=0;jk<table.getColumnCount();jk++){
							table.setValueAt("",ik,jk);
						}
					}
					ResultSet rs = perstmt.executeQuery();					
					int number=0;					
					while(rs.next()){
						sno1 = rs.getString("sno");
				   	    cno1 = rs.getString("cno");
				   	    grade1= rs.getString("grade");							   	      
				       //按格式处理变量  将数据填入表格    
				   	  table.setValueAt(sno1,number,0);
                      table.setValueAt(cno1,number,1);
				   	  table.setValueAt(grade1,number,2);	
					   	number++;
					  }	
					if(number!=0){
						new Update2("修改学生成绩信息",field1.getText(),field2.getText(),conn,perstmt);
					}else{
						JOptionPane.showMessageDialog(null,"该学生没有报此课程","提示",JOptionPane.INFORMATION_MESSAGE);
					}				
				}catch(Exception e){
					JOptionPane.showMessageDialog(null,"仔细看看是哪出错了呢","提示",JOptionPane.QUESTION_MESSAGE);
				}
				
			}
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
