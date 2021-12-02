package kr.color.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.color.domain.userInfo;

@Mapper
public interface mainMapper {
	public List<userInfo> mainPage();

}
