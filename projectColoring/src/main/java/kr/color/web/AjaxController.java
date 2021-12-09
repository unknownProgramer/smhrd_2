package kr.color.web;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.color.domain.Palettes;
import kr.color.domain.UserInfo;
import kr.color.domain.userPalettes;
import kr.color.mapper.mainMapper;

@RestController
public class AjaxController {

	@Autowired
	mainMapper mapper;

	// 팔레트 생성하기
	@RequestMapping("/genPalette.do")
	public List<Palettes> genPalette(String inputText) {
		System.out.println("입력 받은 값 : " + inputText);
		List<Palettes> palettes = mapper.genPalette(inputText);
		Collections.shuffle(palettes);
		return palettes;
	}

	// 내정보에 저장한 팔레트 불러오기
	@RequestMapping("/getMyPalettes.do")
	public List<userPalettes> main(int user_seq) {
		List<userPalettes> list = mapper.getMyPalettes(user_seq);
		return list;
	}
}
