package com.wheresming.review;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewViewerDTO {

	BigDecimal mv_seq;
	String cmt_content;
	String mb_nick;
	Timestamp cmt_date;
	BigDecimal cmt_likes;
	
	public ReviewViewerDTO(BigDecimal mv_seq, String cmt_content, String mb_nick, Timestamp cmt_date,
			BigDecimal cmt_likes) {
		super();
		this.mv_seq = mv_seq;
		this.cmt_content = cmt_content;
		this.mb_nick = mb_nick;
		this.cmt_date = cmt_date;
		this.cmt_likes = cmt_likes;
	}
	
}
