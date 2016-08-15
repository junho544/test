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
		nowDTO add = new nowDTO();
			String unknown = "unknown";
		String id=request.getParameter("id");
		String friend_nickname =request.getParameter("friend_nickname");
		String friend_id =request.getParameter("friend_id");
		String friend_email =request.getParameter("friend_email");
		String friend_image =request.getParameter("friend_image");

		/*친구추가 눌렀을때 누른사람의 정보 찾기*/
		nowDTO search = (nowDTO)sqlMap.queryForObject("sampleSQL.userinfor",dto);
		/*추가요청한사람*/
		add.setImage(unknown);
		add.setId(id);
		add.setNickname(search.getNickname());
		add.setEmail(search.getEmail());
		/*요청받은사람*/
		add.setFriend_id(friend_id);
		add.setFriend_nickname(friend_nickname);
		add.setFriend_image(unknown);
		add.setFriend_email(friend_email);
		
		int add_search = (Integer)sqlMap.queryForObject("sampleSQL.addwait_search", dto);
		request.setAttribute("add_search", new Integer(add_search));
		/*addmember_wait 테이블에서 중복추가 방지*/
		if(add_search!=0){

		}else{
			sqlMap.insert("sampleSQL.addwait",add);
			
		}
		
		
		
		
		return "/addMember/addcheck.jsp";
	}
	
}
