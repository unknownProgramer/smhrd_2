package kr.color.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.color.domain.UserInfo;

@Mapper
public interface userMapper {
	public void register(UserInfo vo);
	public UserInfo login(UserInfo vo);

}
