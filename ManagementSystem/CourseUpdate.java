package ManagementSystem;

import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;

public class CourseUpdate extends JFrame implements ActionListener {
    private Connection conn=null;
    private PreparedStatement perstmt=null;
    
    private JLabel label,label2;
    private JTextField field;
    private JButton button;
    private JPanel panel;
    
    private DefaultTableModel model;
    private JTable table;
    private JScrollPane jsp;
    public CourseUpdate(String string,Connection conn,PreparedStatement perstmt){
    	this.conn=conn;
    	this.perstmt=perstmt;
    	
    	Font font=new Font("",Font.BOLD,22);
    	Font font1=new Font("",Font.BOLD,17);
    	
    	
    	label=new JLabel("课程号");
    	field=new JTextField(10);
    	button=new JButton("查询");
    	label.setFont(font);
    	field.setFont(font);
    	button.setFont(font);
    	
    	panel =new JPanel();    
    	panel.setLayout(new FlowLayout());
    	panel.add(label);
    	panel.add(field);
    	panel.add(button);
    	
    	 //设置表格
	    String[] columnsNames = { "课程号", "课程名", "学分"};	    
	    model = new DefaultTableModel(columnsNames,3);
		table = new JTable(model);
		table.setFont(font1);
		jsp = new JScrollPane(table);
		label2=new JLabel("课程信息表:");
        label2.setFont(font);
        
        this.setTitle(string);
    	this.setVisible(true);
    	this.setSize(500,300);
    	this.setLocation(700,150);
    	this.setLayout(new GridLayout(3,1));
    	this.add(panel);
    	this.add(label2);
    	this.add(jsp);
        
    	//设置监听
    	field.addActionListener(this);
    	button.addActionListener(this);
    	
    }
	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		if(arg0.getSource().equals(button)){
			if(field.getText().isEmpty()){
				JOptionPane.showMessageDialog(null,"请先输入信息","警告",JOptionPane.WARNING_MESSAGE);
			}else{
				String cno1=null,cname1=null,credit1=null;
				try{
				String sql;								     	   
			     sql = "select * from c where cno=?";
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
						cno1 = rs.getString("cno");
				   	    cname1 = rs.getString("cname");
				   	    credit1= rs.getString("credit");							   	      
				       //按格式处理变量  将数据填入表格    
				   	  table.setValueAt(cno1,number,0);
                      table.setValueAt(cname1,number,1);
				   	  table.setValueAt(credit1,number,2);	
					   	number++;
					  }	
					if(number!=0){
						new Update1("修改界面",field.getText(),conn,perstmt);
					}else{
						JOptionPane.showMessageDialog(null,"没有该课程","提示",JOptionPane.INFORMATION_MESSAGE);
					}				
				}catch(Exception e){
					JOptionPane.showMessageDialog(null,"仔细看看是哪出错了呢","提示",JOptionPane.QUESTION_MESSAGE);
				}
			}
		}
	}

}
