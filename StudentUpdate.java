package ManagementSystem;

import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;

public class StudentUpdate extends JFrame implements ActionListener{
    private Connection conn=null;
    private PreparedStatement perstmt=null;
    private JLabel label1,label4;
    private JButton button1;
    private JTextField field; 
    private JPanel panel;
    private DefaultTableModel model;
    private JTable table;
    private JScrollPane jsp;
    public StudentUpdate(String string,Connection conn,PreparedStatement perstmt){
    	this.conn=conn;
    	this.perstmt=perstmt;
    	
    	Font font=new Font("",Font.BOLD,22);
    	Font font1=new Font("",Font.BOLD,17);
    	label1=new JLabel("学号");
    	field=new JTextField(10);
    	button1=new JButton("查询");
    	label1.setFont(font);
    	field.setFont(font);
    	button1.setFont(font);
    	
    	panel  =new JPanel();
    	panel.setLayout(new FlowLayout());
    	panel.add(label1);
    	panel.add(field);
    	panel.add(button1);
    	
    	 //设置表格
	    String[] columnsNames = { "学号", "姓名", "性别", "专业", "年龄"};	    
	    model = new DefaultTableModel(columnsNames,3);
		table = new JTable(model);
		table.setFont(font1);
		jsp = new JScrollPane(table);
		label4=new JLabel("学生信息表:");
        label4.setFont(font);
    	
    	this.setTitle(string);
    	this.setVisible(true);
    	this.setSize(500,300);
    	this.setLocation(700,150);
    	this.setLayout(new GridLayout(3,1));
    	this.add(panel);
    	this.add(label4);
    	this.add(jsp);
    	
    	//设置监听
    	field.addActionListener(this);
    	button1.addActionListener(this);
    }
	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		if(arg0.getSource().equals(button1)){
			if(field.getText().isEmpty()){
				JOptionPane.showMessageDialog(null,"请先输入信息","警告",JOptionPane.WARNING_MESSAGE);
			}else{
				String Sno,name,sex,Dept;
				int age;
				try{
				String sql;								     	   
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
						new Update("修改界面",field.getText(),conn,perstmt);
					}else{
						JOptionPane.showMessageDialog(null,"没有该学生","提示",JOptionPane.INFORMATION_MESSAGE);
					}				
				}catch(Exception e){
					JOptionPane.showMessageDialog(null,"仔细看看是哪出错了呢","提示",JOptionPane.QUESTION_MESSAGE);
				}
			}
		}
	}

}
