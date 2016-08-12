package addMember;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	public String main(memberDTO dto , HttpServletRequest request){
		List <memberDTO> user = (List)sqlMap.queryForList("sampleSQL.userlist");
		request.setAttribute("userlist", user);
		return "/addMember/test.jsp";
	}
	@RequestMapping("addmember_ajax.now")
	public String mainAjax(nowDTO dto , HttpServletRequest request){
		String nickname=request.getParameter("nickname");
		
		nowDTO userinfor = (nowDTO)sqlMap.queryForObject("sampleSQL.userinfor", dto);

		request.setAttribute("userinfor", userinfor);
		return "/addMember/testAjax.jsp";
	}
	
}
