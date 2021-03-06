package game;

import guiLogger.Broadcaster;
import guiLogger.Gui;
import hud.HudGiver;

import java.util.ArrayList;
import java.util.List;

import org.bukkit.Bukkit;
import org.bukkit.ChatColor;
import org.bukkit.scheduler.BukkitRunnable;

public class GameController {
	public List<Blockode> blockodeList;
	Gui gui;
	boolean guiEnabled=false;
	//HudGiver hg=new HudGiver();
	
	
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
		//System.out.print(ChatColor.YELLOW+"gui未开启！");
		this.startOrStopRanger();
	}
	
	public void addBlockode(Blockode blockode){
		if(blockode==null){
			System.out.print("[GameController]发送的blockode不存在");
			return;
		}
		this.blockodeList.add(blockode);
		blockode.setGc(this);
		//this.hg.addBlockode(blockode);
	}
	
	public void removeBlockode(Blockode blockode){
		//this.hg.removeBlockode(blockode);
		this.blockodeList.remove(blockode);
	}
	
	public boolean isGuiEnabled() {
		return guiEnabled;
	}

	public void setGuiEnabled(boolean guiEnabled) {
		this.guiEnabled = guiEnabled;
	}

	/*public HudGiver getHg() {
		return hg;
	}

	public void setHg(HudGiver hg) {
		this.hg = hg;
	}*/

	public void setBlockodeList(List<Blockode> blockodeList) {
		this.blockodeList = blockodeList;
		//this.hg.setBlockodeList(blockodeList);
	}

	public void startOrStopRanger(){
		new BukkitRunnable(){
			@Override
			public void run() {
				doRange();
			}
    	}.runTaskTimer(Bukkit.getPluginManager().getPlugin("blockode"), 0L, 600L);
	}
	
	public void checkWinningState(Blockode b){
        	String name = null;
    		for(String n : b.getPlayerList()){
    			if(n!=null) name=n;
    		}
    		b.stop(name);//获取胜利者并且宣布，结束
	}
	
	@SuppressWarnings("static-access")
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
	
	public void doRange(){
		log(ChatColor.GREEN+"[Controller]检测状态中。。。");
		if(blockodeList!=null && !blockodeList.isEmpty()){
			for(Blockode b : blockodeList){
				//if(b==null) break;
				log(ChatColor.GREEN+"Controller执行检测检测，位于："+b.toString()+"编号:"+b.hashCode());
				
				if(b.readyToStart){
					if(b.getPlayerNumber()>1){
						b.start();
						b.setReadyToStart(false);
					}
					else{
						Broadcaster.BoardcastInWorld(b.getGameworld(), ChatColor.GOLD+"[Blockode]该次开始因人数不足，被取消！");
						b.setReadyToStart(false);
					}
				}
				
				if(b.isStart() && b.getPlayerNumber()<=1){//已经开始，里面没人
		    		checkWinningState(b);
		    		b.setReadyToStart(false);
		    		
		    	}
		    	
		    	else if(b.getPlayerNumber()==1 && !b.isStart()){//有1个人，还没开始
		    		Broadcaster.BoardcastInWorld(b.getGameworld(), ChatColor.GOLD+"[Blockode]还需要1个人来开始！");
		    		b.setReadyToStart(false);
		    	}
		    	
		    	else if(b.getPlayerNumber()>1 && !b.isStart()){//有多于一个人，还没开始
		    		b.setReadyToStart(true);
		    		Broadcaster.BoardcastInWorld(b.getGameworld(), ChatColor.GOLD+"[Blockode]距离开始还有30秒");
		    	}
			}
		}
		//cancel();
	}

	public List<Blockode> getBlockodeList() {
		return blockodeList;
	}

	public Gui getGui() {
		return gui;
	}

	public void setGui(Gui gui) {
		this.gui = gui;
	}

}