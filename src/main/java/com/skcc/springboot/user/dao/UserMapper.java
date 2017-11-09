package com.skcc.springboot.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.skcc.springboot.user.domain.User;

/**
 * @author HyunSub Shim
 * @since 1.0
 */
@Mapper
@Repository
public interface UserMapper {

    List<User> selectAll();

    User selectById(@Param("id")String id);

    int insert(User user);

    int update(User user);

    int delete(String id);
    
    //spring security 추가
    public List<String> selectAuthority(String id);
    
    public void createAuthority(User user);
    public void deleteAuthority(String id);

    
}