package com.ganghwan.seoulMatjip.post.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ganghwan.seoulMatjip.post.model.Post;

@Repository
public interface PostDAO {
	
	// 포스트 작성
	public int insertPost(
			@Param("userId") int userId,
			@Param("userLoginId") String userLoginId,
			@Param("title") String title,
			@Param("content") String content,
			@Param("imagePath") String imagePath,
			@Param("areaAreaId") String areaAreaId,
			@Param("userProfileImage") String userProfileImage
			);
	
	// 포스트 불러오기
	public List<Post> selectPostList();
}
