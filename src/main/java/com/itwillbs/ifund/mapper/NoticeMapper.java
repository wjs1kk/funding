package com.itwillbs.ifund.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.ifund.vo.ProjectListVO;

public interface NoticeMapper {

	List getNoticeList(String searchText);

	Map getNoticeDetail(int board_idx);
	
}
