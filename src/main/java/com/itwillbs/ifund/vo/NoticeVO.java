package com.itwillbs.ifund.vo;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

public class NoticeVO {
	private Integer board_idx;
	private String board_subject;
	private String board_content;
	private String board_file;
	private String board_file_path;
	private Timestamp board_date;
	private MultipartFile file;
	
	public NoticeVO() {}

	public Integer getBoard_idx() {
		return board_idx;
	}

	public void setBoard_idx(Integer board_idx) {
		this.board_idx = board_idx;
	}

	public String getBoard_subject() {
		return board_subject;
	}

	public void setBoard_subject(String board_subject) {
		this.board_subject = board_subject;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_file() {
		return board_file;
	}

	public void setBoard_file(String board_file) {
		this.board_file = board_file;
	}

	public String getBoard_file_path() {
		return board_file_path;
	}

	public void setBoard_file_path(String board_file_path) {
		this.board_file_path = board_file_path;
	}

	public Timestamp getBoard_date() {
		return board_date;
	}

	public void setBoard_date(Timestamp board_date) {
		this.board_date = board_date;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	@Override
	public String toString() {
		return "NoticeVO [board_idx=" + board_idx + ", board_subject=" + board_subject + ", board_content="
				+ board_content + ", board_file=" + board_file + ", board_file_path=" + board_file_path
				+ ", board_date=" + board_date + ", file=" + file + "]";
	}
	
}