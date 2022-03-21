package com.ganghwan.seoulMatjip.post.like.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ganghwan.seoulMatjip.post.like.dao.LikeDAO;

@Service
public class LikeBO {
	
	@Autowired
	private LikeDAO likeDAO;	

	// 찜 하기
	public boolean like(int userId, int postId) {
		
		if(this.isLike(userId, postId)) {
			likeDAO.deleteLike(userId, postId);
			return false;
		} else {
			likeDAO.insertLike(userId, postId);
			return true;
		}
	}
	
	// 찜 취소
	public int deleteLike(int userId, int postId) {
		return likeDAO.deleteLike(userId, postId);
	}
		
	// 찜 불러오기
	public int getLikeCount(int postId) {
		return likeDAO.selectLikeCount(postId);
	}
		
	// 찜 여부 확인
	public boolean isLike(int userId, int postId) {
		int count = likeDAO.selectLikeCountByUserId(userId, postId);
		
		if(count == 0) {
			return false;
		} else {
			return true;
		}
	}
	
	// 찜 삭제
	public int deleteLikeByPost(int postId) {
		return likeDAO.deleteLikeByPost(postId);
	}
}
