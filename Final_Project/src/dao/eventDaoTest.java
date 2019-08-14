package dao;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class eventDaoTest {
	public static void main(String[] args) {
		
		ApplicationContext context =
				new FileSystemXmlApplicationContext
				("WebContent/WEB-INF/applicationContext.xml");
		
		EventDao edao = context.getBean("eventDao",EventDao.class);
		
		//System.out.println(edao.selectOne(4));
		System.out.println(edao.getCount());
	}

}
