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
import com.ganghwan.seoulMatjip.post.like.bo.LikeBO;
import com.ganghwan.seoulMatjip.post.model.Post;
import com.ganghwan.seoulMatjip.post.model.PostDetail;

@Service
public class PostBO {

	@Autowired
	private PostDAO postDAO;
	
	@Autowired
	private CommentBO commentBO;
	
	@Autowired
	private LikeBO likeBO;
	
	// 포스트 작성
	public int addPost(int userId, String userLoginId, String title, String content, MultipartFile file, String areaAreaId, MultipartFile profile) {
		
		String filePath = FileManagerService.saveFile(userId, file);
		String profilePath = FileManagerService.saveFile(userId, profile);
		
		return postDAO.insertPost(userId, userLoginId, title, content, filePath, areaAreaId, profilePath);
	}
	
	// 포스트 불러오기
	public List<PostDetail> getPostList(int userId) {
		
		List<Post> postList = postDAO.selectPostList();
		
		List<PostDetail> postDetailList = new ArrayList<>();
		
		for(Post post:postList) {
			// 찜 개수
			int likeCount = likeBO.getLikeCount(post.getId());
			
			// 찜 여부 확인
			boolean isLike = likeBO.isLike(userId, post.getId());
			
			PostDetail postDetail = new PostDetail();
			
			postDetail.setPost(post);
			
			postDetail.setLikeCount(likeCount);
			postDetail.setLike(isLike);
			
			postDetailList.add(postDetail);
		}
		
		return postDetailList;
	}
	
	// 아이디로 포스트 불러오기
	public PostDetail getPost(int postId) {
		
		Post post = postDAO.selectPostDetail(postId);
		
		// postId로 댓글 불러오기
		List<Comment> commentList = commentBO.getCommentList(postId);
		
		// 찜 개수
		int likeCount = likeBO.getLikeCount(postId);
		
		// 찜 여부 확인
		boolean isLike = likeBO.isLike(post.getUserId(), postId);
			
		PostDetail postDetail = new PostDetail();
		
		postDetail.setPost(post);
		postDetail.setComment(commentList);
		
		postDetail.setLikeCount(likeCount);
		postDetail.setLike(isLike);
		
		return postDetail;
	}
	
	// 게시글 삭제
	public int deletePost(int postId) {
		
		Post post = postDAO.selectPostDetail(postId);
		FileManagerService.removeFile(post.getImagePath());
		
		commentBO.deleteCommentByPost(postId);
		likeBO.deleteLikeByPost(postId);
		
		return postDAO.deletePost(postId);
	}
	
	// 지역별 정렬
	public List<PostDetail> getPostListByArea(int userId, int areaAreaId) {
		
		List<Post> postList = postDAO.selectPostListByArea(areaAreaId);
		
		List<PostDetail> postDetailList = new ArrayList<>();
		
		for(Post post:postList) {
			// 찜 개수
			int likeCount = likeBO.getLikeCount(post.getId());
			
			// 찜 여부 확인
			boolean isLike = likeBO.isLike(userId, post.getId());
			
			PostDetail postDetail = new PostDetail();
			
			postDetail.setPost(post);
			
			postDetail.setLikeCount(likeCount);
			postDetail.setLike(isLike);
			
			postDetailList.add(postDetail);
		}
		
		return postDetailList;
	}
}
