package com.skcc.springboot.favorSts.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.skcc.springboot.favorSts.domain.FavorSts;

/**
 * @author HyunSub Shim
 * @since 1.0
 */
@Mapper
@Repository
public interface FavorStsMapper {

    List<FavorSts> selectAllFavor();

    List<FavorSts> selectFavorById(@Param("id")String id);
    
    int insertFavor(FavorSts favorSts);
    
    int deleteFavor(FavorSts favorSts);

    
}