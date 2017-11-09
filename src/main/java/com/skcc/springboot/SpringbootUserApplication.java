package com.skcc.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.web.filter.HiddenHttpMethodFilter;

@SpringBootApplication
public class SpringbootUserApplication extends SpringBootServletInitializer{
	
	


	public static void main(String[] args) {
		SpringApplication.run(SpringbootUserApplication.class, args);
	}
	
	
	
	/**
     * HiddenHttpMethodFilter  
     */
    @Bean	
    public HiddenHttpMethodFilter hiddenHttpMethodFilter(){
        HiddenHttpMethodFilter filter = new HiddenHttpMethodFilter();
        return filter;
    }



}
