package kr.color.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.color.domain.UserInfo;
import kr.color.mapper.mainMapper;

@Controller
public class mainController {

	@Autowired
	mainMapper mapper;
	
	@RequestMapping("/")
	public String main() {
		return "main";
	}

	@RequestMapping("/mainPage.do")
	public String mainPage(Model model) {
		List<UserInfo> list = mapper.mainPage();
		model.addAttribute("list", list);
		return "redirect:/"; // view 페이지
	}
}
