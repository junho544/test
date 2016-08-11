package main_layout.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class layout {
	
	@Autowired
	private SqlMapClientTemplate sqlMap;
	
	@RequestMapping("popup.now")
	public String main(){
		return "/main_layout/mainLayout.jsp";
	}
	
	@RequestMapping("popup_1.now")
	public String main_1(){
		return "/main_layout/popup.jsp";
	}

}
