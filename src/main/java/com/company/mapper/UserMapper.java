
package com.company.mapper;

import org.apache.ibatis.annotations.Param;

import com.company.domain.LoginDTO;
import com.company.domain.UserDTO;

public interface UserMapper {
	public int insert(UserDTO userDto);
	public UserDTO selectById(String user_id);
	public LoginDTO login(LoginDTO loginDto);
	public UserDTO signin(String user_id);
	public int auth(@Param("user_id") String user_id,@Param("authority") String authority);
	public int delete(String user_id);
	public String findByPwd(String user_id);
	public int authDelete(String user_id);
}
