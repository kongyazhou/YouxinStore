package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxContentCategoryImage;
import com.beautifulsoup.youxin.pojo.YxContentCategoryImageExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxContentCategoryImageMapper {
    int countByExample(YxContentCategoryImageExample example);

    int deleteByExample(YxContentCategoryImageExample example);

    int deleteByPrimaryKey(Long id);

    int insert(YxContentCategoryImage record);

    int insertSelective(YxContentCategoryImage record);

    List<YxContentCategoryImage> selectByExample(YxContentCategoryImageExample example);

    YxContentCategoryImage selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") YxContentCategoryImage record, @Param("example") YxContentCategoryImageExample example);

    int updateByExample(@Param("record") YxContentCategoryImage record, @Param("example") YxContentCategoryImageExample example);

    int updateByPrimaryKeySelective(YxContentCategoryImage record);

    int updateByPrimaryKey(YxContentCategoryImage record);
}