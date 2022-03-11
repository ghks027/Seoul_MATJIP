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
		
		List<Post> postList = postBO.getPostList();
		model.addAttribute("postList", postList);
		
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
		
		Post postDetail = postBO.getPostDetail(postId);
		model.addAttribute("postDetail", postDetail);
		
		return "post/postDetail";
	}
}
