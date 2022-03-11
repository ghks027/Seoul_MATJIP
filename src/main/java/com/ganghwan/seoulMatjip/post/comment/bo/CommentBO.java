package com.ganghwan.seoulMatjip.post.comment.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ganghwan.seoulMatjip.post.comment.dao.CommentDAO;
import com.ganghwan.seoulMatjip.post.comment.model.Comment;

@Service
public class CommentBO {
	
	@Autowired
	private CommentDAO commentDAO;

	// 댓글 작성
	public int addComment(int userId, String userLoginId, int postId, String content) {
		return commentDAO.insertComment(userId, userLoginId, postId, content);
	}
	
	// 댓글 불러오기
	public List<Comment> getCommentList(int postId) {
		return commentDAO.selectCommentList(postId);
	}
}
