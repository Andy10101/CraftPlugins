package communicater;

import gui.Gui;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

public class Sender implements Runnable{
	public final int packSize = 200;//包长度，byte为单位
	Socket cs;
	private BufferedReader in;
	private PrintWriter out;
	private Controller myCtlr;

	public Sender(Socket cs, Controller ctlr){
		this.cs = cs;
		this.myCtlr = ctlr;
	}
	
	public void forceClose(String reason){
		try{
			out.close();   
			in.close();   
			cs.close();
			gui.Gui.log("Closing session" + cs.getLocalSocketAddress()+":"+cs.getPort() + "\nBecause:" + reason);
		}
		catch(Exception e){
			Gui.displayException(e);
		}
	}

	@Override
	public void run() {
		myCtlr.activeCount++;
		try{
			in = new BufferedReader(new InputStreamReader(cs.getInputStream()));   
			out = new PrintWriter(cs.getOutputStream(),true);
			String line;
			do{//read loop
				line = in.readLine();
				if(line.getBytes().length != this.packSize){//长度不对
					gui.Gui.log("\nBroken Package: "+line+"\n ===PACKAGE END===\n");
				}
				else if(line.getBytes()[0] == -1){//远程退出
					this.forceClose("remote closed connection");
					break;
				}
			} while(line != null);
			
			gui.Gui.log("Closing session" + cs.getLocalSocketAddress()+":"+cs.getPort());
			out.close();
			in.close();
			cs.close();
			this.myCtlr.activeCount--;
			this.myCtlr.recievers.remove(this);
		}
		catch(Exception e){
			Gui.displayException(e);
		}
	}
}
