package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxCategory;
import com.beautifulsoup.youxin.pojo.YxCategoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxCategoryMapper {
    int countByExample(YxCategoryExample example);

    int deleteByExample(YxCategoryExample example);

    int deleteByPrimaryKey(Long id);

    int insert(YxCategory record);

    int insertSelective(YxCategory record);

    List<YxCategory> selectByExample(YxCategoryExample example);

    YxCategory selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") YxCategory record, @Param("example") YxCategoryExample example);

    int updateByExample(@Param("record") YxCategory record, @Param("example") YxCategoryExample example);

    int updateByPrimaryKeySelective(YxCategory record);

    int updateByPrimaryKey(YxCategory record);
}