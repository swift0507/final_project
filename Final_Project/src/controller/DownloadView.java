package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

public class DownloadView extends AbstractView {

	//파일객체를 필드로@
	private File file;
	
	public DownloadView(File file) { 
		setContentType("application/download; utf-8");
		//file안에 받아온 file저장
		this.file = file;
	}
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		//응답객체 컨텐츠타입/ 길이 설정
		response.setContentType(getContentType());
		response.setContentLength((int)file.length());
		
		//브라우저가 IE인지 판별
		String userAgent = request.getHeader("User-Agent");
		//참또는거짓으로 나옴 그래서 boolean 값으로 저장하기
		boolean ie = userAgent.indexOf("MSIE") > -1;
		
		String filename = null;
		if(ie) {
			filename = URLEncoder.encode(file.getName(), "utf-8");
		}
		else {
			filename = new String(file.getName().getBytes("utf-8"));
		}
		
		response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\";");
		
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		OutputStream out = response.getOutputStream();
		FileInputStream fis = null;
		
		try {
			fis = new FileInputStream(file);
			FileCopyUtils.copy(fis, out);			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			if(fis != null) fis.close();
		}
		out.flush();
	}
}

















