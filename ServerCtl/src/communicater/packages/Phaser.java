package communicater.packages;

import communicater.Head;

public class Phaser {
	int length = 800;
	
	public Phaser(int length) {
		super();
		this.length = length;
	}

	public Package phase(String data, int pakLength){
		this.length = pakLength;
		return this.phase(data);
	}
	
	public Package phase(String data){
		Package pak = new Package();
		if(data.startsWith(Head.INVALID+"")){
			return pak;//默认即为invalid
		}
		if(data.startsWith(Head.CLOSE_CONNECTION+"")){
			return pak;
		}
		if(data.startsWith(Head.ERROR+"")){
			return pak;
		}
		return null;
	}

}
