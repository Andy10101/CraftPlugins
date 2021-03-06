package hud;

import game.Blockode;
import guiLogger.Gui;

import java.util.ArrayList;
import java.util.List;

import org.bukkit.Bukkit;
import org.bukkit.event.EventHandler;
import org.bukkit.event.EventPriority;
import org.bukkit.event.Listener;
import org.bukkit.event.player.PlayerTeleportEvent;
import org.bukkit.scoreboard.DisplaySlot;
import org.bukkit.scoreboard.Objective;
import org.bukkit.scoreboard.Score;
import org.bukkit.scoreboard.Scoreboard;
import org.bukkit.scoreboard.ScoreboardManager;
import org.bukkit.scoreboard.Team;

public class HudGiver implements Listener {
	public List<Blockode> blockodeList;
	ScoreboardManager manager = Bukkit.getScoreboardManager();
	Scoreboard board = manager.getNewScoreboard();
	Team team = board.registerNewTeam("teamname");
	Objective objective = board.registerNewObjective("test", "dummy");
	Gui gui;
	boolean isGuiEnabled=false;
	
	public HudGiver(){
		this.blockodeList= new ArrayList<Blockode>();
		objective.setDisplaySlot(DisplaySlot.SIDEBAR);
		objective.setDisplayName("Display Name");
		//score.setScore(42);
	}
	
	public HudGiver(Gui gui){
		this();
		if(gui!=null){
			this.gui=gui;
			this.isGuiEnabled=true;
		}
		else{
			log("gui设置出错");
		}
	}
	
	@SuppressWarnings("deprecation")
	@EventHandler(priority = EventPriority.NORMAL,ignoreCancelled = true)
	void OnPlayerChangedWorld(PlayerTeleportEvent e){
		for(Blockode b : this.blockodeList){
			if(b.getGameworld()!=null | b.getGameworld()==e.getTo().getWorld()){
				team.addPlayer(e.getPlayer());
				Score score = objective.getScore(e.getPlayer());
				score.setScore(2);
				log("已经为"+e.getPlayer()+"添加了hud！");
			}
		}
	}
	
	public void addBlockode(Blockode blockode){
		if(blockode==null){
			System.out.print("[HudGiver]发送的blockode不存在");
			return;
		}
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

	public ScoreboardManager getManager() {
		return manager;
	}

	public void setManager(ScoreboardManager manager) {
		this.manager = manager;
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

}
