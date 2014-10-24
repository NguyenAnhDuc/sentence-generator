package com.fpt.ruby;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;


public class Helper {
	public static void appendFile(String  fileName, String  data){
		try{
    		File file =new File(fileName);
    		//if file doesnt exists, then create it
    		if(!file.exists()){
    			file.createNewFile();
    		}
    		//true = append file
    		FileWriter fileWritter = new FileWriter(fileName,true);
    	        BufferedWriter bufferWritter = new BufferedWriter(fileWritter);
    	        bufferWritter.write(data);
    	        bufferWritter.close();
 
	        System.out.println("Done");
 
    	}catch(IOException e){
    		e.printStackTrace();
    	}
	}
	
	public static void main(String[] args){
		appendFile("/E:/Workspace/Tutorial/ruby-start/target/classes/emails.txt", "test123");
		
	}
}
