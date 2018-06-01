package com.gc.TaskList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gc.TaskList.dao.TaskDao;
import com.gc.TaskList.dao.UserDao;
import com.gc.TaskList.entity.Task;
import com.gc.TaskList.entity.User;

@Controller
public class HomeController {
	
	@Autowired
	UserDao u; 
	
	@Autowired
	TaskDao t;
	
	@RequestMapping("/")
	public ModelAndView index() {

		return new ModelAndView("index");
	}
	@RequestMapping("signin")
	public ModelAndView login (@RequestParam("name") String name, @RequestParam("password") String inputPass) {
		User u1 = u.findByName(name);
		if(u1 ==null) {
			return new ModelAndView("index","User", "Match not found, Please reenter or register");
		}
		if(u1.getPassword().equals(inputPass)) {
			List<Task> tasks = 
		}
		return new ModelAndView("user");
	}
	
}
