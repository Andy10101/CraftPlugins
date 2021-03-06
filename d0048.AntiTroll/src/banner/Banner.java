package banner;

import java.util.List;

import org.bukkit.ChatColor;
import org.bukkit.command.Command;
import org.bukkit.command.CommandSender;
import org.bukkit.event.EventHandler;
import org.bukkit.event.EventPriority;
import org.bukkit.event.Listener;
import org.bukkit.event.player.PlayerChatEvent;
import org.bukkit.event.player.PlayerCommandPreprocessEvent;
import org.bukkit.plugin.java.JavaPlugin;

@SuppressWarnings("deprecation")
public final class Banner extends JavaPlugin implements Listener{
	private List<String> blockedCommands;//禁止的指令
	private List<String> blockedQuotes;//禁止的语句
    
	@Override
    public void onEnable() {
        //config = getConfig();
        //if(config==null) System.out.print("NPE");
        
		getServer().getPluginManager().registerEvents(this, this);
        
        this.getConfig().set("Blocked_Commands", this.getConfig().getStringList("Blocked_Commands"));//注册并载入指令黑名单
        this.setBlockedCommand(this.getConfig().getStringList("Blocked_Commands"));
        
        this.getConfig().set("Blocked_Quotes", this.getConfig().getStringList("Blocked_Quotes"));//注册并载入语句黑名单
        this.blockedQuotes=this.getConfig().getStringList("Blocked_Quotes");
        
        this.saveDefaultConfig();
        saveConfig();
        System.out.print(this.blockedQuotes.toString());
        
    	//this.saveConfig();
		getLogger().info("[Anti-Troll]Successfully loaded!");
    	
    }
    
    @Override
    public void onDisable(){
		getLogger().info("[Anti-Troll]Reloading!");
    }
    
    @Override
    public boolean onCommand(CommandSender sender, Command cmd, String label, String[] args) {
        int argc=args.length;
        
    	//refresh指令使用
    	if(cmd.getName().equalsIgnoreCase("refresh")){ 
    		this.reloadConfig();
    		sender.sendMessage(ChatColor.GREEN+"[Anti-Troll]Reloading!");
    	}
    	
    	//blockthiscommand指令使用
    	if(cmd.getName().equalsIgnoreCase("blockthiscommand")){ 
    		if(argc!=1){
    			sender.sendMessage(ChatColor.RED+"[Anti-Troll]Wrong arguments![参数不对]");
    			return false;
    		}
    		else if(!args[0].startsWith("/")){
    			sender.sendMessage(ChatColor.RED+"[Anti-Troll]This is not a command![这不是指令]");
    			return false;
    		}
    		else{
    			this.blockedCommands.add(args[0]);
    			this.getConfig().set("Blocked_Commands", this.blockedCommands);
    			this.saveDefaultConfig();
    			saveConfig();
    			sender.sendMessage(ChatColor.GREEN+"[Anti-Troll]Command successfully added!");
    		}
    	}
    	
    	//blockthisquote指令使用
    	if(cmd.getName().equalsIgnoreCase("blockthisquote")){ 
    		if(argc!=1){
    			sender.sendMessage(ChatColor.RED+"[Anti-Troll]Wrong arguments![参数不对]");
    			return false;
    		}
    		else if(args[0].startsWith("/")){
    			sender.sendMessage(ChatColor.RED+"[Anti-Troll]This is a command! Use \"/blockthiscommand\" instead![这是指令,请使用/blockthiscommand]");
    			return false;
    		}
    		else{
    			this.blockedQuotes.add(args[0]);
    			this.getConfig().set("Blocked_Quotes", this.blockedQuotes);
    			this.saveDefaultConfig();
    			saveConfig();
    			sender.sendMessage(ChatColor.GREEN+"[Anti-Troll]Quote successfully added!");
    		}
    	}
    	
    	//unblockthiscommand指令使用
    	if(cmd.getName().equalsIgnoreCase("unblockthiscommand")){ 
    		if(argc!=1){
    			sender.sendMessage(ChatColor.RED+"[Anti-Troll]Wrong arguments![参数不对]");
    			return false;
    		}
    		else if(!args[0].startsWith("/")){
    			sender.sendMessage(ChatColor.RED+"[Anti-Troll]This is not a command![这不是指令]");
    			return false;
    		}
    		else if(!this.blockedCommands.contains(args[0])){
    			sender.sendMessage(ChatColor.RED+"[Anti-Troll]Command currently not blocked, fail to remove![指令不存在]");
    			return false;
    		}
    		else{
    			this.blockedCommands.remove(args[0]);
    			this.getConfig().set("Blocked_Commands", this.blockedCommands);
    			this.saveDefaultConfig();
    			saveConfig();
    			sender.sendMessage(ChatColor.GREEN+"[Anti-Troll]Reading config file!");
    			sender.sendMessage(ChatColor.GREEN+"[Anti-Troll]Command successfully removed!");
    		}
    	}
    	
    	//unblockthisquote指令使用
    	if(cmd.getName().equalsIgnoreCase("unblockthisquote")){ 
    		if(argc!=1){
    			sender.sendMessage(ChatColor.RED+"[Anti-Troll]Wrong arguments![参数不对]");
    			return false;
    		}
    		else if(args[0].startsWith("/")){
    			sender.sendMessage(ChatColor.RED+"[Anti-Troll]This is a command! Use \"/blockthiscommand\" instead![这是指令,请使用/blockthiscommand]");
    			return false;
    		}
    		else if(!this.blockedQuotes.contains(args[0])){
    			sender.sendMessage(ChatColor.RED+"[Anti-Troll]Quote currently not blocked, fail to remove![屏蔽词不存在]");
    			return false;
    		}
    		else{
    			this.blockedQuotes.remove(args[0]);
    			this.getConfig().set("Blocked_Quotes", this.blockedQuotes);
    			this.saveDefaultConfig();
    			saveConfig();
    			sender.sendMessage(ChatColor.GREEN+"[Anti-Troll]Reading config file!");
    			sender.sendMessage(ChatColor.GREEN+"[Anti-Troll]Quote successfully removed!");
    		}
    	}
    	
		return true;
    }
    
    @EventHandler(priority = EventPriority.NORMAL,ignoreCancelled = true)
    public void onPlayerCommandPreprocess(PlayerCommandPreprocessEvent event) {
        if(this.isCommandBlocked(event.getMessage()) && !event.getPlayer().isOp()){
        	event.getPlayer().sendMessage(ChatColor.RED+"该指令禁止使用！");
        	event.setCancelled(true);
        }
    }
    
    @EventHandler(priority = EventPriority.NORMAL,ignoreCancelled = true)
    public void onPlayerChat(PlayerChatEvent event) {
        if(this.isQuoteBlocked(event.getMessage()) && !event.getPlayer().isOp()){
        	event.getPlayer().sendMessage(ChatColor.RED+"这话你可不能说啊。。。！");
        	event.setCancelled(true);
        }
    }
    
    public boolean isCommandBlocked(String command){
    	if((command.startsWith("/me") || command.startsWith("/me")) 
    			&& isQuoteBlocked(command)){
    		return true;
    	}
    	for(String c : this.blockedCommands){
    		if(command.startsWith(c) || command.equalsIgnoreCase(c)){
    			return true;
    		}
    	}
		return false;
    }
    
    public boolean isQuoteBlocked(String quote){
    	//System.out.print("0");
    	for(String c : this.blockedQuotes){
    		//System.out.print("1");
    		if(quote.contains(c) || quote.equalsIgnoreCase(c)){
    			//System.out.print("2");
    			return true;
    		}
    	}
		return false;
    }

	public List<String> getBlockedCommands() {
		return blockedCommands;
	}

	public void setBlockedCommand(List<String> BlockedCommand) {
		this.blockedCommands = BlockedCommand;
	}

	public List<String> getBlockedQuotes() {
		return blockedQuotes;
	}


}
