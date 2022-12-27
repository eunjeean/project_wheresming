package com.wheresming.pick;

import java.security.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Getter
@AllArgsConstructor
@Setter
@NoArgsConstructor
@RequiredArgsConstructor
public class AddPickDTO {

	@NonNull
	private int mv_seq;
	@NonNull
	private String mb_nick;
	@NonNull
	private String mb_id;
	private String open_yn;
	@NonNull
	private String fd_name;
	private int fd_likes;
	private Timestamp fd_cdate;

	

	
}
