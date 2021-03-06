/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package game;

import guiLogger.Gui;

import org.bukkit.plugin.java.*;
import org.bukkit.Bukkit;
import org.bukkit.ChatColor;
import org.bukkit.command.Command;
import org.bukkit.command.CommandSender;
import org.bukkit.configuration.file.FileConfiguration;
import org.bukkit.entity.Player;

/**
 *
 * @author HXB
 */
public final class Game extends JavaPlugin{

public static Game test1;
Blockode breaksense1;
private FileConfiguration config;
Gui gui=new Gui();
GameController gc;

    @SuppressWarnings("static-access")
	@Override
    public void onEnable() {//这个就算是这个插件的main函数了，插件从这里开始执行
        test1=this;
        this.gc=new GameController(gui);
        this.breaksense1=new Blockode(gc,gui);//这里应该已经初始化了，类里面那个出错的数组也初始化了
        this.gui.main(null);
        getServer().getPluginManager().registerEvents(breaksense1, this);//注册监听器，也就是另一个类里面的onBlockPlace(BlockPlaceEvent e)
        //getServer().getPluginManager().registerEvents(breaksense1.getGc().getHg(), this);
        
        //预加载配置文件
        config = this.getConfig();
        this.saveDefaultConfig();

        //设置屏蔽白名单
        //List<String> unBlockedCommand = Arrays.asList("Hello World", "Welcome to Bukkit", "Have a Good Day!");
        
        this.getConfig().set("UnBlocked_Commands", this.getConfig().getStringList("UnBlocked_Commands"));//注册并载入指令白名单
        this.breaksense1.setUnBlockedCommand(this.getConfig().getStringList("UnBlocked_Commands"));
        
        this.getConfig().set("Blocked_Quotes", this.getConfig().getStringList("Blocked_Quotes"));//注册并载入语句黑名单
        this.breaksense1.setBlockedQuotes(this.getConfig().getStringList("Blocked_Quotes"));
        
        this.getConfig().set("Game_World", this.getConfig().getString("Game_World"));//读取原来的设置并且注册世界
        //this.getConfig().set("Game_World","set2");
        String worldGot=this.getConfig().getString("Game_World");
        if(worldGot!=null){//如果世界被设置
            breaksense1.setGameworld(Bukkit.getWorld(worldGot));
            log(ChatColor.GOLD+"[敏感操作]尝试设置游戏世界为:"+worldGot);
        }
        //先获取再注册
        breaksense1.setExplodeSize(this.getConfig().getInt("Explode_Size"));
        config.set("Explode_Size", this.getConfig().getInt("Explode_Size"));
        
        breaksense1.setWall_Size_X(this.getConfig().getInt("Wall_Size_X"));
        config.set("Wall_Size_X", this.getConfig().getInt("Wall_Size_X"));
        
        breaksense1.setWall_Size_Y(this.getConfig().getInt("Wall_Size_Y"));
        config.set("Wall_Size_Y", this.getConfig().getInt("Wall_Size_Y"));
        
        breaksense1.setShieldDelay(this.getConfig().getInt("Shield_Delay")+1);
        config.set("Shield_Delay", this.getConfig().getInt("Shield_Delay"));
        
        breaksense1.setShieldHold(this.getConfig().getInt("Shield_Hold"));
        config.set("Shield_Hold", this.getConfig().getInt("Shield_Hold"));
        
        breaksense1.setTNTdelay(this.getConfig().getInt("TNTdelay"));
        config.set("TNTdelay", this.getConfig().getInt("TNTdelay"));
        
        
        breaksense1.setAmountBeacon(this.getConfig().getInt("amountBeacon"));
        config.set("amountBeacon", this.getConfig().getInt("amountBeacon"));
        
        breaksense1.setAmountBed(this.getConfig().getInt("amountBed"));
        config.set("amountBed", this.getConfig().getInt("amountBed"));
        
        breaksense1.setAmountBow(this.getConfig().getInt("amountBow"));
        config.set("amountBow", this.getConfig().getInt("amountBow"));
        
        breaksense1.setAmountArrow(this.getConfig().getInt("amountArrow"));
        config.set("amountArrow", this.getConfig().getInt("amountArrow"));
        
        breaksense1.setAmountBread(this.getConfig().getInt("amountBread"));
        config.set("amountBread", this.getConfig().getInt("amountBread"));
        
        breaksense1.setAmountTNT(this.getConfig().getInt("amountTNT"));
        config.set("amountTNT", this.getConfig().getInt("amountTNT"));
        
        breaksense1.setAmountIronSward(this.getConfig().getInt("amountIronSward"));
        config.set("amountIronSward", this.getConfig().getInt("amountIronSward"));
        
        breaksense1.setAmountSnow(this.getConfig().getInt("amountSnow"));
        config.set("amountSnow", this.getConfig().getInt("amountSnow"));
        
        //以下检测设置
        if(breaksense1.getGameworld()==null){
        	log(ChatColor.RED+"检测到游戏世界设置不正确，请使用/setgameworld手动设置!");
        }
        //World gw = new World();
        
        log("你的插件已被加载！"); //向日志写入
        gui.log("插件初始化完成！");
        this.saveConfig();//最后才保存
        }
    
    @Override
    public void onDisable() {
        test1=null;
        breaksense1.stop();
        breaksense1.clearPlayerList();
        log("你的插件已被卸载。");//相当于析构函数，不过其他还没写完这里就还没写，内存泄漏什么的先不管了
    }
    
    @SuppressWarnings("unused")
	@Override
public boolean onCommand(CommandSender sender, Command cmd, String label, String[] args) {//当玩家执行了注册的指令时，让该玩家加入监听器的响应列表
    //命令addtoplayerlist
    //System.out.print("收到以下参数: label="+label+"argc="+args.length);
    int argc=args.length;
    //getLogger().info(sender.getName()+"执行了"+cmd.getLabel()+"并附加了"+argc+"个参数");
    
    if (cmd.getName().equalsIgnoreCase("addtoplayerlist")) { 
        if ((!(sender instanceof Player))&&argc!=1) {//不是玩家发出，且参数不合法
            sender.sendMessage("这个指令只能让玩家使用。"); return true;//如果不是玩家执行的，就直接报错返回
            } 
        else {
            if(argc==0){//没有参数默认玩家自身
                if(breaksense1.addtoPlayerList((Player)sender)==false){//鉴于这里也会出相同的错误，我判断就是那个方法的问题(已解决)
                    sender.sendMessage(ChatColor.GOLD+"玩家已满或已加入");//这里是报错至玩家
                    }
                else{
                    sender.sendMessage(ChatColor.GOLD+"成功加入"+sender.getName()+"到玩家列表");
                }
            }
            else if(argc==1){//一个参数则使用参数
                if(Bukkit.getPlayer(args[0])==null) {
                    sender.sendMessage(ChatColor.GOLD+"玩家:"+args[0]+"不在线或不存在");
                    //getLogger().warning("玩家:"+args[0]+"不在线或不存在");
                    return true;
                    }
                Player player=Bukkit.getPlayer(args[0]);//权宜之计
                if(breaksense1.addtoPlayerList(player)==false){//目前来看，当玩家在线的时候不会报错了，但是不在线时会有空指针（已解决）
                    sender.sendMessage(ChatColor.GOLD+"玩家已满或已加入");//这里是报错至玩家
                    }
                else{
                     sender.sendMessage(ChatColor.GOLD+"成功加入"+args[0]+"到玩家列表");
                     return true;
                    }
                }
            else    {//其他直接报错
                sender.sendMessage(ChatColor.GOLD+"你后面加的那一长串是什么鬼啊。。。");//这里在正常的时候也被被执行了，原因不明(已解决)
                //getLogger().warning("玩家"+sender.getName()+"错误的输入了"+argc+"个参数。。。");
                return false;
            }
            
        //return true;
        }
    }

    //命令removefromplayerlist
        if (cmd.getName().equalsIgnoreCase("removefromplayerlist")) { //还没有加多参数支持(加了)
        if ((!(sender instanceof Player))&&argc!=1) {//这里貌似改废了，需要排查下，总之执行不了，显示找不到玩家(已解决)
            sender.sendMessage(ChatColor.GOLD+"这个指令只能让玩家使用。");
            return true;
            } //如果不是玩家执行的，就直接报错返回
        else {
                
            if(argc==0){//没有参数默认玩家自身
                    if(breaksense1.removefromPlayerList((Player)sender)==false){
                        sender.sendMessage(ChatColor.GOLD+"找不到玩家或未知错误，具体是啥你看后台。。。");//这里是报错至玩家
                    }
                    else{
                        sender.sendMessage(ChatColor.GOLD+"已经将"+sender.getName()+"从列表中移除");
                    }
                    return true;
                }
                
            else if(argc==1){//一个参数则使用参数
                    
                    if(breaksense1.isInList(args[0])==false) {//这一块额外加一个判断存在的代码，以免加进不存在的玩意
                    sender.sendMessage(ChatColor.GOLD+"玩家:"+args[0]+"不存在列表中");
                    //getLogger().warning("玩家:"+args[0]+"不存在列表中");
                    return true;
                    }
                    
                    if(breaksense1.removefromPlayerList(args[0])==false){//目前来看，当玩家在线的时候不会报错了，但是不在线时会有空指针（已解决）
                        sender.sendMessage(ChatColor.GOLD+"移除玩家:"+args[0]+" 失败");//这里是报错至玩家
                        return true;
                        }
                    else{
                        sender.sendMessage(ChatColor.GOLD+"成功把"+args[0]+"从列表中移除");
                        Bukkit.getPlayer(args[0]).sendMessage(ChatColor.GOLD+"你已被从游戏中移除！");
                        return true;
                        }
                    }
            else    {//其他直接报错
                sender.sendMessage(ChatColor.GOLD+"你后面加的那一长串是什么鬼啊。。。");//这里在正常的时候也被被执行了，原因不明(已解决)
                //getLogger().warning("玩家"+sender.getName()+"错误的输入了"+argc+"个参数。。。");
                return false;
            }
        }
        //return true;
    }
        
    //命令getinfo
    if (cmd.getName().equalsIgnoreCase("getinfo")) {
        if ((sender instanceof Player)){
            sender.sendMessage(ChatColor.GOLD+"列表中当前有"+breaksense1.getPlayerNumber()+"个玩家，\n"
                                + "最大人数为"+breaksense1.getMaximumPlayer()+",\n"
                                + "当前爆炸威力："+breaksense1.getExplodeSize()
                                + "\n当前游戏世界: "+breaksense1.getGameworld().getName()
                                + "\n当前玩家列表：\n");
            for(int i=0;i<breaksense1.getMaximumPlayer();i++){
                if(breaksense1.getPlayerList()[i]!=null){
                    sender.sendMessage(ChatColor.GOLD+"玩家"+(i+1)+"是："+breaksense1.getPlayerList()[i]+"\n");   
                }
            //sender.sendMessage(breaksense1.getPlayerList());
            return true;
            }
        }
        if (!(sender instanceof Player)){
        	//System.out.print("执行");
        	log(ChatColor.GOLD+"列表中当前有"+breaksense1.getPlayerNumber()+"个玩家，\n"
                    + "最大人数为"+breaksense1.getMaximumPlayer()+",\n"
                    + "当前爆炸威力："+breaksense1.getExplodeSize()
                    + "\n当前游戏世界: "+breaksense1.getGameworld().getName()
                    + "\n当前玩家列表：\n");
            for(int i=0;i<breaksense1.getMaximumPlayer();i++){
                if(breaksense1.getPlayerList()[i]!=null){
                	log(ChatColor.GOLD+"玩家"+(i+1)+"是："+breaksense1.getPlayerList()[i]+"\n");   
                }
            }
            
            return true;
            }
        
        else{
        	log(ChatColor.GOLD+"列表中当前有"+breaksense1.getPlayerNumber()+"个玩家，\n"
                    + "最大人数为"+breaksense1.getMaximumPlayer()+",\n"
                    + "当前爆炸威力："+breaksense1.getExplodeSize()
                    + "\n当前游戏世界: "+breaksense1.getGameworld().getName()
                    + "\n当前玩家列表：\n");
            for(int i=0;i<breaksense1.getMaximumPlayer();i++){
                if(breaksense1.getPlayerList()[i]!=null){
                	log(ChatColor.GOLD+"玩家"+(i+1)+"是："+breaksense1.getPlayerList()[i]+"\n");   
                }
            }
            
            return true;
        }
        
        
    }
    
    //命令/setgameworld
    if (cmd.getName().equalsIgnoreCase("setgameworld")) {
        if(args.length==0){//无参数只能玩家用
            if ((sender instanceof Player)){//是玩家就设置
                breaksense1.setGameworld(((Player) sender).getWorld());
                this.getConfig().set("Game_World", ((Player) sender).getWorld().getName());
                ((Player)sender).sendMessage(ChatColor.GOLD+"[敏感操作]"+sender.getName()+"已设置当前的游戏世界为"+((Player) sender).getWorld().getName());
                log(ChatColor.GOLD+"[敏感操作]"+sender.getName()+"已设置当前的游戏世界为"+((Player) sender).getWorld().getName());
                this.mySaveConfig("config.yml");
                log(ChatColor.GOLD+"[敏感操作]设置已保存");
                ((Player)sender).sendMessage(ChatColor.GOLD+"[敏感操作]设置已保存");
                return true;
            }
            else{//不是就报错
            	log(ChatColor.GOLD+sender.getName()+"我告诉你,不要用控制台执行玩家指令啊喂");
                return true;
            }
        }
        else if(args.length==1){//一个参数使用参数
            if(Bukkit.getWorld(args[0])!=null){
                breaksense1.setGameworld(Bukkit.getWorld(args[0]));
                this.getConfig().set("Game_World", Bukkit.getWorld(args[0]).getName());
                this.mySaveConfig("config.yml");
                if ((sender instanceof Player)){
                    ((Player)sender).sendMessage(ChatColor.GOLD+"[敏感操作]"+sender.getName()+"已设置当前的游戏世界为"+Bukkit.getWorld(args[0]).getName());
                    log(ChatColor.GOLD+"[敏感操作]设置已保存");
                }
                log(ChatColor.GOLD+"[敏感操作]"+sender.getName()+"已设置当前的游戏世界为"+ Bukkit.getWorld(args[0]).getName());
                log(ChatColor.GOLD+"[敏感操作]设置已保存");
                return true;
            }
            else{
                sender.sendMessage(ChatColor.GOLD+"世界不存在！");
                return true;
            }
        }
        else{
            sender.sendMessage(ChatColor.GOLD+"参数过多！");
            return true;
        }
    }
    
    //命令startgame
    if (cmd.getName().equalsIgnoreCase("startgame")) {
        breaksense1.start();
        return true;
    }
    
    //命令stopgame
    if (cmd.getName().equalsIgnoreCase("stopgame")) {
        breaksense1.stop();
        return true;
    }
    
    //命令leavegame
    if (cmd.getName().equalsIgnoreCase("leftgame")) {
    	if(sender instanceof Player){
    		if(breaksense1.isInList((Player)sender)){
    			if(breaksense1.removefromPlayerList((Player) sender)){
    				sender.sendMessage(ChatColor.YELLOW+"成功退出了游戏！");
    			}
    			else{
    				sender.sendMessage(ChatColor.YELLOW+"退出失败了呢！");
    			}
    		}
    		else{
    			sender.sendMessage(ChatColor.YELLOW+"你不在游戏里，无法退出！");
    		}
    	}
    	else{
    		log(ChatColor.YELLOW+"控制台就别退出游戏了吧。。");
    	}
    }
        
    return true;



}
    
    public void mySaveConfig(String name){
    	this.saveConfig();
    }
    
    @SuppressWarnings("static-access")
	public void log(String msg){
    	System.out.print(msg);
		if(this.gui==null){
			return;
		}
		else{
			gui.log(msg);
		}
    }
    
}//这是类的那个反括号。。。
