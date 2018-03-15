package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxBrandCategory;
import com.beautifulsoup.youxin.pojo.YxBrandCategoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxBrandCategoryMapper {
    int countByExample(YxBrandCategoryExample example);

    int deleteByExample(YxBrandCategoryExample example);

    int deleteByPrimaryKey(Long id);

    int insert(YxBrandCategory record);

    int insertSelective(YxBrandCategory record);

    List<YxBrandCategory> selectByExample(YxBrandCategoryExample example);

    YxBrandCategory selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") YxBrandCategory record, @Param("example") YxBrandCategoryExample example);

    int updateByExample(@Param("record") YxBrandCategory record, @Param("example") YxBrandCategoryExample example);

    int updateByPrimaryKeySelective(YxBrandCategory record);

    int updateByPrimaryKey(YxBrandCategory record);
}