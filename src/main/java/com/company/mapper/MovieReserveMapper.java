package com.company.mapper;

import java.security.Principal;
import java.util.List;

import com.company.domain.CscDTO;
import com.company.domain.MovieReplyDTO;
import com.company.domain.ReserveDTO;
import com.company.domain.ticketDTO;

public interface MovieReserveMapper {

	public List<ReserveDTO> reserveRead();	
	public ReserveDTO reserveRead2(int reserveNm);

	public List<ReserveDTO> reserveRead(int movieCD);
	public List<ticketDTO> myList(Principal username);
	
	public int insert(ticketDTO ticketDto);
	

	
	public List<String> seat(int movieCD);


}
