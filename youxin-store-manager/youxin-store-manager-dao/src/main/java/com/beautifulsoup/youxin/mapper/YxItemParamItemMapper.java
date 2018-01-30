package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxItemParamItem;
import com.beautifulsoup.youxin.pojo.YxItemParamItemExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxItemParamItemMapper {
    int countByExample(YxItemParamItemExample example);

    int deleteByExample(YxItemParamItemExample example);

    int deleteByPrimaryKey(Long id);

    int insert(YxItemParamItem record);

    int insertSelective(YxItemParamItem record);

    List<YxItemParamItem> selectByExampleWithBLOBs(YxItemParamItemExample example);

    List<YxItemParamItem> selectByExample(YxItemParamItemExample example);

    YxItemParamItem selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") YxItemParamItem record, @Param("example") YxItemParamItemExample example);

    int updateByExampleWithBLOBs(@Param("record") YxItemParamItem record, @Param("example") YxItemParamItemExample example);

    int updateByExample(@Param("record") YxItemParamItem record, @Param("example") YxItemParamItemExample example);

    int updateByPrimaryKeySelective(YxItemParamItem record);

    int updateByPrimaryKeyWithBLOBs(YxItemParamItem record);

    int updateByPrimaryKey(YxItemParamItem record);
}