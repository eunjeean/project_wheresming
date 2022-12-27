package com.wheresming.search;

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
public class SearchDTO {
	
	private int mv_seq;
	@NonNull
	private String mv_title;
	private String mv_nf;
	private String mv_wc;
	private String mv_tv;
	private String mv_genre;
	private String mv_image;

}
