package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxUser;
import com.beautifulsoup.youxin.pojo.YxUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxUserMapper {
    int countByExample(YxUserExample example);

    int deleteByExample(YxUserExample example);

    int deleteByPrimaryKey(Long id);

    int insert(YxUser record);

    int insertSelective(YxUser record);

    List<YxUser> selectByExample(YxUserExample example);

    YxUser selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") YxUser record, @Param("example") YxUserExample example);

    int updateByExample(@Param("record") YxUser record, @Param("example") YxUserExample example);

    int updateByPrimaryKeySelective(YxUser record);

    int updateByPrimaryKey(YxUser record);
}