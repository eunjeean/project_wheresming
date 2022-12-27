package com.wheresming.pick;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class JoinDTO {
	
	private String mv_image; 
	
	public JoinDTO(String mv_image) {
		super();
		this.mv_image = mv_image;
	}

}
