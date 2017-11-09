package com.skcc.springboot.favorSts.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.skcc.springboot.favorSts.domain.FuelRecord;

/**
 * @author HyunSub Shim
 * @since 1.0
 */
@Mapper
@Repository
public interface FuelRecordMapper {

    List<FuelRecord> selectFuelRecord();


    
}