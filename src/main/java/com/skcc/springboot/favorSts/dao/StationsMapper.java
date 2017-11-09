package com.skcc.springboot.favorSts.dao;

import java.util.List;
import com.skcc.springboot.favorSts.domain.Stations;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;


/**
 * @author HyunSub Shim
 * @since 1.0
 */
@Mapper
@Repository
public interface StationsMapper {

    List<Stations> selectAllStation();

    List<Stations> selectStationById(@Param("sid")String sid);
    
    List<Stations> selectStationByName(@Param("sname")String sname);

    
}