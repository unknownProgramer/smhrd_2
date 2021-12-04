package kr.color.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Palettes {
	private int deep_seq;
	private int text_seq;
	private String deep_color1;
	private String deep_color2;
	private String deep_color3;
	private String deep_color4;
	private String deep_color5;
	private String regdit_date;
	private int user_seq;
}
