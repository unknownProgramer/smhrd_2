package kr.color.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserInfo {
	private int user_seq;
	private String user_id;
	private String user_pwd;
	private String user_name;
	private String user_email;
	private String user_phone;
	private int user_joindate;
	private int adminYn;
}
