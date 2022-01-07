package com.company.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.company.domain.PwdDTO;
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
	public PwdDTO login(PwdDTO loginDto) {
		return mapper.login(loginDto);
	}

	@Override
	@Transactional
	public boolean leave(UserDTO leaveDto) {
		
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		
		String encodedPassword = bCryptPasswordEncoder.encode(leaveDto.getUser_password());
		
		// 12345 => 암호화
		// encoder.matches('12345','dfldfjeofdjl')
		boolean result = false;
		leaveDto.setUser_password(encodedPassword);
		
		if(encoder.matches(leaveDto.getUser_password(), mapper.findByPwd(leaveDto.getUser_id()))) {
			//auth_tbl 과 user_tbl 이 join 되어 있어서 Transactional 을 이용하여 둘다 지움
			mapper.authDelete(leaveDto.getUser_id());
			result = mapper.delete(leaveDto.getUser_id()) > 0 ? true : false;
		}
				
		return result;

	}

	@Override
	@Transactional
	public boolean modify(UserDTO pwdDto) {
		
			BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
			
			String encodedPassword = bCryptPasswordEncoder.encode(pwdDto.getUser_password());
			
			boolean result = false;
			pwdDto.setUser_password(encodedPassword);
			
			if(encoder.matches(pwdDto.getUser_password(), mapper.findByPwd(pwdDto.getUser_id()))) {
				result = mapper.modify(pwdDto.getUser_id()) > 0 ? true : false;
			}
					
			return result;

	}

}
