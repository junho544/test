package main;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class main {
	
	@Autowired
	private SqlMapClientTemplate sqlMap;
	
	@RequestMapping("firstview.now")
	
	public String firstview(){
		
		return "/main/firstview.jsp";
	}

}
