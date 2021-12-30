package com.company.service;

import java.util.List;

import com.company.domain.movieDTO;

public interface MovieService  {
	public movieDTO read(int movieCD);
	
	public List<movieDTO> list();
}
