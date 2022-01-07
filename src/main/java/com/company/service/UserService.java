package com.company.service;

import com.company.domain.PwdDTO;
import com.company.domain.UserDTO;

public interface UserService {
	public boolean register(UserDTO userDto);
	public UserDTO dupId(String user_id);
	public PwdDTO login(PwdDTO loginDto);
	public boolean leave(UserDTO leaveDto);
	public boolean modify(UserDTO pwdDto);

}
