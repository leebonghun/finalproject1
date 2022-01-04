package com.company.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.company.domain.AuthDTO;
import com.company.domain.LoginDTO;
import com.company.domain.UserDTO;
import com.company.mapper.UserMapper;


@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper mapper;
	
	
	
	@Autowired
	private PasswordEncoder encoder;
	
	
	@Transactional
	@Override
	public boolean register(UserDTO userDto) {
		
		userDto.setUser_password(encoder.encode(userDto.getUser_password()));
		
		boolean result=mapper.insert(userDto)> 0 ? true : false;
		
		
		if(userDto.getUser_id().contains("admin")) {
			mapper.auth(userDto.getUser_id(),"ROLE_ADMIN");
		}else {
			mapper.auth(userDto.getUser_id(),"ROLE_USER");
			
		}
		
		
		return result;
	}

	@Override
	public UserDTO dupId(String user_id) {
		return mapper.selectById(user_id);
	}

	@Override
	public LoginDTO login(LoginDTO loginDto) {
		return mapper.login(loginDto);
	}

	@Override
	public boolean leave(UserDTO leaveDto) {
		
		// 12345 => 암호화
		leaveDto.setUser_password(encoder.encode(leaveDto.getUser_password()));
		
		boolean result=mapper.delete(leaveDto)> 0 ? true : false;
		
		return result;
		
		
	}

}
