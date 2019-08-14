package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IMemberDao;

@Service
public class HSService {
	
	@Autowired
	IMemberDao memberDao; 
	
}
