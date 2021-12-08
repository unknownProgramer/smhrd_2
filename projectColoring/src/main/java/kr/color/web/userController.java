package kr.color.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.color.domain.UserInfo;
import kr.color.mapper.userMapper;

@Controller
public class userController {
	
	@Autowired
	userMapper mapper;
	
	@RequestMapping("/join")
	public String join() {
		return "join";
	}
	
	//회원가입 후 로그인
	@PostMapping("/register.do")
	public String register(UserInfo vo, HttpSession session) {
		mapper.register(vo);
		System.out.println("회원가입 완료. 아이디:"+vo.getUserId());
		if(vo!=null) {
			session.setAttribute("userVO", vo);
		}
		return "main";
	}
	
	//로그인
	@PostMapping("/login.do")
	public String login(UserInfo getVO, HttpSession session) {
		UserInfo userVO=mapper.login(getVO);
		if(userVO!=null) {
			session.setAttribute("userVO", userVO);
		}
		return "main";
	}
	
}
