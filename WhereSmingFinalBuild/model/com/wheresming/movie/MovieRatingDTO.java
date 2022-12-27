package com.wheresming.movie;


import lombok.Getter;

@Getter
public class MovieRatingDTO {

	int mv_seq;
	String mb_id;
	String mb_nick;
	int rating;
	
	public MovieRatingDTO(int mv_seq, String mb_id, String mb_nick, int rating) {
		super();
		this.mv_seq = mv_seq;
		this.mb_id = mb_id;
		this.mb_nick = mb_nick;
		this.rating = rating;
	}

	public MovieRatingDTO(int mv_seq, String mb_nick) {
		super();
		this.mv_seq = mv_seq;
		this.mb_nick = mb_nick;
	}
	
}