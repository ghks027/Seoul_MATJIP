package com.ganghwan.seoulMatjip.post.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PostDAO {
	
	// 포스트 작성
	public int insertPost(
			@Param("userId") int userId,
			@Param("userLoginId") String userLoginId,
			@Param("titie") String title,
			@Param("content") String content,
			@Param("imagePath") String imagePath,
			@Param("areaId") int areaId,
			@Param("userProfileImage") String userProfileImage
			);

}
