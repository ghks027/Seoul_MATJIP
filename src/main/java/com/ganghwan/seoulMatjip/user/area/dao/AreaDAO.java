package com.ganghwan.seoulMatjip.user.area.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ganghwan.seoulMatjip.user.area.model.Area;

public interface AreaDAO {

	// 지역 불러오기
	public List<Area> selectArea();
}
