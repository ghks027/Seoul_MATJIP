package com.ganghwan.seoulMatjip.post;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ganghwan.seoulMatjip.post.bo.PostBO;
import com.ganghwan.seoulMatjip.post.model.Post;
import com.ganghwan.seoulMatjip.post.model.PostDetail;
import com.ganghwan.seoulMatjip.user.area.bo.AreaBO;
import com.ganghwan.seoulMatjip.user.area.model.Area;

@Controller
@RequestMapping("/post")
public class PostController {
	
	@Autowired
	private AreaBO areaBO;
	
	@Autowired
	private PostBO postBO;

	// 포스트 리스트
	@GetMapping("/postList_view")
	public String postListView(
			Model model,
			HttpServletRequest request
			) {
		
		// 지역 리스트
		List<Area> areaList = areaBO.getAreaList();
		model.addAttribute("areaList", areaList);
		
		// userId 불러오기
		HttpSession session = request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		List<PostDetail> postlist = postBO.getPostList(userId);
		model.addAttribute("postList", postlist);
		
		return "post/postList";
	}
	
	// 포스트 작성
	@GetMapping("/postCreate_view")
	public String postCreateView(
			Model model
			) {
		
		List<Area> areaList = areaBO.getAreaList();
		model.addAttribute("areaList", areaList);
		
		return "post/postCreate";
	}
	
	// 포스트
	@GetMapping("postDetail_view")
	public String postDetailView(
			Model model,
			@RequestParam("postId") int postId 
			) {
		
		PostDetail postDetail = postBO.getPost(postId);
		model.addAttribute("postDetail", postDetail);
		
		return "post/postDetail";
	}
	
	// 포스트 수정
	@GetMapping("/postUpdate_view")
	public String postUpdateView(
			Model model,
			@RequestParam("postId") int postId
			) {
		
		List<Area> areaList = areaBO.getAreaList();
		model.addAttribute("areaList", areaList);
		
		PostDetail postUpdate = postBO.getPost(postId);
		model.addAttribute("postUpdate", postUpdate);
		
		return "post/postUpdate";
	}
	
//	// 지역별 포스트 리스트
//	@GetMapping("postListByArea_view")
//	public String postListByArea(
//			Model model,
//			@RequestParam("areaAreaId") String areaAreaId,
//			HttpServletRequest request
//			) {
//		
//		List<Area> areaList = areaBO.getAreaList();
//		model.addAttribute("areaList", areaList);
//		
//		HttpSession session = request.getSession();
//		int userId = (Integer)session.getAttribute("userId");
//		
//		List<PostDetail> postlist = postBO.getPostListByArea(userId, areaAreaId);
//		model.addAttribute("postList", postlist);
//		
//		return "post/postListByArea";
//	}
}
