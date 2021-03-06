package pc;

import pc.info.InfoSet;

public class PC {
	String name;
	final String hash;
	public InfoSet info;
	
	public PC(String hash){
		this.name = "unamed";
		this.hash = hash;
	}
	
	public PC(String name, String hash){
		this.name =  name;
		this.hash = hash;
	}
	
	@Override
	public String toString(){
		return name+"|"+hash;
	}
	@Override
	public boolean equals(Object obj){//compare
		if(obj instanceof PC && ((PC)obj).hash == this.hash)
			return true;
		
		else
			return false;
	}

}
