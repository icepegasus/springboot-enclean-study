package com.skcc.springboot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.skcc.springboot.user.service.UserService;

@Configuration public class SecurityConfig extends WebSecurityConfigurerAdapter { 
	@Autowired UserService userService; 
	
	@Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
        		.csrf().disable()
                .authorizeRequests()
                    .antMatchers("/resources/**", "/userJoin","/testtts").permitAll()
                    .antMatchers("/h2-console/**").permitAll()
                    .antMatchers("/admin/**").hasAuthority("ADMIN")
                    .anyRequest().authenticated()
                    
                .and()
                   .headers().frameOptions().disable()
                    
                .and()   	
                	.formLogin()
                    .loginPage("/login")
                    .defaultSuccessUrl("/")
                    .permitAll()
                .and()
	                .logout()
	                    .permitAll();			



    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userService).passwordEncoder(bCryptPasswordEncoder());
    }
}


