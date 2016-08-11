package member.bean;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import Now.DTO.memberDTO;


@Controller
public class member {
	
	@Autowired
	private SqlMapClientTemplate sqlMap;
	
	@RequestMapping("joinus.now")
	
	public String joinus(){
		return "/member/joinus.jsp";
	}
	
	
	@RequestMapping("joinuspro.now")
	
	public String joinuspro(memberDTO dto){
		
	sqlMap.insert("sampleSQL.joinmember", dto);
		
		return "/member/joinus.jsp";
	}

}