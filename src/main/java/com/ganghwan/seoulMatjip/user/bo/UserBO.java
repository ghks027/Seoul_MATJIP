package com.ganghwan.seoulMatjip.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ganghwan.seoulMatjip.common.EncryptUtils;
import com.ganghwan.seoulMatjip.user.area.dao.AreaDAO;
import com.ganghwan.seoulMatjip.user.dao.UserDAO;
import com.ganghwan.seoulMatjip.user.model.User;

@Service
public class UserBO {
	
	@Autowired
	private UserDAO userDAO;

	// 로그인
	public User getUser(String loginId, String password) {
		return userDAO.selectUser(loginId, EncryptUtils.md5(password));
	}
	
	// 회원가입
	public int addUser(String loginId, String password, String userName, int areaId) {
		return userDAO.insertUser(loginId, EncryptUtils.md5(password), userName, areaId);
	}
	
	// 중복확인
	public boolean isDuplicateId(String loginId) {
		int count = userDAO.selectCountId(loginId);
		
		if(count == 0) {
			return false;
		} else {
			return true;
		}
	}
}
