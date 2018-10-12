package com.coord.jam;

import java.io.FileOutputStream;

import org.springframework.web.multipart.MultipartFile;

public class SpringFileWriter {
	private FileOutputStream fos;  

	public void writeFile(MultipartFile file, String cafe24path, String fileName)
	{ 
		try 
		{   
			byte fileData[] = file.getBytes();   
			cafe24path="/home/hosting_users/ezbomb19/tomcat/webapps/ROOT/save";
			//cafe24path="/Users/orange/Desktop/save";
			fos = new FileOutputStream(cafe24path + "/" + fileName);
			fos.write(fileData);   
		}

		catch (Exception e) 
		{    
			e.printStackTrace();
		}

		finally 
		{
			if(fos != null)
			{          
				try {fos.close();} catch (Exception e) {}   
			}     
		}  
	}
}
