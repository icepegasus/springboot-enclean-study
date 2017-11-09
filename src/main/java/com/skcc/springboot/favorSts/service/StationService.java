package com.skcc.springboot.favorSts.service;

import java.util.List;

import com.skcc.springboot.favorSts.domain.Stations;


public interface StationService {

    List<Stations> selectAllStation();

    List<Stations> selectStationById(String sid);
    
    List<Stations> selectStationByName(String sname);    

    
}
