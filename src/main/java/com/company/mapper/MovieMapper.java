package com.company.mapper;

import java.util.List;

import com.company.domain.movieDTO;

public interface MovieMapper {
	public movieDTO read(int movieCD);
	
	public List<movieDTO> list();
}
