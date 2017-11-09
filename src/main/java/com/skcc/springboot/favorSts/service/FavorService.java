package com.skcc.springboot.favorSts.service;

import java.util.List;

import com.skcc.springboot.favorSts.domain.FavorSts;

public interface FavorService {

    List<FavorSts> selectAllFavor();

    List<FavorSts> selectFavorById(String id);
    
    int insertFavor(FavorSts favorSts);
    
    int deleteFavor(FavorSts favorSts);
}
