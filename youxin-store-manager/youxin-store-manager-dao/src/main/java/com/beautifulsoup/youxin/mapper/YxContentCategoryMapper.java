package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxContentCategory;
import com.beautifulsoup.youxin.pojo.YxContentCategoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxContentCategoryMapper {
    int countByExample(YxContentCategoryExample example);

    int deleteByExample(YxContentCategoryExample example);

    int deleteByPrimaryKey(Long id);

    int insert(YxContentCategory record);

    int insertSelective(YxContentCategory record);

    List<YxContentCategory> selectByExample(YxContentCategoryExample example);

    YxContentCategory selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") YxContentCategory record, @Param("example") YxContentCategoryExample example);

    int updateByExample(@Param("record") YxContentCategory record, @Param("example") YxContentCategoryExample example);

    int updateByPrimaryKeySelective(YxContentCategory record);

    int updateByPrimaryKey(YxContentCategory record);
}