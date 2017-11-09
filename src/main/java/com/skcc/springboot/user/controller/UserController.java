package com.skcc.springboot.user.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ibm.watson.developer_cloud.text_to_speech.v1.TextToSpeech;
import com.ibm.watson.developer_cloud.text_to_speech.v1.model.AudioFormat;
import com.ibm.watson.developer_cloud.text_to_speech.v1.model.Voice;
import com.skcc.springboot.user.domain.User;
import com.skcc.springboot.user.service.UserService;


@Controller
public class UserController {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	public UserService userService;
	


	
	@RequestMapping(value = "/userDetail", method = RequestMethod.GET)
	public String selectById(Map<String, Object> model ){
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    String id = auth.getName();		
		
		logger.debug("selectById() id : "+id);
		List<User> users = new ArrayList<User>();
		
		User user = userService.selectById(id);
		users.add(user);
		
		model.put("users", users);
		
		return "userDetail";
	}
	
	
	@RequestMapping(path = "/userDetail", method = RequestMethod.PUT)
	public String update(User user ,Map<String, Object> model){
		
		/*//로그인ID가져오기
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();*/
			    
			    
		logger.debug("update() user : "+user);
		userService.update(user);
		
		
		return "redirect:/userDetail";
	}
	
	@RequestMapping(path = "/testtts", method = RequestMethod.GET)
	public void ttsTest(Map<String, Object> model,HttpServletResponse response, HttpServletRequest request) throws IOException{
		
		response.setContentType("audio/wav");
		
        String message = request.getParameter("message");    
        OutputStream os = response.getOutputStream();
        
        
        TextToSpeech service = new TextToSpeech();
        service.setEndPoint("https://stream.watsonplatform.net/text-to-speech/api");
		service.setUsernameAndPassword("c89c69eb-e70f-4147-acee-219ab344fdcc", "kE6oH3fnqLgb");
	
		
		List<Voice> voices = service.getVoices().execute();
		//System.out.println(voices);
		
		InputStream is = service.synthesize(message, Voice.EN_LISA,
			    AudioFormat.WAV).execute();
		
		
		//InputStream is =service.synthesize(message, voice);

	        try {
	            copyStream(is, os);
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            os.flush();
	            os.close();

	            is.close();
	        }
		
		
		//return "enclean";
	}
	
	static public void copyStream(InputStream sourceInputStream, OutputStream targetOutputStream) throws Exception {
        int length = 1024;
        byte[] bytes = new byte[length];
        int c;
        int total_bytes = 0;

        while ((c = sourceInputStream.read(bytes)) != -1) {
            total_bytes += c;
            targetOutputStream.write(bytes, 0, c);
        }

        if (sourceInputStream != null) try {
            sourceInputStream.close();
        } catch (Exception e) {
        }
        if (targetOutputStream != null) try {
            targetOutputStream.close();
        } catch (Exception e) {
        }
    }
	
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String testUser(Map<String, Object> model) {
		
		//List<User> users = userService.selectAll();
		
		//logger.debug("users : "+users);
		
		//model.put("users",users);
		model.put("message", "test message");
				
		return "/index";
	}	
	
	
//	
//	@RequestMapping(value = "", method = RequestMethod.GET)
//	public String testUser(Map<String, Object> model) {
//		
//		List<User> users = userService.selectAll();
//		
//		logger.debug("users : "+users);
//		
//		model.put("users",users);
//		model.put("message", "test message");
//				
//		return "/gasStation";
//	}
//	
//	@RequestMapping(value = "", method = RequestMethod.POST)
//	public String insert(User user ,Map<String, Object> model){
//		
//		logger.debug("insert() user : "+user); 
//		userService.insert(user);
//		
//		
//		return "redirect:/test";
//	}
//	
//	@RequestMapping(path = "", method = RequestMethod.PUT)
//	public String update(User user ,Map<String, Object> model){
//		logger.debug("update() user : "+user);
//		userService.update(user);
//		
//		
//		return "redirect:/test";
//	}
//	
	@RequestMapping(path = "/user/{id}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("id") String id){
		userService.delete(id);
		
		return "redirect:/admin";
	}
//	
//	@RequestMapping(path = "/{id}", method = RequestMethod.GET)
//	public String selectById(@PathVariable("id")String id ,Map<String, Object> model ){
//		logger.debug("selectById() id : "+id);
//		List<User> users = new ArrayList<User>();
//		
//		User user = userService.selectById(id);
//		users.add(user);
//		
//		model.put("user", user);
//		
//		return "/UserDetail";
//	}

}
