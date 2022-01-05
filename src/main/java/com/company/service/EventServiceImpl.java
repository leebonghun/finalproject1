package com.company.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.domain.EventDTO;
import com.company.mapper.EventMapper;
@Service
public class EventServiceImpl implements EventService {
	@Autowired
	private EventMapper eventMapper;

	@Override
	public EventDTO getRow(int Event_Bno) {
		return eventMapper.read(Event_Bno);
	}

	
	

}
