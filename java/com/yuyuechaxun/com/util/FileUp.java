package com.yuyuechaxun.com.util;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.Date;
import java.util.Random;


@Component
public class FileUp {
	
	public String upload(HttpSession se,MultipartFile file){
		
		String url = "";
		if (!file.isEmpty()) {
			//��ȡupload ��·��
			String path = se.getServletContext().getRealPath("upload");
			System.out.println(path);
			//�������һ��Ψһ������
			Date da = new Date();
			Random rd = new Random();
			int rdd = rd.nextInt(9000)+1000;
			String sui = da.toLocaleString().replace("-", "").replace(":", "").replace(" ", "")+rdd;
			System.out.println(sui);
			//��ȡԴ�ļ��ĸ�ʽ���� 
			String mz = file.getOriginalFilename();
			System.out.println(mz);//3.jpg
			String[] mmm = mz.split("\\.");
			String fileName = sui+"."+mmm[1];
			
			
			 File targetFile = new File(path, fileName);  
		        if(!targetFile.exists()){  
		            targetFile.mkdirs();  
		        }   
		        try {  
		            file.transferTo(targetFile);//�����ļ�    
		        } catch (Exception e) {  
		            e.printStackTrace();  
		        }  
			
		     url = "/upload/"+fileName;
		} 
		
		return url;
		
		
	}

}
