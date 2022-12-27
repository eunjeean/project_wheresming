package com.wheresming.movie;

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
public class MovieDTO {

	private int mv_seq;
	@NonNull
	private String mv_title;
	private String mv_nf;
	private String mv_wc;
	private String mv_tv;
	private String mv_genre;
	private String mv_image;
	
	public MovieDTO(int mv_seq) {
		this.mv_seq = mv_seq;
	}
	
	public MovieDTO(String mv_nf, String mv_wc, String mv_tv, String mv_title) {
		this.mv_nf = mv_nf;
		this.mv_wc = mv_wc;
		this.mv_tv = mv_tv;
		this.mv_title = mv_title;
	}
}
