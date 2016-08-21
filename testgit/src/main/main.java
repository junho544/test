package main;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import Now.DTO.Boast_commentDTO;
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
		
		
		String id=(String)session.getAttribute("memId");
		System.out.println(id);
		dto=(memberDTO)sqlMap.queryForObject("sampleSQL.getMember", id);
		
		
		String pageNum=request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum = "1";
		}


		request.setAttribute("member", dto);
		request.setAttribute("pageNum",pageNum);
		
		
		return "/main/main.jsp";
	}
	
	
	
	@RequestMapping(value="boast_comment.now")
	public String commentBoard( HttpServletRequest request,HttpSession session,@RequestBody String data) throws Exception {
		
		
		String id=(String)session.getAttribute("memId");
		
		String nickname=(String)sqlMap.queryForObject("sampleSQL.getNick", id);

//*****************************************************************
		
		JSONObject json=new JSONObject();
		json = (JSONObject) JSONValue.parse(data);
		System.out.println("data="+data);
		String comment=(String)json.get("comment");
		
		if(comment != null){
			Boast_commentDTO commentDTO=new Boast_commentDTO();
			commentDTO.setBoast_comment(comment);
			commentDTO.setBoast_comment(commentDTO.getBoast_comment().replace("\r\n", "<br>"));		
			commentDTO.setNickname(nickname);
			sqlMap.insert("insertB_comment",commentDTO);
			}	
		
			String pageNum ="1";
			
			if (pageNum == null) {
				pageNum = "1";
			}
			int pageSize = 100;
			int currentPage = Integer.parseInt(pageNum);
			int startRow = (currentPage - 1) * pageSize + 1;
			int endRow = currentPage * pageSize;
			int count = 0;
			int number = 0;
			List articleList=null;
			count = (Integer)sqlMap.queryForObject("B_commentcount");
			HashMap<String, Integer> map = new HashMap<String, Integer>();
			map.put("startRow", startRow);
			map.put("endRow", endRow);
			
			if (count > 0) { // �˻��� ������ �˻�
				articleList =sqlMap.queryForList("getB_comment",map);
			}
			
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("currentPage", new Integer(currentPage));
			request.setAttribute("startRow", new Integer(startRow));
			request.setAttribute("endRow", new Integer(endRow));
			request.setAttribute("count", new Integer(count));
			request.setAttribute("number", new Integer(number));
			request.setAttribute("pageSize", new Integer(pageSize));
			request.setAttribute("list",articleList);
			
		return "/main/boast_comment.jsp";

	
	}

}
