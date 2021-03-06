package guiLogger;

import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.Label;
import java.awt.TextField;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.swing.JFrame;  
import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.WindowConstants;
  
public class Gui extends JFrame{  
    static Label label=new Label();
    static JLabel jlabel=new JLabel(); 
    static Gui f = new Gui();  
    static JTextField jtextField = new JTextField(20);
    static JTextArea jtextarea=new JTextArea("插件日志开始记录:\n",50,120);
    static SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    static JScrollPane jsp;
    static TextField tf;
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static void main(String[] args) {  
        f.setVisible(true);  
        f.setSize(1000,800);  
        f.setTitle("Blockode控制台");
        f.setLayout(new FlowLayout());
        label.setLocation(0, 0);
        label.setText("插件日志:");
        jlabel.setBackground(Color.black);
        jlabel.setLocation(10, 6);
        //textField.append("1");
        jtextarea.setEditable(false);
        jtextarea.setLineWrap(true);
        jtextarea.setWrapStyleWord(true);
        jsp=new JScrollPane(jtextarea);
        jsp.setHorizontalScrollBarPolicy( 
        		JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED); 
        jsp.setVerticalScrollBarPolicy( 
        		JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED); 
		jsp.setWheelScrollingEnabled(true);
		
        f.add(jsp);
        
        f.add(label);
        f.add(jlabel);
        f.add(jtextField);
        //f.add(jtextarea);
        //再加上这一句就可以把Frame放在最中间了  
        f.setLocationRelativeTo(null);  
        //jlabel.setLocation(15, 20);
        //如果没有这一句，在点击关闭Frame的时候程序其实还是在执行状态中的，加上这一句才算是真正的把资源释放掉了  
        f.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);  
        /*for(int i=0;i<95;i++){
        	log("test");
        	try {
				Thread.sleep(20);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }*/

        	//log("test");
        log("Gui载入成功！");
    }  
	public static void log(String msg){
		//jtextarea.setText(jlabel.getText().replace("</html>", "")+msg+"<br></html>");
		jtextarea.setText(jlabel.getText()+jtextarea.getText()+"["+df.format(new Date())+"] "+msg+"\n");
		jtextarea.setCaretPosition(jtextarea.getText().length());

	}
} 