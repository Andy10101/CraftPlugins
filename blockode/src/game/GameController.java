package game;

import guiLogger.Gui;

import java.util.ArrayList;
import java.util.List;

import org.bukkit.Bukkit;
import org.bukkit.ChatColor;
import org.bukkit.scheduler.BukkitRunnable;

public class GameController {
	public List<Blockode> blockodeList;
	Gui gui;
	boolean guiEnabled=false;
	
	
	@SuppressWarnings("static-access")
	public GameController(Gui g) {
		this();
		this.gui=g;
		if(this.gui==null){
			System.out.print(ChatColor.RED+"gui设置出现问题，没有找到gui！");
		}
		else{
			gui.log("已加载控制器，编号为"+this.hashCode()+"!");
		}
		System.out.print("已加载控制器，编号为"+this.hashCode()+"!");
	}
	
	public GameController() {
		this.blockodeList= new ArrayList<Blockode>();
		//this.gui=g;
		System.out.print(ChatColor.YELLOW+"gui未开启！");
		this.startOrStopRanger();
	}
	
	public void addBlockode(Blockode blockode){
		this.blockodeList.add(blockode);
	}
	
	public void removeBlockode(Blockode blockode){
		this.blockodeList.remove(blockode);
	}
	
	public List<Blockode> getBlockodeList() {
		return blockodeList;
	}

	public void setBlockodeList(List<Blockode> blockodeList) {
		this.blockodeList = blockodeList;
	}

	public void startOrStopRanger(){
		new BukkitRunnable(){
			@Override
			public void run() {
				log(ChatColor.GREEN+"[Controller]检测状态中。。。");
				if(blockodeList!=null && !blockodeList.isEmpty()){
					for(Blockode b : blockodeList){
						//if(b==null) break;
						log(ChatColor.GREEN+"Controller执行检测检测，位于："+b.toString()+"编号:"+b.hashCode());
		            	if(b.isStart() && b.getPlayerNumber()<=1){//已经开始，里面没人
		                	String name = null;
		            		for(String n : b.getPlayerList()){
		            			if(n!=null) name=n;
		            		}
		            		b.stop(name);//获取胜利者并且宣布，结束
		            	}
		            	
		            	if(b.getPlayerNumber()>=1 && !b.isStart()){//有人，还没开始
		            		
		            	}
					}
				}
				//cancel();
			}
    	}.runTaskTimer(Bukkit.getPluginManager().getPlugin("blockode"), 0L, 30L);
	}
	
	public void log(String msg){
		System.out.print(msg);
		if(this.gui==null){
			System.out.print("找不到gui");
			return;
		}
		else{
			gui.log(msg);
		}
	}

}