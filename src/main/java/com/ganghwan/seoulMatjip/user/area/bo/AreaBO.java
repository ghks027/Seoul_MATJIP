package com.ganghwan.seoulMatjip.user.area.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ganghwan.seoulMatjip.user.area.dao.AreaDAO;
import com.ganghwan.seoulMatjip.user.area.model.Area;

@Service
public class AreaBO {
	
	@Autowired
	private AreaDAO areaDAO;

	// 지역 불러오기
	public List<Area> getAreaList() {
		return areaDAO.selectArea();
	}
 }
