package com.company.service;

import java.util.List;

import com.company.domain.ReserveDTO;

public interface MovieReserveService {
	public List<ReserveDTO> reserveRead();
	public ReserveDTO reserveRead2(int reserveNm);
}
