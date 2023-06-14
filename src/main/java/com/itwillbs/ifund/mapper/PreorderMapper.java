package com.itwillbs.ifund.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.ifund.vo.ProjectListVO;

public interface PreorderMapper {
	public List<ProjectListVO> selectPreorderProject(@Param("category") String category, @Param("order") String order, @Param("selectbox") String selectbox);

}
