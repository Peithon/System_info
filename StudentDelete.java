package ManagementSystem;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class StudentDelete extends JFrame implements ActionListener{
	private Connection conn=null;
    private PreparedStatement perstmt=null;
    private JButton button;
    private JLabel label;
    private JTextField field;
    private JPanel panel;
    public StudentDelete(String string,Connection conn,PreparedStatement perstmt){
    	this.conn=conn;
    	this.perstmt=perstmt;
    	
    	Font font=new Font("",Font.BOLD,22);
    	label=new JLabel("学号");
    	field=new JTextField(10);
    	button=new JButton("删除");
    	label.setFont(font);
    	field.setFont(font);
    	button.setFont(font);
    	
    	panel=new JPanel();
    	panel.setLayout(new FlowLayout());
    	panel.add(label);
    	panel.add(field);
    	panel.add(button);
    	
    	this.setTitle(string);
    	this.setVisible(true);
    	this.setSize(400,300);
    	this.setLocation(700,150);
    	this.add(panel);
    	
    	field.addActionListener(this);
    	button.addActionListener(this);
    }
	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		if(arg0.getSource().equals(button)){
			if(field.getText().isEmpty()){
				JOptionPane.showMessageDialog(null,"请输入学号","警告信息",JOptionPane.INFORMATION_MESSAGE);
			}else{
				String sql;				 
				try{    
					sql = "select * from s where sno=?";
			        perstmt=conn.prepareStatement(sql);
					perstmt.setString(1,field.getText()); 
					perstmt.executeUpdate();					
					ResultSet rs = perstmt.executeQuery();							
					int number=0;
						 while(rs.next()){ 					   	    
					   	  number++;
						  }	
					if(number!=0){
						sql="delete from sc where sno=?";
						perstmt=conn.prepareStatement(sql);
						perstmt.setString(1,field.getText());
						perstmt.executeUpdate();
						conn.commit();						
					sql="delete from student where username=?";
						perstmt=conn.prepareStatement(sql);
						perstmt.setString(1,field.getText());
						perstmt.executeUpdate();
						conn.commit();						
					sql="delete from s where sno=?";		
						perstmt=conn.prepareStatement(sql);
						perstmt.setString(1,field.getText());
						perstmt.executeUpdate();
						conn.commit();	
						field.setText("");
					JOptionPane.showMessageDialog(null,"删除成功","提示",JOptionPane.OK_CANCEL_OPTION);   
					}else{
						JOptionPane.showMessageDialog(null,"没有学号为"+field.getText()+"的学生","提示",JOptionPane.INFORMATION_MESSAGE);
					}						
	     		  }catch(SQLException te){	   
	     			  te.printStackTrace();
	     			JOptionPane.showMessageDialog(null,"出错了...","提示",JOptionPane.QUESTION_MESSAGE);      		
	     		  }	  
			}
		}
	}

}
