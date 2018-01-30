package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxContent;
import com.beautifulsoup.youxin.pojo.YxContentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxContentMapper {
    int countByExample(YxContentExample example);

    int deleteByExample(YxContentExample example);

    int deleteByPrimaryKey(Long id);

    int insert(YxContent record);

    int insertSelective(YxContent record);

    List<YxContent> selectByExampleWithBLOBs(YxContentExample example);

    List<YxContent> selectByExample(YxContentExample example);

    YxContent selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") YxContent record, @Param("example") YxContentExample example);

    int updateByExampleWithBLOBs(@Param("record") YxContent record, @Param("example") YxContentExample example);

    int updateByExample(@Param("record") YxContent record, @Param("example") YxContentExample example);

    int updateByPrimaryKeySelective(YxContent record);

    int updateByPrimaryKeyWithBLOBs(YxContent record);

    int updateByPrimaryKey(YxContent record);
}