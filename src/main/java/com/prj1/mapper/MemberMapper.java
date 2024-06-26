package com.prj1.mapper;

import com.prj1.domain.Member;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MemberMapper {
	@Insert("""
            INSERT INTO member
            (email, password, nick_name)
            VALUES (#{email}, #{password}, #{nickName})
            """)
	int insert(Member member);

	@Select("""
            SELECT *
            FROM member
            ORDER BY id DESC
            """)
	List<Member> selectAll();
}