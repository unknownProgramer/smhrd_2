package kr.color.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class InputText {
	private int txt_seq;
	private String txt_content;
	private String regdit_date;
	private int user_seq;
}
