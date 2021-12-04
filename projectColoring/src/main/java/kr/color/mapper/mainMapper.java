package kr.color.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.color.domain.UserInfo;

@Mapper
public interface mainMapper {
	public List<UserInfo> mainPage();

}
