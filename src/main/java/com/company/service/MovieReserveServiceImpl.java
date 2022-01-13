package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.domain.ReserveDTO;
import com.company.mapper.MovieReserveMapper;

@Service
public class MovieReserveServiceImpl implements MovieReserveService{
	
	@Autowired
	private MovieReserveMapper mapper;
	
	
	@Override
	public List<ReserveDTO> reserveRead() {
		// TODO Auto-generated method stub
		return mapper.reserveRead();
	}


	@Override
	public ReserveDTO reserveRead2(int reserveNm) {
		
		return mapper.reserveRead2(reserveNm);
	}
	
}
