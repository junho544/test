package addMember;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

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
	public String main(nowDTO msgDTO ,memberDTO dto , HttpServletRequest request,HttpSession session){
		String id=(String)session.getAttribute("memId");
		dto.setId(id);
		List <memberDTO> user = (List)sqlMap.queryForList("sampleSQL.userlist");
		msgDTO.setId(id);
		List msg = (List)sqlMap.queryForList("sampleSQL.msgcheck",msgDTO);
		int msgNum = 
	    (Integer)sqlMap.queryForObject("sampleSQL.msgNum",msgDTO);
		
		request.setAttribute("msgNum", msgNum);
		request.setAttribute("userlist", user);
		request.setAttribute("msg", msg);
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
	
		nowDTO check = new nowDTO();
		check.setId(friend_id);
		check.setFriend_id(id);
		
	
		/*add_search=중복친추막기*/
		int add_search = (Integer)sqlMap.queryForObject("sampleSQL.addwait_search", dto);
		request.setAttribute("add_search", new Integer(add_search));
		
		/*add_search_invite=동시에 친구추가 보내기 방지 ex)해당회원에게 요청이 왔습니다 */
		int add_search_invite = (Integer)sqlMap.queryForObject("sampleSQL.add_searchinvite", check);
		request.setAttribute("add_search_invite", new Integer(add_search_invite));
		
		/*addmember_wait 테이블에서 중복추가 방지*/
		if(add_search!=0){		
			
			
		}else{
			if(add_search_invite==0){
			sqlMap.insert("sampleSQL.addwait",add);
			}
		}

		return "/addMember/addcheck.jsp";
	}
	
	@RequestMapping("accept.now")
	public String accept(HttpServletRequest request,HttpSession session, Object nowDTO){
		nowDTO add = new nowDTO();
		nowDTO dto = new nowDTO();
		String id = (String)session.getAttribute("memId");
		String friend_id=request.getParameter("friend_id");
		
		dto.setId(id);
		add.setId(friend_id);
		
		nowDTO search = (nowDTO)sqlMap.queryForObject("sampleSQL.userinfor",dto);
		nowDTO searchF = (nowDTO)sqlMap.queryForObject("sampleSQL.userinfor",add);
		
		int friendcheck =(Integer)sqlMap.queryForObject("sampleSQL.friendcheck",dto);
		
		
		dto.setNickname(search.getNickname());
		dto.setEmail(search.getEmail());
		dto.setImage(search.getImage());
		dto.setFriend_id(friend_id);
		dto.setFriend_nickname(searchF.getNickname());
		dto.setFriend_email(searchF.getEmail());
		dto.setFriend_image(searchF.getImage());
		
		add.setNickname(searchF.getNickname());
		add.setEmail(searchF.getEmail());
		add.setImage(searchF.getImage());
		
		add.setFriend_id(id);
		add.setFriend_nickname(search.getNickname());
		add.setFriend_email(search.getEmail());
		add.setFriend_image(search.getImage());
	
		
		if(friendcheck==0){
		nowDTO accptId=(nowDTO)sqlMap.insert("sampleSQL.addMe",dto);
		nowDTO accptFId=(nowDTO)sqlMap.insert("sampleSQL.addFriend",add);
			 sqlMap.delete("sampleSQL.deleteMe",dto);  
			 sqlMap.delete("sampleSQL.deleteFriend",add); 
		}
		request.setAttribute("friendcheck", new Integer(friendcheck));	 
		return "/addMember/acceptCheck.jsp";
	}
	@RequestMapping("friendlist.now")
	public String friendlist(HttpServletRequest request,HttpSession session, Object nowDTO){
		nowDTO dto = new nowDTO();
		List <nowDTO>friendInfor = new ArrayList();
		
		String id = (String)session.getAttribute("memId");
		dto.setId(id);
		nowDTO userinfor = (nowDTO)sqlMap.queryForObject("sampleSQL.userinfor", dto);
		List friendList = (List)sqlMap.queryForList("sampleSQL.friendList",dto);
		
		
		for(int i =0; i<friendList.size();i++){
		
		nowDTO app = new nowDTO();
		app.setId(((Now.chat.nowDTO) friendList.get(i)).getFriend_id());
		nowDTO friend = (nowDTO)sqlMap.queryForObject("sampleSQL.userinfor", app);
		/*System.out.println(friend.getTalk());*/
		friendInfor.add(friend);
		
		}
		
		
		request.setAttribute("friendInfor",friendInfor);
		request.setAttribute("userinfor",userinfor);
		
		return "/addMember/friendList.jsp";
	}
	
	@RequestMapping("addmember_ajax_infor.now")
	public String mainAjaxinfor(nowDTO dto , HttpServletRequest request){
		String id=request.getParameter("id");
		
		nowDTO userinfor = (nowDTO)sqlMap.queryForObject("sampleSQL.userinfor", dto);
		
		request.setAttribute("userinfor", userinfor);
		
		return "/addMember/returnAjax_write.jsp";
	}
	
}
