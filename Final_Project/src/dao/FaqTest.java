package dao;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class FaqTest {
	public static void main(String[] args) {

		ApplicationContext context = new FileSystemXmlApplicationContext("WebContent/WEB-INF/applicationContext.xml");
		
		FaqDao fdao = context.getBean("faqDao",FaqDao.class);

		System.out.println(fdao.selectAll());
//		System.out.println(fdao.selectOne(2));
		
		System.out.println(fdao.getCount());
	}
}
