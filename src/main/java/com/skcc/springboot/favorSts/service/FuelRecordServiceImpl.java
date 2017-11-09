package com.skcc.springboot.favorSts.service;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.skcc.springboot.favorSts.dao.FuelRecordMapper;
import com.skcc.springboot.favorSts.domain.FuelRecord;

@Service("FuelRecord")
@Transactional
public class FuelRecordServiceImpl implements FuelRecordService{
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	

	@Autowired
	private FuelRecordMapper FuelRecordMapper;
	

	@Override
	public List<FuelRecord> selectFuelRecord() {
		
		return FuelRecordMapper.selectFuelRecord();
	}	
	
	
}
