package com.company.service;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.domain.ReserveDTO;
import com.company.domain.ticketDTO;
import com.company.mapper.MovieReserveMapper;

@Service
public class MovieReserveServiceImpl implements MovieReserveService{
	
	@Autowired
	private MovieReserveMapper mapper;
	
	
	@Override
	public List<ReserveDTO> reserveRead(int movieCD) {
		// TODO Auto-generated method stub
		return mapper.reserveRead(movieCD);
	}


	


	@Override
	public boolean insert(ticketDTO insertDto) {
		// TODO Auto-generated method stub
		return mapper.insert(insertDto)>0?true:false;
	}





	@Override
	public List<ticketDTO> getmyList(Principal username) {
		// TODO Auto-generated method stub
		return mapper.myList(username);
	}





	@Override
	public List<String> seat(int movieCD) {
		// TODO Auto-generated method stub
		return mapper.seat(movieCD);
	}
	
}
