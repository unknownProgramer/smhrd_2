package kr.color.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.color.domain.userInfo;
import kr.color.mapper.mainMapper;

@RestController
public class mainController {

	@Autowired
	mainMapper mapper;
	
	@RequestMapping("/")
	public String main() {
		return "main";
	}

	@RequestMapping("/mainPage.do")
	public String mainPage(Model model) {
		List<userInfo> list = mapper.mainPage();
		model.addAttribute("list", list);
		return "main"; // view 페이지
	}
}
