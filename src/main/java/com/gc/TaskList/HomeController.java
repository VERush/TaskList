package com.gc.TaskList;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.gc.TaskList.dao.TaskDao;
import com.gc.TaskList.dao.UserDao;
import com.gc.TaskList.entity.Task;
import com.gc.TaskList.entity.User;

@Controller
@SessionAttributes({"userid"})
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
	public ModelAndView login (@RequestParam("name") String name, @RequestParam("password") String password, Model model) {
		User u1 = u.findByName(name, password);
		if(u1 ==null) {
			return new ModelAndView("index","User", "Match not found, Please reenter or register");
		}
		if(u1.getPassword().equals(password)) {
			List<Task> tasks = t.listByUserId(u1.getUserid());
			model.addAttribute("userid", u1.getUserid());
			return new ModelAndView("tasklist", "tasks", tasks);
		}
		return new ModelAndView("index");
	}
	@RequestMapping("signup")
	public ModelAndView signUp(@RequestParam("name")String name, @RequestParam("email")String email, @RequestParam("password")String password, Model model) {
	User u1 = new User (name, email, password);	
	u.update(u1);
	u1 = u.findByName(name, password);
	model.addAttribute("userid", u1.getUserid());
		return new ModelAndView ("tasklist", "tasks", null);
	}
	@RequestMapping("addtotask")
	public ModelAndView addtotask(@RequestParam("task")String task, @RequestParam("duedate")Date duedate, @RequestParam("userid")int userid, Model model) {
		Task t1 = new Task(userid, task, duedate, false);
		System.out.println(t1);
		t.update(t1); System.out.println(t1);
		List<Task> tasks = t.listByUserId(t1.getUserid());
		model.addAttribute("userid", userid);
		return new ModelAndView("tasklist", "tasks", tasks);
	}
}
