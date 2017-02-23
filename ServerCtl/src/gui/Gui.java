package gui;

import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.Label;
import java.awt.TextField;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.JFrame;  
import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.WindowConstants;
  
public class Gui extends JFrame{  
    //static Label label=new Label();
    static JLabel jlabel=new JLabel("LogOutput：                                                 "); 
    static JFrame f = new JFrame();  
    static JTextField jtextField = new JTextField(20);
    static JTextArea jtextarea=new JTextArea("Server日志开始记录:\n",10,30);
    static SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    static JScrollPane jsp;
    static GridLayout mainLayout = new GridLayout(3,2);
    static Box logBox = Box.createVerticalBox();
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static void startGui(String[] args) {
		//frame 初始化
        f.setVisible(true);  
        f.setSize(1000,800);  
        f.setTitle("Server控制台");
        f.setLayout(mainLayout);
        f.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        f.setLocationRelativeTo(null);
        
        //日志框初始化
        //jlabel.setText("日志:");
        jlabel.setFont((new Font("宋体",Font.BOLD, 16)));
        jlabel.setSize(20, 20);
        logBox.add(jlabel);

        jtextarea.setEditable(false);
        jtextarea.setLineWrap(true);
        jtextarea.setWrapStyleWord(true);
        jsp=new JScrollPane(jtextarea);
        jsp.setHorizontalScrollBarPolicy( 
        		JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED); 
        jsp.setVerticalScrollBarPolicy( 
        		JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED); 
		jsp.setWheelScrollingEnabled(true);
		logBox.add(jsp);
		logBox.add(jtextField);
		
		f.add(logBox);
        
        //f.add(jtextField);
        
        log("Gui载入成功！");
    }
	public static void log(String msg){
		//jtextarea.setText(jlabel.getText().replace("</html>", "")+msg+"<br></html>");
		jtextarea.setText(jtextarea.getText()+"["+df.format(new Date())+"] "+msg+"\n");
		jtextarea.setCaretPosition(jtextarea.getText().length());
		System.out.print("["+df.format(new Date())+"] "+msg+"\n");

	}
} 