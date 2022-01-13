package com.company.service;

import java.security.Principal;
import java.util.List;

import com.company.domain.CscDTO;
import com.company.domain.ReserveDTO;
import com.company.domain.ticketDTO;

public interface MovieReserveService {
   public List<ReserveDTO> reserveRead(int movieCD);
   public List<ticketDTO> getmyList(Principal username);
   
   public boolean insert(ticketDTO insertDto);
}