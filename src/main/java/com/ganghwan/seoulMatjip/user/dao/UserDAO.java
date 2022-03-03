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
	
	// 회원가입
	public int insertUser(
			@Param("loginId") String loginId,
			@Param("password") String password,
			@Param("userName") String userName,
			@Param("areaId") int areaId
			);
	
	// 중복확인
	public int selectCountId(
			@Param("loginId") String loginId
			);
}
