package com.skcc.springboot.favorSts.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skcc.springboot.favorSts.domain.FuelRecord;
import com.skcc.springboot.favorSts.service.FuelRecordService;

@Controller
@RequestMapping("/oilDealInfo")
public class FuelRecordController {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());


	@Autowired
	public FuelRecordService FuelRecord;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String selectFuelRecord(Map<String, Object> model) {
		
		List<FuelRecord> fuelRecordList = FuelRecord.selectFuelRecord();
		
		logger.debug("fuelRecordList : "+fuelRecordList);
		
		model.put("fuelRecordList",fuelRecordList);
		//model.put("message", "test message");
				
		return "oilDealInfo";
	}
}

