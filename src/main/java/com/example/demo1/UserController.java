package com.example.demo1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
	
	@Autowired
	private JdbcTemplate template;
	
	@GetMapping("register")
	public String register() {
		return "register.jsp";
	}
	
	@PostMapping("register")
	public String registerUser(@ModelAttribute User user, Model model) {
		String checkUser = "select count(*) from users where phone = ?";
		Integer status = template.queryForObject(checkUser, Integer.class, user.getPhone());
		
		if (status > 0) {
			model.addAttribute("error", "user already registered");
			return "error.jsp";
		} else {
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			String hashedPassword = encoder.encode(user.getPassword());
			
			String sql = "insert into users (name, phone, email, password, gender, location) values (?,?,?,?,?,?)";
			template.update(sql, user.getName(), user.getPhone(), user.getEmail(), hashedPassword, user.getGender(), user.getLocation());
			return "index.jsp";
		}
	}
	
	
}
