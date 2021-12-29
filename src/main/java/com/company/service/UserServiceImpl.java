package com.company.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.domain.LoginDTO;
import com.company.domain.UserDTO;
import com.company.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper mapper;
	
	@Override
	public boolean register(UserDTO userDto) {
		return mapper.insert(userDto) > 0 ? true : false;
	}

	@Override
	public UserDTO dupId(String userid) {
		return mapper.selectById(userid);
	}

	@Override
	public LoginDTO login(LoginDTO loginDto) {
		return mapper.login(loginDto);
	}

}
