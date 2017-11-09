package com.skcc.springboot.user.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skcc.springboot.user.domain.User;
import com.skcc.springboot.user.service.UserService;


@Controller
public class LoginController {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	public UserService userService;
	
	@RequestMapping(path="/admin", method = RequestMethod.GET)
	public String admin(Map<String, Object> model)
	
	{
		List<User> users = userService.selectAll();
		
		logger.debug("users : "+users);
		
		model.put("users",users);
		
		return "admin";
	}
	
	
	@RequestMapping(value = "/userJoin", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "userJoin";
    }

    @RequestMapping(value = "/userJoin", method = RequestMethod.POST )
    public String registration(User user, BindingResult bindingResult, Model model, HttpServletRequest request) {
       // userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "userJoin";
        }
        
        logger.debug("@@@@@@@@@@ user : "+user);
    

        userService.insert(user);
   

        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }
    
    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String welcome(Model model, HttpServletRequest  request) {
    	
    	//로그인ID가져오기
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String id = auth.getName();
	    
	    //user 가져오기
	    User user = userService.selectById(id);
	    
	    request.getSession().setAttribute("loginName",user.getName());

	    
        return "enclean";
    }

}
