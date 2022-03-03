package com.ganghwan.seoulMatjip.user.area;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ganghwan.seoulMatjip.user.area.bo.AreaBO;
import com.ganghwan.seoulMatjip.user.area.model.Area;

@RestController
public class AreaRestController {
	
	@Autowired
	private AreaBO areaBO;

	// 지역 불러오기
	@RequestMapping("/area")
	public List<Area> areaView() {
		return areaBO.getAreaList();
	}
}
