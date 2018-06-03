package cn.com.filmshow.utlis;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.Part;

public class HttpUtils {
	public static String  fileUpload(Part part,String parent) throws IOException{
		String imageName="";
		/*��ȡԭʼ�ļ�����*/
		String realName=part.getSubmittedFileName();
		/*ʹ�ù���������һ��������ļ�����*/
		imageName=FileHelper.generateFileName(realName);
		if(part!=null){
			FileOutputStream out=null;
			InputStream in=null;
			try{
				File file=new File(parent,imageName);
				if(!file.exists()){
					file.createNewFile();
				}
				in=part.getInputStream();
				out=new FileOutputStream(file);
				byte [] cache=new byte[255];
				int length=0;
				while((length=in.read(cache))!=-1){
					out.write(cache, 0, length);
				}
			}catch(Exception e){
				
			}finally{
				if(in!=null){
					in.close();
				}
				if(out!=null){
					out.close();
				}
			}
		}
		return imageName;
	}
}
