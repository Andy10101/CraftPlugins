package communicater;

import gui.Gui;
import gui.StatusFlag;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Properties;

public final class Head {
	
	static Properties prop = new Properties();
	static File configFile;
	static FileReader reader;
	static FileWriter writer;
	static String fileName = "ServerConfig.properties";
	
	public static int 
		INVALID = -1,
		SEND_INFO = 0,
		CLOSE_CONNECTION = -1,
		SHUT_DOWN = 2,
		LOCK_ALL = 3,
		SEND_FILE = 4,
		ONLINE = 5,
		OFFLINE = 6,
		ERROR = 7,
		DICTIONARY = 8,
		FILE_NAME = 9,
		FILE_INFO = 10,
		FILE_CONTENT = 11,
		KEEP_ALIVE = 12,
		LOG = 13;
	static HashMap values = new HashMap();
	static HashMap defaultValues = new HashMap(){//静态初始化默认值
	};
	

	
	public static boolean setup(){
		Gui.log("Loading dictionaries.");
		StatusFlag.setIsPending();
		try{
			configFile = new File("ServerConfig.properties");//打开文件
			if(!configFile.exists()){
				Gui.log("File:"+fileName+"do not found, creating it with default...");
				writer = new FileWriter("ServerConfig.properties");
				writer.close();
				writer = null;
				reader = new FileReader(configFile);//设置读取
				fillDefault();
			}
			else{
				Gui.log("File:"+fileName+" found, reading config...");
				reader = new FileReader(configFile);
				fillDefault();
			}
			prop.load(reader);//设置配置文件
			reader.close();
			readFromFile();
		}
		catch (Exception e) {
			Gui.displayException(new Exception("Dictionary load error!: "+e.getMessage()));
			return false;
		}
		return true;
		//prop.setProperty("SEND_INFO", prop.getProperty("SEND_INFO"));
	}
	
	public static boolean fillDefault(){
		return true;
	}
	
	public static boolean readFromFile(){
		return true;
	}
}
