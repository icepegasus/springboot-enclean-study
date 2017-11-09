package com.skcc.springboot.user.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.skcc.springboot.user.dao.UserMapper;
import com.skcc.springboot.user.domain.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;



	@Override
	public List<User> selectAll() {
		
		return userMapper.selectAll();
	}

	@Override
	public User selectById(String id) {
		
		User user = userMapper.selectById(id);
		//logger.debug("user : "+user);
		
		return user;
	}

	//spring security 적용 수정
	@Override
	public int insert(User user) {
		
		String rawPassword = user.getPassword();
		String encodePassword = bCryptPasswordEncoder.encode(rawPassword);
		user.setPassword(encodePassword);
		user.setAuthority("USER");
		int result =0;
		
		try {
			
			result= userMapper.insert(user);
			userMapper.createAuthority(user);
			

			
		}catch  (Exception e) {
			e.getMessage();
			e.printStackTrace();
		}
	
		
		return result;
	}

	@Override
	public int update(User user) {
		
		//String rawPassword = user.getPassword();
		//String encodePassword = bCryptPasswordEncoder.encode(rawPassword);
		//user.setPassword(encodePassword);
		
		int result = userMapper.update(user);
		if(result != 1){
			throw new RuntimeException("update error");
		}
		
		return result;
	}
	
	//spring security 적용 수정
	@Override
	public int delete(String id) {
		
		int result =  userMapper.delete(id);
		userMapper.deleteAuthority(id);
		
		return result;
	}

	@Transactional(noRollbackFor = RuntimeException.class)
	@Override
	public void updateWithError(User user) {
		
		userMapper.update(user);
		throw new RuntimeException("update error");
	}

	
	//spring security 추가
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		logger.debug("@@@@ loadUserByUsername() username :   "+username);
		
		User user = userMapper.selectById(username);
		
		
		List<String> string_authorities = userMapper.selectAuthority(username);
		
		logger.debug("@@@@@@ string_authorities : "+string_authorities);
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		
		for(String authority : string_authorities) {
			authorities.add(new SimpleGrantedAuthority(authority));
		}
		//user.setAuthorities(getAuthorities(username));
		
		
		return new org.springframework.security.core.userdetails.User(username, user.getPassword(), authorities);
	}





	

}
