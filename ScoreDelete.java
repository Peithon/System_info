package ManagementSystem;

import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;

public class ScoreDelete extends JFrame implements ActionListener {
    private Connection conn=null;
    private PreparedStatement perstmt=null;
    private JPanel panel1,panel2,panel3;
    private JLabel label1,label2;
    private JTextField field1,field2;
    private JButton button1,button2;
    public ScoreDelete(String string,Connection conn,PreparedStatement perstmt){
    	   this.conn=conn;
    	   this.perstmt=perstmt;
    	   
    	   Font font =new Font("",Font.BOLD,22);
    	   
    	   label1=new JLabel("学   号"); 
    	   label2=new JLabel("课程号");
    	   label1.setFont(font);
    	   label2.setFont(font);
    	   
    	   field1=new JTextField(10);
    	   field2=new JTextField(10);   	   
    	   field1.setFont(font);
    	   field2.setFont(font);
    	   
    	   button1=new JButton("删除");
    	   button2=new JButton("取消");
    	   button1.setFont(font);
    	   button2.setFont(font);
    	   
    	   panel1=new JPanel();
    	   panel2=new JPanel();
    	   panel3=new JPanel();
    	  
    	   panel1.setLayout(new FlowLayout());
    	   panel2.setLayout(new FlowLayout());
    	   panel3.setLayout(new FlowLayout());
    	   panel1.add(label1);
    	   panel1.add(field1);
    	   panel2.add(label2);
    	   panel2.add(field2);
    	   panel3.add(button1);
    	   panel3.add(button2);
    	   
    	   this.setTitle(string);
    	   this.setVisible(true);
    	   this.setLocation(700,300);
    	   this.setSize(400, 350);
    	   this.setLayout(new GridLayout(3,1));
    	   this.add(panel1);
    	   this.add(panel2);
    	   this.add(panel3);
    	   
    	   //键盘中的回车监听
    	   field1.addKeyListener(new C());
    	   field2.addKeyListener(new C());
    	   
    	   //设置事件监听
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
				JOptionPane.showMessageDialog(null,"请输入学号和课程号","温馨提示",JOptionPane.INFORMATION_MESSAGE);
			}else if(field1.getText().isEmpty()){
				JOptionPane.showMessageDialog(null,"请输入学号","温馨提示",JOptionPane.INFORMATION_MESSAGE);
			}else if(field2.getText().isEmpty()){
				JOptionPane.showMessageDialog(null,"请输入课程号","温馨提示",JOptionPane.INFORMATION_MESSAGE);
			}else{
				 String sql;
			    try {
			    	sql = "select * from sc where sno=? and cno=?";
			        perstmt=conn.prepareStatement(sql);
			        perstmt.setString(1,field1.getText());				
					perstmt.setString(2,field2.getText());
					perstmt.executeUpdate();					
					ResultSet rs = perstmt.executeQuery();							
					int number=0;
						 while(rs.next()){ 					   	    
					   	  number++;
						  }	
					if(number!=0){	
						sql="delete from sc where sno=? and cno=?";
					    perstmt=conn.prepareStatement(sql);
					    perstmt.setString(1,field1.getText());				
						perstmt.setString(2,field2.getText());
						perstmt.executeUpdate();
						conn.commit();
						field1.setText("");
						field2.setText("");
						JOptionPane.showMessageDialog(null,"删除成功","提示",JOptionPane.CLOSED_OPTION);
						this.dispose();
					}else{
						JOptionPane.showMessageDialog(null,field1.getText()+"学生的"+field1.getText()+"课程"+"没有录入成绩","提示",JOptionPane.INFORMATION_MESSAGE);
					}
				    
				} catch (Exception e) {
					// TODO Auto-generated catch block
					JOptionPane.showMessageDialog(null,"请核对信息是否有误","警告",JOptionPane.ERROR_MESSAGE);
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
