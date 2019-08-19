package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import service.HSService;

@Controller
public class UserController {
	
	@Autowired
	HSService service;
	
	//마이페이지 불러오기
		@RequestMapping("user/myPage.do")
		public void mypage() {
			//미완성
		}
		
		//장바구니보기
		@RequestMapping("user/basket.do")
		public void basket() {
			//미완성
		}
		
		//문의작성폼보기
		@RequestMapping("user/contactWriteForm.do")
		public void contactWriteForm() {
			//미완성
		}
}
