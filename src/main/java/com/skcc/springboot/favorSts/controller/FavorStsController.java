package com.skcc.springboot.favorSts.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skcc.springboot.favorSts.domain.FavorSts;
import com.skcc.springboot.favorSts.domain.Stations;
import com.skcc.springboot.favorSts.service.FavorService;
import com.skcc.springboot.favorSts.service.StationService;
import com.skcc.springboot.user.domain.User;
import com.skcc.springboot.user.service.UserService;



@Controller
@RequestMapping("/favor")
public class FavorStsController {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());



	@Autowired
	public FavorService favorService;
	@Autowired
	public StationService Stations;	
	@Autowired
	public UserService userService;	


//	
//	@RequestMapping(path = "/{id}", method = RequestMethod.GET)
//	public String selectFavorById(@PathVariable("id")String id ,Map<String, Object> model ){
//		logger.debug("selectFavorById() id : "+id);
//		
//		List<FavorSts> myFavorStsList = favorService.selectFavorById(id);
//		
//		logger.debug("myFavorStsList : "+ myFavorStsList);
//		
//		
//		model.put("myFavorStsList", myFavorStsList);
//		
//		return "/favorStationMng";
//	}	
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String insertFavor(@RequestParam(value = "insFavorList[]") List<String> insFavorList, 
			@RequestParam(value = "type") String type) {

		logger.debug("단골주유소 등록/삭제 주유소코드 리스트: "+insFavorList+" , type : "+type);
		
		FavorSts favorSts = new FavorSts();
		Stations stations = new Stations();
		
		//로그인ID가져오기
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String id = auth.getName();
		
		//등록할 단골 주유수 만큼 loop (화면에서 checked된 갯수 만큼)
		for(int i=0; i<insFavorList.size(); i++ ) {
			
			if(type.equals("1")) { //단골등록
			
				//주유소코드로 주유소정보 가져와서 FavorSts domain 으로 bind
				List<Stations> stationlist = Stations.selectStationById(insFavorList.get(i));
				stations = stationlist.get(0);
				
				favorSts.setId(id);
				favorSts.setSid(stations.getSid());
				favorSts.setSname(stations.getSname());
				favorSts.setPhonenumber(stations.getSphonenumber());
				favorSts.setSowner(stations.getSowner());
				favorSts.setAddress(stations.getSaddress());
				
				logger.debug("insertFavor loop index :" +i+", favorSts : "+favorSts);
				//단골주유소 등록
				favorService.insertFavor(favorSts);
			
			}else {	//단골삭제
				favorSts.setId(id);
				favorSts.setSid(insFavorList.get(i));
				
				logger.debug("deleteFavor loop index :" +i+", favorSts : "+favorSts);
				//단골주유소 삭제
				favorService.deleteFavor(favorSts);
			}
			
		}
		
		
		return "redirect:/favor";
	}
	
	


	@RequestMapping(value = "", method = RequestMethod.GET)
	public String selectAllStation(Map<String, Object> model) {
		
		//로그인한 user id 찾기 --> 몇칭은 name 이지만 실제 우리 USER에서는 id임
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String id = auth.getName();
	    
	    logger.debug("login user id : "+id);
	    
		//주유소리스트 가져오기
		List<Stations> stationlist = Stations.selectAllStation();
		
		
		
		logger.debug("stationlist : "+stationlist);
		
		//단골주유소 리스트 가져오기
		List<FavorSts> myFavorStsList = favorService.selectFavorById(id);
		
		//user 가져오기
		User user = userService.selectById(id);
		
		logger.debug("myFavorStsList : "+ myFavorStsList);
		
		model.put("stationlist",stationlist);
		model.put("myFavorStsList", myFavorStsList);
		model.put("loginName", user.getName());
		
				
		return "/favorStationMng";
	}
	
	
	
	@RequestMapping(path = "/{sname}", method = RequestMethod.GET)
	public String selectStationByName(@PathVariable("sname") String sname, Map<String, Object> model) {
		
		
		

	    
		//이름으로 주유소리스트 가져오기
	    List<Stations> stationlist = Stations.selectStationByName(sname);	
		
		
		logger.debug("stationlist : "+stationlist);
		
		
		/* user이름과 단골주유소 조회 - 공통처리 */
		//로그인한 user id 찾기 --> 몇칭은 name 이지만 실제 우리 USER에서는 id임
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String id = auth.getName();
	    
	    logger.debug("login user id : "+id);		
		
		//단골주유소 리스트 가져오기
		List<FavorSts> myFavorStsList = favorService.selectFavorById(id);
		
		//user 가져오기
		User user = userService.selectById(id);
		
		logger.debug("myFavorStsList : "+ myFavorStsList);
		
		model.put("stationlist",stationlist);
		model.put("myFavorStsList", myFavorStsList);
		model.put("loginName", user.getName());
		
				
		return "/favorStationMng";		
		
		
		
	}	

}
