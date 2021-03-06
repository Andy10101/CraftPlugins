package io.d0048.restarter;

import org.bukkit.Bukkit;
import org.bukkit.ChatColor;
import org.bukkit.command.Command;
import org.bukkit.command.CommandSender;
import org.bukkit.event.Listener;
import org.bukkit.plugin.java.JavaPlugin;
import org.bukkit.scheduler.BukkitRunnable;

public final class Restarter extends JavaPlugin implements Listener{
	public boolean enable=false;
	public int time = 0;
    
	@Override
    public void onEnable() {
        //config = getConfig();
        //if(config==null) System.out.print("NPE");
        
		//getServer().getPluginManager().registerEvents(this, this);
        
        this.getConfig().set("Enable", this.getConfig().getBoolean("Enable"));
        this.enable=this.getConfig().getBoolean("Enable");
        this.getConfig().set("Time", this.getConfig().getBoolean("Time"));
        this.time=this.getConfig().getInt("Time");
        
        this.saveDefaultConfig();
        saveConfig();
        
        if(enable){
        	new BukkitRunnable(){
        		int timeLeft=time;
    			@Override
    			public void run() {
    				timeLeft=timeLeft-2;
    				if(timeLeft<=300 && timeLeft>=299){
    					Bukkit.broadcastMessage(ChatColor.RED+"服务器将在"+timeLeft+"秒后重启！请做好准备。。。");
    				}
    				if(timeLeft<=60 && timeLeft>=59){
    					Bukkit.broadcastMessage(ChatColor.RED+"服务器将在"+timeLeft+"秒后重启！请做好准备。。。");
    				}
    				if(timeLeft<=30){
    					Bukkit.broadcastMessage(ChatColor.RED+"服务器将在"+timeLeft+"秒后重启！请做好准备。。。");
    				}
    				if(timeLeft<=0){
    					cancel();
    				}
    				//System.out.print("check"+timeLeft);
    			}
        	}.runTaskTimer(Bukkit.getPluginManager().getPlugin("AutoRestart"), 0L, 40L);
    	}
        
        
    	//this.saveConfig();
		getLogger().info("[AutoRestart]Successfully loaded!");
    	
    }
    
    @Override
    public void onDisable(){
		getLogger().info("[Anti-Troll]Reloading!");
    }
    
    @Override
    public boolean onCommand(CommandSender sender, Command cmd, String label, String[] args) {
    	//refresh指令使用
    	if(cmd.getName().equalsIgnoreCase("refresh")){ 
    		this.reloadConfig();
    		sender.sendMessage(ChatColor.GREEN+"[Anti-Troll]Reloading!");
    	}
		return false;
    }

}
