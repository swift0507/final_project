package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import service.HSService;

@Controller
public class SellerController {
	
	@Autowired
	HSService service;
}
