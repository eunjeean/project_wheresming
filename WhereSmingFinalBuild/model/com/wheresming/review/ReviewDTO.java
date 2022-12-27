package com.wheresming.review;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class ReviewDTO {

	private int mv_seq;
	private String cmt_content;
	private Timestamp cmt_date;
	private String mb_nick;
	private String mb_id;
	private int cmt_likes;
	private int cmt_score;
		
	public ReviewDTO(int mv_seq, String cmt_content, Timestamp cmt_date, String mb_id, int cmt_likes, int cmt_score) {
		super();
		this.mv_seq = mv_seq;
		this.cmt_content = cmt_content;
		this.cmt_date = cmt_date;
		this.mb_id = mb_id;
		this.cmt_likes = cmt_likes;
		this.cmt_score = cmt_score;
	}

	public ReviewDTO(int mv_seq, String cmt_content, String mb_id, int cmt_likes, int cmt_score) {
		super();
		this.mv_seq = mv_seq;
		this.cmt_content = cmt_content;
		this.mb_id = mb_id;
		this.cmt_likes = cmt_likes;
		this.cmt_score = cmt_score;
	}

	public ReviewDTO(String cmt_content, String mb_id) {
		super();
		this.cmt_content = cmt_content;
		this.mb_id = mb_id;
	}

	public ReviewDTO(int mv_seq, String cmt_content, String mb_nick, String mb_id, int cmt_likes, int cmt_score) {
		super();
		this.mv_seq = mv_seq;
		this.cmt_content = cmt_content;
		this.mb_nick = mb_nick;
		this.mb_id = mb_id;
		this.cmt_likes = cmt_likes;
		this.cmt_score = cmt_score;
	}

	public ReviewDTO(String cmt_content, String mb_nick, int cmt_likes, int cmt_score) {
		super();
		this.cmt_content = cmt_content;
		this.mb_nick = mb_nick;
		this.cmt_likes = cmt_likes;
		this.cmt_score = cmt_score;
	}
	
	
	
	
	
	
	
	
	
}
