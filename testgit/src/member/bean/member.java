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
	public String joinuspro(memberDTO dto, HttpServletRequest request){
		
	sqlMap.insert("sampleSQL.joinmember", dto);
	String nickname = request.getParameter("nickname");
	
	request.setAttribute("nickname", nickname);
		return "/member/joinuspro.jsp";
	}
	
	
	@RequestMapping("login.now")
	public String login(memberDTO dto, HttpServletRequest request, HttpSession session){
		
		int check=(Integer)sqlMap.queryForObject("sampleSQL.userCheck", dto);
		if(check==1){
			session = request.getSession();
			session.setAttribute("memId", dto.getId());
			request.setAttribute("check",check);
			return "/member/login.jsp";
			
			
		}else{
			request.setAttribute("memberdto", dto);
			request.setAttribute("check",check);
		
		return "/member/login.jsp";
		}
	}
	
	
	@RequestMapping("logout.now")
	public String logout(memberDTO dto, HttpSession session, HttpServletRequest request)throws Exception{
		session = request.getSession();
		session.invalidate();
		return "redirect:firstview.now";
		
	}
	
	@RequestMapping("modify.now")
	public String modify(memberDTO dto, HttpSession session, HttpServletRequest request)throws Exception{
		
		
		
		String id=(String)session.getAttribute("memId");

	
		dto =(memberDTO)sqlMap.queryForObject("sampleSQL.getMember", id);

		request.setAttribute("member", dto);
		
		return "/member/modify.jsp";
		
	}
	
	
	@RequestMapping("modifypro.now")
	public String modifypro(memberDTO dto,HttpSession session, HttpServletRequest request)throws Exception{
		
		String id=(String)session.getAttribute("memId");
		
		String nickname=request.getParameter("nickname");
		String pw=request.getParameter("pw");
		String email=request.getParameter("email");
		
		dto.setId(id);
		dto.setNickname(nickname);
		dto.setPw(pw);
		dto.setEmail(email);
		
		sqlMap.update("sampleSQL.nowUpdate", dto);
		
		return "redirect:main.now";
	}
	
	
	@RequestMapping("delete.now")
	public String delete(memberDTO dto,HttpSession session, HttpServletRequest request)throws Exception{
		
		String id=(String)session.getAttribute("memId");
		
		String pw=request.getParameter("pwcheck");
		String reason=request.getParameter("reason");
		
		dto.setId(id);
		dto.setPw(pw);
		dto.setReason(reason);
		
		int check=(Integer)sqlMap.queryForObject("sampleSQL.userCheck", dto);
		if(check==1){
			sqlMap.delete("sampleSQL.nowDelete", dto);
			sqlMap.insert("sampleSQL.nowReason", dto);
			session = request.getSession();
			session.invalidate();	
			
			request.setAttribute("check",check);
			return "/member/delete.jsp";
		
		
		}else{
			request.setAttribute("check",check);
		
		return "/member/delete.jsp";
		}
		
		}
		

		
	
	
	@RequestMapping("talk.now")
	private String talk(memberDTO dto,HttpSession session, HttpServletRequest request)throws Exception{
		
		
		String id=(String)session.getAttribute("memId");
		dto=(memberDTO)sqlMap.queryForObject("sampleSQL.getMember", id);
		


		request.setAttribute("member", dto);
	
		return "/member/talk.jsp";
}
	
	@RequestMapping("talkpro.now")
	private String talkpro(memberDTO dto,HttpSession session, HttpServletRequest request)throws Exception{
		
		
		String id=(String)session.getAttribute("memId");
		
		String talk=request.getParameter("talk");
		
		dto.setId(id);
		dto.setTalk(talk);
		
		sqlMap.update("sampleSQL.talkUpdate", dto);

	
		return "/member/talk.jsp";
}
	
	}
	

