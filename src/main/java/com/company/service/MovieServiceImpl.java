package com.company.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.domain.movieDTO;
import com.company.mapper.MovieMapper;

@Service("service")
public class MovieServiceImpl implements MovieService {

	@Autowired
	private MovieMapper mapper;
	
	@Override
	public movieDTO read(int movieCD) {
		// TODO Auto-generated method stub
		return mapper.read(movieCD);
	}

}
