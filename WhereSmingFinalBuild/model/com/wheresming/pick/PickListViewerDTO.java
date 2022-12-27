package com.wheresming.pick;

import java.math.BigDecimal;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PickListViewerDTO {

	private BigDecimal mv_seq;
	private String mb_nick;
	private String mb_id;
	private String open_yn;
	private String fd_name;
	private BigDecimal fd_likes;
	
	public PickListViewerDTO(BigDecimal mv_seq, String mb_nick, String mb_id, String open_yn, String fd_name,
			BigDecimal fd_likes) {
		super();
		this.mv_seq = mv_seq;
		this.mb_nick = mb_nick;
		this.mb_id = mb_id;
		this.open_yn = open_yn;
		this.fd_name = fd_name;
		this.fd_likes = fd_likes;
	}

	public PickListViewerDTO(BigDecimal mv_seq, String mb_nick, String open_yn, String fd_name, BigDecimal fd_likes) {
		super();
		this.mv_seq = mv_seq;
		this.mb_nick = mb_nick;
		this.open_yn = open_yn;
		this.fd_name = fd_name;
		this.fd_likes = fd_likes;
	}


	

	
}
