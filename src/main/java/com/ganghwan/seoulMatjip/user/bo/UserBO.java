package com.ganghwan.seoulMatjip.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ganghwan.seoulMatjip.user.dao.UserDAO;
import com.ganghwan.seoulMatjip.user.model.User;

@Service
public class UserBO {
	
	@Autowired
	private UserDAO userDAO;

	// 로그인
	public User getUser(String loginId, String password) {
		return userDAO.selectUser(loginId, password);
	}
}
