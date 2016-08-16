package addMember;

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
		Random rand = new Random();		//...(2)
		int value = rand.nextInt(100);	//...(3)
		System.out.println(value);
		request.setAttribute("random", new Integer(value));
		
		String id = request.getParameter("id");
		String friend_id = request.getParameter("friend_id");
		
		request.setAttribute("friend_id", friend_id);
		request.setAttribute("id", id);
		return "/addMember/returnAjax_chat.jsp";
	}
	
	
	
	
	
	
}
