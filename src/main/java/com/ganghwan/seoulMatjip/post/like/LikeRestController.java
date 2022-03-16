package com.ganghwan.seoulMatjip.post.like;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ganghwan.seoulMatjip.post.like.bo.LikeBO;

@RestController
@RequestMapping("/post")
public class LikeRestController {
	
	@Autowired
	private LikeBO likeBO;

	// 찜 하기
	@GetMapping("/like")
	public Map<String, Boolean> like(
			@RequestParam("postId") int postId,
			HttpServletRequest request
			) {
		
		HttpSession session = request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		boolean isLike = likeBO.like(userId, postId);
		
		Map<String, Boolean> result = new HashMap<>();
		
		result.put("isLike", isLike);
		
		return result;
	}
	
	// 찜 취소
	@GetMapping("/post/unlike")
	public Map<String, String> unlike(
			@RequestParam("postId") int postId,
			HttpServletRequest request
			) {
		
		HttpSession session = request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		int count = likeBO.deleteLike(userId, postId);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 0) {
			result.put("result", "fail");
		} else {
			result.put("result", "success");
		}
		
		return result;
	}
}
