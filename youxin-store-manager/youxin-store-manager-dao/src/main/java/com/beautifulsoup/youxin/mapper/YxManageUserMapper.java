package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxManageUser;
import com.beautifulsoup.youxin.pojo.YxManageUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxManageUserMapper {
    int countByExample(YxManageUserExample example);

    int deleteByExample(YxManageUserExample example);

    int deleteByPrimaryKey(Long id);

    int insert(YxManageUser record);

    int insertSelective(YxManageUser record);

    List<YxManageUser> selectByExample(YxManageUserExample example);

    YxManageUser selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") YxManageUser record, @Param("example") YxManageUserExample example);

    int updateByExample(@Param("record") YxManageUser record, @Param("example") YxManageUserExample example);

    int updateByPrimaryKeySelective(YxManageUser record);

    int updateByPrimaryKey(YxManageUser record);
}