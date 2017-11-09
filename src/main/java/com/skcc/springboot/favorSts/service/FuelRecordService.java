package com.skcc.springboot.favorSts.service;

import java.util.List;

import com.skcc.springboot.favorSts.domain.FuelRecord;


public interface FuelRecordService {


	List<FuelRecord> selectFuelRecord();
}
