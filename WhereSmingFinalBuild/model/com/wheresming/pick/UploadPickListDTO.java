package com.wheresming.pick;

import java.math.BigDecimal;

import lombok.Getter;

@Getter
public class UploadPickListDTO {

	private String mb_nick;
	private String mb_id;
	private String fd_name;
	private BigDecimal fd_likes;
	private String mv_image;
	
	public UploadPickListDTO(String mb_id, String fd_name) {
		super();
		this.mb_id = mb_id;
		this.fd_name = fd_name;
	}

	public UploadPickListDTO(String mb_nick, String fd_name, BigDecimal fd_likes) {
		super();
		this.mb_nick = mb_nick;
		this.fd_name = fd_name;
		this.fd_likes = fd_likes;
	}
	
	public UploadPickListDTO(String mb_nick, String fd_name, BigDecimal fd_likes, String mv_image) {
		super();
		this.mb_nick = mb_nick;
		this.fd_name = fd_name;
		this.fd_likes = fd_likes;
		this.mv_image = mv_image;
	}
	
}
