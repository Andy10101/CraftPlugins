package communicater;

import gui.Gui;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.HashSet;
import communicater.packages.Package;

import communicater.packages.Phaser;

public class Reciever implements Runnable{
	
	Socket cs;
	private BufferedReader in;
	private PrintWriter out;
	private Controller myCtlr;
	private HashSet<? extends Package> revQuene = new HashSet(5);

	public Reciever(Socket cs, Controller ctlr){
		this.cs = cs;
		this.myCtlr = ctlr;
	}
	
	public void forceClose(){
		try{
			out.close();   
			in.close();   
			cs.close();
		}
		catch(Exception e){
			Gui.displayException(e);
		}
	}

	@Override
	public void run() {
		//byte []int = new byte[bufLength];
		myCtlr.activeCount++;
		try{
			Gui.log("Now reading:");
			in = new BufferedReader(new InputStreamReader(cs.getInputStream()));   
			out = new PrintWriter(cs.getOutputStream(),true);
			String lData;
			do{//read loop
				lData = in.readLine();
				if(lData.length() != this.myCtlr.pakLength){
					gui.Gui.log("Broken package from"+this.hashCode()+", dropped!");
					lData = null; break;//丢掉损坏的包
				}
				else{
					Package pak = this.myCtlr.phaser.phase(lData);
				}
				
			} while(lData != null);
			
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
