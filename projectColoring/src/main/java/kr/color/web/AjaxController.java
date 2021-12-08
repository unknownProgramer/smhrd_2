package kr.color.web;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.color.domain.Palettes;
import kr.color.mapper.mainMapper;

@RestController
public class AjaxController {
	
	@Autowired
	mainMapper mapper;
	
	@RequestMapping("/genPalette.do")
	public List<Palettes> genPalette(String inputText) {
		System.out.println("입력 받은 값 : "+ inputText);
		List<Palettes> palettes = mapper.genPalette(inputText);
		Collections.shuffle(palettes);
		return palettes;
	}
}
