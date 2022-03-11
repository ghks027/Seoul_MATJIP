package com.ganghwan.seoulMatjip.post.bo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ganghwan.seoulMatjip.common.FileManagerService;
import com.ganghwan.seoulMatjip.post.comment.bo.CommentBO;
import com.ganghwan.seoulMatjip.post.comment.model.Comment;
import com.ganghwan.seoulMatjip.post.dao.PostDAO;
import com.ganghwan.seoulMatjip.post.model.Post;
import com.ganghwan.seoulMatjip.post.model.PostDetail;

@Service
public class PostBO {

	@Autowired
	private PostDAO postDAO;
	
	@Autowired
	private CommentBO commentBO;
	
	// 포스트 작성
	public int addPost(int userId, String userLoginId, String title, String content, MultipartFile file, String areaAreaId, MultipartFile profile) {
		
		String filePath = FileManagerService.saveFile(userId, file);
		String profilePath = FileManagerService.saveFile(userId, profile);
		
		return postDAO.insertPost(userId, userLoginId, title, content, filePath, areaAreaId, profilePath);
	}
	
	// 포스트 불러오기
	public List<Post> getPostList() {
		return postDAO.selectPostList();
	}
	
	// 아이디로 포스트 불러오기
	public List<PostDetail> getPostDetail(int postId) {
		
		Post postList = postDAO.selectPostDetail(postId);
		List<PostDetail> postDetailList = new ArrayList<>();
		
		// postId로 댓글 불러오기
		List<Comment> commentList = commentBO.getCommentList(postId);
			
		PostDetail postDetail = new PostDetail();
		postDetail.setPost(postList);
		postDetail.setComment(commentList);
		
		postDetailList.add(postDetail);
		
//		return postDAO.selectPostDetail(postId);
		return postDetailList;
	}
}
