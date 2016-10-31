package message;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import Now.chat.nowDTO;

@Controller
public class message {

	@Autowired
	private SqlMapClientTemplate sqlMap;
	@RequestMapping("messagestore.now")
	public String dopan(nowDTO dto , HttpServletRequest request){		
		String id=request.getParameter("id");
		String friend_id=request.getParameter("friend_id");
		System.out.println(id);
		System.out.println(friend_id);
		
		dto.setId(friend_id);
		List msg = (List)sqlMap.queryForList("sampleSQL.msgcheck",dto);
		request.setAttribute("msg", msg);
		
		return "/message/message.jsp";
	}
}
