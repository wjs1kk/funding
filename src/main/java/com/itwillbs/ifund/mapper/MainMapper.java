package com.itwillbs.ifund.mapper;

import java.util.List;
import java.util.Map;

public interface MainMapper {

	public List slide();
//	06/13 최근본 프로젝트 관련
	public Map selectProject(int project_idx);
//	최근본 프로젝트 관련 끝
	public String selectCategory(String category_cd);

}
