package io.d0048.gather;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Executer {

	public static String exec(String command){
        try {  
                // 执行 CMD 命令  
               String output="=====开始执行=====\n";
               Process process = Runtime.getRuntime().exec(command);
               // 从输入流中读取文本  
              BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));  
              String line = null;  
              // 循环读取  
              System.out.print("=====开始执行=====\n");
               while ((line = reader.readLine()) != null) {  
                  // 循环写入  
                  System.out.print(line+"\n");
                  output=output+"\n"+line;
               }
              process.getOutputStream().close();
              System.out.println("程序执行完毕!");  
              return output;
            }
            catch (Exception e) {  
                e.printStackTrace();  
            }
        return "哪里出错了";
    }
	
	public static String linuxExec(String[] command){
        try {  
        		String []prefix = {"/bin/sh", "-c"};
        		command = combine(prefix,command);
        		//预处理使适合linux执行
        		
                // 执行 CMD 命令  
               String output="";
               Process process = Runtime.getRuntime().exec(command);
               // 从输入流中读取文本  
              BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));  
              String line = null;  
              // 循环读取  
              System.out.print("=====开始执行=====\n");
               while ((line = reader.readLine()) != null) {  
                  // 循环写入  
                  System.out.print(line+"\n");
                  output=output+"\n"+line;
               }
              process.getOutputStream().close();
              System.out.println("程序执行完毕!");  
              return output;
            }
            catch (Exception e) {  
                e.printStackTrace();  
            }
        return "哪里出错了";
    }
	
	public static String windowsExec(String[] command){
        try {  
        		String []prefix = {"cmd", "/c"};
        		command = combine(prefix,command);
        		//预处理使适合windows执行
        		
                // 执行 CMD 命令  
               String output="";
               Process process = Runtime.getRuntime().exec(command);
               // 从输入流中读取文本  
              BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));  
              String line = null;  
              // 循环读取  
              System.out.print("=====开始执行=====\n");
               while ((line = reader.readLine()) != null) {  
                  // 循环写入  
                  System.out.print(line+"\n");
                  output=output+"\n"+line;
               }
              process.getOutputStream().close();
              System.out.println("程序执行完毕!");  
              return output;
            }
            catch (Exception e) {  
                e.printStackTrace();  
            }
        return "哪里出错了";
    }
	
	public static String[] combine(String[] a, String[] b) {  
		   String[] c= new String[a.length+b.length];  
		   System.arraycopy(a, 0, c, 0, a.length);  
		   System.arraycopy(b, 0, c, a.length, b.length);  
		   return c;  
		}
}
