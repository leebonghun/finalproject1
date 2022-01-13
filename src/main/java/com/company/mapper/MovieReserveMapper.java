package com.company.mapper;

import java.util.List;

import com.company.domain.MovieReplyDTO;
import com.company.domain.ReserveDTO;

public interface MovieReserveMapper {
	public List<ReserveDTO> reserveRead();	
	public ReserveDTO reserveRead2(int reserveNm);
}
