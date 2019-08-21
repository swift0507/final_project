package dao;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class noticeDaoTest {
	public static void main(String[] args) {

		ApplicationContext context = new FileSystemXmlApplicationContext("WebContent/WEB-INF/applicationContext.xml");

		NoticeDao ndao = context.getBean("noticeDao",NoticeDao.class);
		

//		System.out.print(ndao.selectAll());
		System.out.println(ndao.getCount());
//		System.out.println(ndao.selectOne(2));
	

	}
}
