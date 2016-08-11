package main;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import Now.DTO.memberDTO;


@Controller
public class main {
	
	@Autowired
	private SqlMapClientTemplate sqlMap;
	
	@RequestMapping("firstview.now")
	
	public String firstview(){
		
		return "/main/firstview.jsp";
	}
	
	@RequestMapping("main.now")
	public String main(memberDTO dto, HttpServletRequest request, HttpSession session){
		
		session = request.getSession();
		session.setAttribute("nickname", dto.getNickname());
		
		String nickname=(String)session.getAttribute("memNickname");
		System.out.println(nickname);
		dto.setNickname(nickname);
	
		memberDTO list =(memberDTO)sqlMap.queryForObject("sampleSQL.getMember", dto);

		request.setAttribute("member", list);
		
		
		return "/main/main.jsp";
	}

}
