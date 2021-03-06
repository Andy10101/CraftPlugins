package communicater;

import gui.Gui;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashSet;

import communicater.packages.Phaser;

import pc.PC;

public class Controller implements Runnable{
	int port;
	int activeCount = 0;
	HashSet<Reciever> recievers = new HashSet<Reciever>();
	
	public final int pakLength = 800;
	public Phaser phaser = new Phaser(this.pakLength);
	//MyRunnable listen = new MyRunnable();
	//HashSet<WeakReference<Reciever>> connections = new HashSet<WeakReference<Reciever>>();
	
	private ServerSocket ss;
	private Socket socket;
	
	public Controller(){
		this(1800);
	}

	public Controller(int port){
		this.port = port;
		try {
			ss = new ServerSocket(port);
		} catch (IOException e) {
			e.printStackTrace();
		}
		gui.Gui.log("Start a thread, listening on port:"+port);
		Thread t = new Thread(this);
		t.start();
	}

	@Override
	public void run(){
		this.activeCount++;
			while (true){
				try{
					gui.Gui.log("Thread activated:" + Thread.currentThread().getId());
					socket = ss.accept();//本句阻塞！！！
					Reciever reciever = new Reciever(socket, this);
					this.recievers.add(reciever);
					gui.Gui.log("Accept connection with port:"+socket.getPort()
							+"\n"+ "Now handled by Reciever num:" + reciever.toString());
				}
				catch(Exception e){
					Gui.displayException(e);
				}
			}
	}
	
	@Override
	protected void finalize(){
		
	}
}

class MyRunnable implements Runnable{

	@Override
	public void run() {
		
	}
	
}