package com.skcc.springboot.favorSts.service;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.skcc.springboot.favorSts.dao.StationsMapper;
import com.skcc.springboot.favorSts.domain.Stations;

@Service("Stations")
@Transactional
public class StationServiceImpl implements StationService{
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private StationsMapper StationsMapper;
	

	@Override
	public List<Stations> selectAllStation() {
		
		return StationsMapper.selectAllStation();
	}

	@Override
	public List<Stations> selectStationById(String sid) {		
				
		return StationsMapper.selectStationById(sid);		
	}

	@Override
	public List<Stations> selectStationByName(String sname) {		
				
		return StationsMapper.selectStationByName(sname);		
	}

}
