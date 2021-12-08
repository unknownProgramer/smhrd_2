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
		System.out.println("회원가입 완료. 아이디:"+vo.getUser_id());
		if(vo!=null) {
			session.setAttribute("userVO", vo);
		}
		return "main";
	}
	
	//로그인
	@RequestMapping("/Login.do")
	public String login(UserInfo vo, HttpSession session) {
		UserInfo userVO=mapper.login(vo);
		System.out.println(vo.getUser_id());
		System.out.println(vo.getUser_pwd());
		if(userVO!=null) {
			System.out.println("로그인 성공");
			session.setAttribute("userVO", userVO);
		}else {
			System.out.println("로그인 실패");
		}
		return "redirect:/";
	}
	
	//로그아웃
	@RequestMapping("/Logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
