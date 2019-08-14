package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberDao;

@Service
public class HSServiceImpl implements HSService {
	
	@Autowired
	MemberDao memberDao; 
	
}
