package addMember;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import Now.chat.nowDTO;

@Controller
public class chat {

	@Autowired
	private SqlMapClientTemplate sqlMap;
	
	@RequestMapping("chat.now")
	public String invite(nowDTO dto , HttpServletRequest request,HttpSession session){
		String id=(String)session.getAttribute("memId");
		dto.setFriend_id(id);
		
		int inviteNumber = (Integer)sqlMap.queryForObject("sampleSQL.inviteNumber",dto);
		request.setAttribute("inviteNumber", new Integer(inviteNumber));
		
		List inviteList = (List)sqlMap.queryForList("sampleSQL.inviteList", dto);
		request.setAttribute("inviteList", inviteList);
		
		return "/addMember/returnAjax_chat.jsp";
	}
	
	
	
	
	
	
}
