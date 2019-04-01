package ManagementSystem;

import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;

public class Update2 extends JFrame implements ActionListener{
    private Connection conn=null;
    private PreparedStatement perstmt=null;
    private String Sno=null,Cno=null;
    private JLabel label;
    private JTextField field;
    private JButton button,button1;
    private JPanel pane;
	public Update2(String string,String Sno,String Cno,Connection conn,PreparedStatement perstmt){
		 this.conn=conn;
		 this.perstmt=perstmt;
		 this.Sno=Sno;
		 this.Cno=Cno;
		 
		 Font font=new Font("",Font.BOLD,22);
		 label=new JLabel("新成绩");
		 field=new JTextField(10);
		 button =new JButton("修改"); 
		 button1 =new JButton("取消");
		 label.setFont(font);
		 field.setFont(font);
		 button.setFont(font);
		 button1.setFont(font);
		 pane=new JPanel();
		 pane.setLayout(new FlowLayout());
		 pane.add(label);
		 pane.add(field);
		 pane.add(button);
		 pane.add(button1);
		 this.setTitle(string);
	     this.setVisible(true);
	     this.setSize(500,300);
	     this.setLocation(700,150);
	     this.add(pane);
	     //设置监听
	    	field.addActionListener(this);
	    	button.addActionListener(this);
	    	button1.addActionListener(this);
	}
	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		if(arg0.getSource().equals(button)){
			if(field.getText().isEmpty()){
				JOptionPane.showMessageDialog(null,"请输入新成绩","警告",JOptionPane.WARNING_MESSAGE);
			}else{				
				try {
					String sql;
					sql="update sc set grade=? where sno=? and cno=?";
					perstmt=conn.prepareStatement(sql);
					perstmt.setString(1,field.getText());
					perstmt.setString(2,Sno);
					perstmt.setString(3,Cno);
					perstmt.executeUpdate();
					conn.commit();
					JOptionPane.showMessageDialog(null,"修改成功","提示",JOptionPane.CLOSED_OPTION);
					this.dispose();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					JOptionPane.showMessageDialog(null,"输入有误","提示",JOptionPane.CLOSED_OPTION);
				} 	            
			}
		}else{
			this.dispose();
		}
	}

}
