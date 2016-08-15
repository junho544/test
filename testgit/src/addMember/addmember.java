package addMember;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import Now.DTO.memberDTO;
import Now.chat.nowDTO;

@Controller
public class addmember {

	
	@Autowired
	private SqlMapClientTemplate sqlMap;
	
	@RequestMapping("addmember.now")
	public String main(memberDTO dto , HttpServletRequest request,HttpSession session){
		String id=(String)session.getAttribute("memId");
		dto.setId(id);
		List <memberDTO> user = (List)sqlMap.queryForList("sampleSQL.userlist");
		request.setAttribute("userlist", user);
		return "/addMember/test.jsp";
	}
	@RequestMapping("addmember_ajax.now")
	public String mainAjax(nowDTO dto , HttpServletRequest request){
		String id=request.getParameter("id");
		
		nowDTO userinfor = (nowDTO)sqlMap.queryForObject("sampleSQL.userinfor", dto);
		
		request.setAttribute("userinfor", userinfor);
		return "/addMember/testAjax.jsp";
	}
	
	@RequestMapping("addmember_ajax_wait.now")
	public String mainAjax_addwait(nowDTO dto , HttpServletRequest request){
		String id=request.getParameter("id");
		String nickname=request.getParameter("nickname");
		String email=request.getParameter("email");
		String friend_nickname =request.getParameter("friend_nickname");
		String friend_email =request.getParameter("friend_email");
		System.out.println(friend_nickname);
		System.out.println(friend_email);
		System.out.println(email);
		
		sqlMap.insert("sampleSQL.addwait",dto);
		
		
		return "/addMember/testAjax.jsp";
	}
	
}
