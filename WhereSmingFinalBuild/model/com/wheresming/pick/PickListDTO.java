package com.wheresming.pick;

import lombok.Getter;

@Getter
public class PickListDTO {

	private String fd_name;
	private String mb_id;
	private String mb_nick;
	
	public PickListDTO(String foldername, String memberID, String memberNick) {
		super();
		this.fd_name = foldername;
		this.mb_id = memberID;
		this.mb_nick = memberNick;
	}
	
}
