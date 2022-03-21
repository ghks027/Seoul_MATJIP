package com.ganghwan.seoulMatjip.post.like.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface LikeDAO {

	// 찜 하기
	public int insertLike(
			@Param("userId") int userId,
			@Param("postId") int postId
			);
	
	// 찜 취소
	public int deleteLike(
			@Param("userId") int userId,
			@Param("postId") int postId
			);
	
	// 찜 불러오기
	public int selectLikeCount(
			@Param("postId") int postId
			);
	
	// 찜 여부 확인
	public int selectLikeCountByUserId(
			@Param("userId") int userId,
			@Param("postId") int postId
			);
	
	// 찜 삭제
	public int deleteLikeByPost(
			@Param("postId") int postId
			);
}
