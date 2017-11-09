package com.skcc.springboot.user.service;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.skcc.springboot.user.domain.User;

public interface UserService extends UserDetailsService{

    List<User> selectAll();

    User selectById(String id);

    int insert(User user);

    int update(User user);

    int delete(String id);
    
    void updateWithError(User user);
    


}
