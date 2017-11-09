package com.skcc.springboot.favorSts.service;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.skcc.springboot.favorSts.dao.FavorStsMapper;
import com.skcc.springboot.favorSts.domain.FavorSts;

@Service("favorService")
@Transactional
public class FavorServiceImpl implements FavorService{
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private FavorStsMapper favorStsMapper;
	

	@Override
	public List<FavorSts> selectAllFavor() {
		
		return favorStsMapper.selectAllFavor();
	}

	@Override
	public List<FavorSts> selectFavorById(String id) {
		
		return favorStsMapper.selectFavorById(id);		
	}
	
	@Override
	public int insertFavor(FavorSts favorSts) {
		
		return favorStsMapper.insertFavor(favorSts);		
	}
	
	@Override
	public int deleteFavor(FavorSts favorSts) {
		
		return favorStsMapper.deleteFavor(favorSts);		
	}	
	
	

}
