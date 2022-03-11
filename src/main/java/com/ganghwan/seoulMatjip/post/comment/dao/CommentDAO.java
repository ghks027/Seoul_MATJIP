package com.ganghwan.seoulMatjip.post.comment.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ganghwan.seoulMatjip.post.comment.model.Comment;

@Repository
public interface CommentDAO {

	// 댓글 작성
	public int insertComment(
			@Param("userId") int userId,
			@Param("userLoginId") String userLoginId,
			@Param("postId") int postId,
			@Param("content") String content
			);
	
	// 댓글 불러오기
	public List<Comment> selectCommentList(
			@Param("postId") int postId
			);
}
