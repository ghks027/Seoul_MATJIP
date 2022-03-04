package com.ganghwan.seoulMatjip.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ganghwan.seoulMatjip.user.area.bo.AreaBO;
import com.ganghwan.seoulMatjip.user.area.model.Area;

@Controller
@RequestMapping("/post")
public class PostController {
	
	@Autowired
	private AreaBO areaBO;

	// 포스트 리스트
	@GetMapping("/postList_view")
	public String postListView(
			Model model
			) {
		
		List<Area> areaList = areaBO.getAreaList();
		model.addAttribute("areaList", areaList);
		
		return "post/postList";
	}
}
