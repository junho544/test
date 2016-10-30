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

import Now.chat.nowDTO;

@Controller
public class chat {

	@Autowired
	private SqlMapClientTemplate sqlMap;
	
	@RequestMapping("chat.now")
	public String invite(nowDTO dto , HttpServletRequest request,HttpSession session){
		Random rand = new Random();		
		int value = rand.nextInt(100);	
		
		request.setAttribute("random", new Integer(value));
		
		String user_friend = request.getParameter("user_friend");
		String friend_user = request.getParameter("friend_user");
		String id = request.getParameter("id");
		String friend_id = request.getParameter("friend_id");
		
		int bb = 1;
		String count = request.getParameter("count");
		
		request.setAttribute("count", count);
		
		request.setAttribute("bb", new Integer(bb));
		request.setAttribute("friend_user", friend_user);
		request.setAttribute("user_friend", user_friend);
		request.setAttribute("friend_id", friend_id);
		request.setAttribute("id", id);
		
		return "/addMember/returnAjax_chat.jsp";
	}
	
	
	@RequestMapping("hhh.now")
	public String hhh( HttpServletRequest request,HttpSession session){
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
		
		
		
		String count = request.getParameter("count");
		
		request.setAttribute("count", count);
		return "/addMember/returnAjax_friendlist.jsp";
	}
	

	@RequestMapping("message.now")
	public String aas(nowDTO dto, HttpServletRequest request,HttpSession session){
		String msg = request.getParameter("msg");
		String friend_id=request.getParameter("friend_id");
		String id = (String)session.getAttribute("memId");
		
		dto.setId(friend_id);
		nowDTO friendinfor = (nowDTO)sqlMap.queryForObject("sampleSQL.userinfor", dto);
		nowDTO msg_infor = new nowDTO();

		msg_infor.setId(id);
		
		nowDTO userinfor = (nowDTO)sqlMap.queryForObject("sampleSQL.userinfor", msg_infor);
		
		msg_infor.setNickname(userinfor.getNickname());
		msg_infor.setEmail(userinfor.getEmail());
		msg_infor.setImage(userinfor.getFriend_image());
		msg_infor.setFriend_id(friendinfor.getId());
		msg_infor.setFriend_nickname(friendinfor.getNickname());
		msg_infor.setFriend_email(friendinfor.getEmail());
		msg_infor.setFriend_image(friendinfor.getFriend_image());
		msg_infor.setMsg(msg);
		sqlMap.insert("sampleSQL.msg",msg_infor);
		return "/addMember/returnAjax_chat.jsp";
	}

}
	
	
	
	
	

