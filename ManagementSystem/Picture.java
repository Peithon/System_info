package ManagementSystem;

import java.awt.Dimension;
import java.awt.Image;
import java.awt.event.*;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.io.File;
import java.sql.*;
import java.util.ArrayList;
import javax.swing.*;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileView;

public class Picture extends JFrame implements ActionListener {
    private Connection conn=null;
    private PreparedStatement perstmt=null;
//    private FileFilter filter;
//    private Icon icon;
    private JFileChooser chooser;
    private JLabel label;
    private JButton button;
    public static final int DEFAULT_WIDTH = 300;
    public static final int DEFAULT_HEIGHT = 400;
    public Picture(JButton button,JLabel label,Connection conn,PreparedStatement perstmt){
    	this.conn=conn;
    	this.perstmt=perstmt;   
    	this.button=button;
    	this.label=label;
    	
    	  // set up file chooser
    	   chooser = new JFileChooser();

    	   // accept all image files ending with .jpg, .jpeg, .gif
    	   final ExtensionFileFilter filter = new ExtensionFileFilter();
    	   filter.addExtension("jpg");
    	   filter.addExtension("jpeg");
    	   filter.addExtension("gif");
    	   filter.setDescription("Image files");
    	   chooser.setFileFilter(filter);

    	   chooser.setAccessory(new ImagePreviewer(chooser));
    	   
    	   chooser.setFileView(new FileIconView(filter, new ImageIcon("palette.gif")));
    	button.addActionListener(this);
    	
    }
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub	
		chooser.setCurrentDirectory(new File("."));

	      // show file chooser dialog
	      int result = chooser.showOpenDialog(Picture.this);

	      // if image file accepted, set it as icon of the label
	      if(result == JFileChooser.APPROVE_OPTION)
	      {
	         String name = chooser.getSelectedFile().getPath();
	         label.setIcon(new ImageIcon(name));
	         label.setBounds(0,0,8,4);
//	         System.out.println(name);
	      }
	}
	class ExtensionFileFilter extends FileFilter
	{
	/**
	   Adds an extension that this file filter recognizes.
	   @param extension a file extension (such as ".txt" or "txt")
	*/
	public void addExtension(String extension)
	{
	   if (!extension.startsWith("."))
	      extension = "." + extension;
	   extensions.add(extension.toLowerCase());     
	}

	/**
	   Sets a description for the file set that this file filter
	   recognizes.
	   @param aDescription a description for the file set
	*/
	public void setDescription(String aDescription)
	{
	   description = aDescription;
	}

	/**
	   Returns a description for the file set that this file
	   filter recognizes.
	   @return a description for the file set
	*/
	public String getDescription()
	{
	   return description; 
	}

	public boolean accept(File f)
	{
	   if (f.isDirectory()) return true;
	   String name = f.getName().toLowerCase();

	   // check if the file name ends with any of the extensions
	   for (String extension : extensions)
	      if (name.endsWith(extension)) 
	         return true;
	   return false;
	}

	private String description = "";
	private ArrayList<String> extensions = new ArrayList<String>();
	}
	class FileIconView extends FileView
	{
	/** 
	    Constructs a FileIconView.
	    @param aFilter a file filter--all files that this filter
	    accepts will be shown with the icon.
	    @param anIcon--the icon shown with all accepted files.
	*/
	public FileIconView(FileFilter aFilter, Icon anIcon)
	{
	   filter = aFilter;
	   icon = anIcon;
	}

	public Icon getIcon(File f)
	{
	   if (!f.isDirectory() && filter.accept(f)) 
	      return icon;
	   else return null;
	}

	private FileFilter filter;
	private Icon icon;
	}
	/**
	A file chooser accessory that previews images.
	*/
	class ImagePreviewer extends JLabel 
	{
	/**
	   Constructs an ImagePreviewer.
	   @param chooser the file chooser whose property changes
	   trigger an image change in this previewer
	*/
	public ImagePreviewer(JFileChooser chooser) 
	{
	   setPreferredSize(new Dimension(100, 100));
	   setBorder(BorderFactory.createEtchedBorder());

	   chooser.addPropertyChangeListener(new 
	      PropertyChangeListener()
	      {
	         public void propertyChange(PropertyChangeEvent 
	            event) 
	         {
	            if (event.getPropertyName() ==
	               JFileChooser.SELECTED_FILE_CHANGED_PROPERTY)
	            {
	               // the user has selected a new file 
	               File f = (File) event.getNewValue();
	               if (f == null) { setIcon(null); return; }
	               
	               // read the image into an icon
	               ImageIcon icon = new ImageIcon(f.getPath());

	               // if the icon is too large to fit, scale it
	               if(icon.getIconWidth() > getWidth())
	                  icon = new ImageIcon(icon.getImage().getScaledInstance(
	                     getWidth(), -1, Image.SCALE_DEFAULT));

	               setIcon(icon);
	            }
		    }
	      });
	}
	}
}
