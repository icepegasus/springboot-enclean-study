package com.skcc.springboot.favorSts.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skcc.springboot.favorSts.domain.Stations;
import com.skcc.springboot.favorSts.service.StationService;



@Controller
@RequestMapping("/station")
public class StationsController {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());


	@Autowired
	public StationService Stations;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String selectAllStation(Map<String, Object> model) {
		
		List<Stations> stationlist = Stations.selectAllStation();
		
		logger.debug("stationlist : "+stationlist);
		
		model.put("stationlist",stationlist);
		
				
		return "/Station_Search";
	}
	
	
	@RequestMapping(path = "/{sname}", method = RequestMethod.GET)
	public String selectStationByName(@PathVariable("sname") String sname, Map<String, Object> model) {
		
		logger.debug("sname :"+ sname);
		
		List<Stations> stationlist = Stations.selectStationByName(sname);
		
		logger.debug("stationlist : "+stationlist);
		
		
		model.put("stationlist",stationlist);
		
				
		return "/Station_Search";
	}
	
	

	
}	
	
