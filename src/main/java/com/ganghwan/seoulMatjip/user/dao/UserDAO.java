package com.ganghwan.seoulMatjip.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ganghwan.seoulMatjip.user.model.User;

@Repository
public interface UserDAO {

	// 로그인
	public User selectUser(
			@Param("loginId") String loginId,
			@Param("password") String password
			);
}
