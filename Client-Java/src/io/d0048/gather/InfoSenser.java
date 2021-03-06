package io.d0048.gather;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.UnknownHostException;
//<<<<<<< HEAD
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Properties;

public class InfoSenser {
	PcInfo pcinfo = new PcInfo();
	static String ipRegex = "[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}";
	static String macRegex = "[0-9A-F][0-9A-F]:[0-9A-F][0-9A-F]:[0-9A-F][0-9A-F]:[0-9A-F][0-9A-F]:[0-9A-F][0-9A-F]:[0-9A-F][0-9A-F]";
	
	public PcInfo sense(){
		this.pcinfo.ips = InfoSenser.getIpAddresses();
		this.pcinfo.os = InfoSenser.getOs();
		this.pcinfo.hostNames = InfoSenser.getHostNames();
		try {
			this.pcinfo.accurateIps = InfoSenser.getAccurateIpAddresses();
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.pcinfo.user = InfoSenser.getCurrentUser();
		this.pcinfo.macAddresses = InfoSenser.getMACAddress();
		this.pcinfo.props = InfoSenser.getProperties();
		this.pcinfo.env = InfoSenser.getEnv();
		this.pcinfo.lastUpDate = InfoSenser.getDate();
		
		System.out.print("ip："+pcinfo.ips.toString()+"\n");
		System.out.print("操作系统："+pcinfo.os.toString()+"\n");
		System.out.print("获得的计算机名："+pcinfo.hostNames.toString()+"\n");
		System.out.print("获得的准确IP:"+this.pcinfo.accurateIps+"\n");
		System.out.print("获得的用户名："+this.pcinfo.user+"\n");
		System.out.print("获得的MAC地址："+this.pcinfo.macAddresses.toString()+"\n");
		System.out.print("其他杂项：\n");
		for(Object s : this.pcinfo.props.keySet()){
		System.out.print(s.toString()+": \""+this.pcinfo.props.getProperty((String)s)+"\"\n");
		}
		for(Object s : this.pcinfo.env.keySet()){
			System.out.print(s.toString()+": \""+this.pcinfo.env.get((String)s)+"\"\n");
			}
		System.out.print("上次更新时间："+this.pcinfo.lastUpDate+"\n");
		
		return this.pcinfo;
	}
	
	public PcInfo getPcinfo() {
		return pcinfo;
	}

	public void setPcinfo(PcInfo pcinfo) {
		this.pcinfo = pcinfo;
	}

	public static String getOs(){

public class InfoSenser {
	PcInfo pcinfo = new PcInfo();
	
	public PcInfo sense(){
		this.pcinfo.ips = this.getIpAddresses();
		this.pcinfo.os = this.getOs();
		this.pcinfo.hostNames = this.getHostNames();
		System.out.print(pcinfo.ips.toString()+"\n");
		System.out.print(pcinfo.os.toString()+"\n");
		System.out.print(pcinfo.hostNames.toString()+"\n");
		return this.pcinfo;
	}
	
	public String getOs(){
//>>>>>>> master
		 String os = System.getProperty("os.name");
		 return os;
	}
	
	public HashSet<String> getHostNames(){
		HashSet <String> hostNames = new HashSet<String>();
		try{
			this.pcinfo.ips.add(InetAddress.getLocalHost());
			for( InetAddress ip : InetAddress.getAllByName(InetAddress.getLocalHost().getHostName()) ){
				hostNames.add(ip.getHostName().trim());
			}
		}
		catch(UnknownHostException e){
			e.printStackTrace();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return hostNames;
	}
	
//<<<<<<< HEAD
	public HashSet<InetAddress> getIpAddresses(){
			HashSet <InetAddress>ips = new HashSet<InetAddress>();
		try{
			for( InetAddress ip : InetAddress.getAllByName(InetAddress.getLocalHost().getHostName()) ){
				ips.add(ip);
			}
		}
		catch(UnknownHostException e){
			e.printStackTrace();
		}
		catch(Exception e){
			e.printStackTrace();
		}
//<<<<<<< HEAD
		return ips;
	}
	
	public ArrayList <String> getAccurateIpAddresses() throws Exception{
		//String ipRegex = "[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}";//IP过滤表达式
		String os = System.getProperty("os.name");
		//linux使用
		if(os != null && os.startsWith("Linux")){
			boolean filterFirst = false;
			ArrayList <String> finals = new ArrayList<String>();;
			String[] command = {"LC_ALL=C ifconfig  | grep 'inet addr:'| grep -v '127.0.0.1' | cut -d: -f2 | awk '{ print $1}'"};
			String rawIps=Executer.linuxExec(command);
			for(String s : rawIps.split("\n")){
				if(filterFirst) finals.add(s.trim());
				filterFirst = true;
			}
			return finals;
		}
		//windows使用
		if(os != null && os.startsWith("Windows")){
			ArrayList <String>finals = new ArrayList<String>();
			//Pattern pattern = Pattern.compile(this.ipRegex);
			String[] command = {"ipconfig /all"};
			String result = Executer.windowsExec(command);
			for(String p : result.split(" ")){
				//pieces.add(p);
				if(p.matches(ipRegex)){
					finals.add(p.trim());
				}
			}
			return finals;
			//return pattern.split(Executer.windowsExec(command));
		}
		else{
			throw new Exception("此系统不兼容");
		}
	}
	
	public String getCurrentUser(){
		String osUser=System.getProperty("user.name");
		return osUser;
	}
	
	/*public HashSet<String> getMACAddress(){
		HashSet<String> macAddresses = new HashSet<String>();
        String address = "";
        String os = System.getProperty("os.name");
        //windows使用
		return this.pcinfo.ips;
	}*/
	
	public HashSet<String> getLinuxIpAddresses() throws Exception{
		if(System.getProperty("os.name").startsWith("Linux")){
			String rawIps=Executer.exec(command);
		}
		else{
			throw new Exception("e");
			return null;
		}
	}
	
	public String getMACAddress(){
        HashSet<String> macAddresses = new HashSet<String>();
		String address = "";
        String os = System.getProperty("os.name");

        if (os != null && os.startsWith("Windows")) {
            try {
                String command = "cmd.exe /c ipconfig /all";
                Process p = Runtime.getRuntime().exec(command);
                BufferedReader br =new BufferedReader(new InputStreamReader(p.getInputStream()));
                String line;
                while ((line = br.readLine()) != null) {
                    if (line.indexOf("Physical Address") > 0) {
                        int index = line.indexOf(":");
                        index += 2;
                        address = line.substring(index);
                        break;
                    }
                }
                br.close();
                return address.trim();
            }
            catch (IOException e) {
            	e.printStackTrace();
            }
        }
        //linux使用
        if (os != null && os.startsWith("Linux")) {
        	String[] command = {"ip link show"};
        	//String result = Executer.linuxExec(command);
        	
        	for(String s : Executer.linuxExec(command).split(" ")){
        		//System.out.print(s+"\n");
        		if(s.trim().toUpperCase().matches(macRegex)){
        			macAddresses.add(s.trim());
        		}
        	}
        //findAll(Executer.linuxExec(command), macRegex);
        }
        return macAddresses;
        
    }
	/*
	public static HashSet<String> findAll(String source, String targetRegex){
		HashSet<String> targets = new HashSet<String>();
		Pattern p = Pattern.compile(targetRegex);
		Matcher m=p.matcher("source");
		while(m.find()) { 
			String found = m.group();
			targets.add(found);
			System.out.println("I found:"+found); 
		}
		return targets;
	}
*/
	public Properties getProperties(){
		Properties props=System.getProperties();
		return props;
	}
	
	public Date getDate(){
		return new Date();
	}
	
	public java.util.Map<String,String> getEnv(){
		return System.getenv();
	}
}
