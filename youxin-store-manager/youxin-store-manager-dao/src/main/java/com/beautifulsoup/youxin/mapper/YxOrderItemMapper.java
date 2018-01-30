package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxOrderItem;
import com.beautifulsoup.youxin.pojo.YxOrderItemExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxOrderItemMapper {
    int countByExample(YxOrderItemExample example);

    int deleteByExample(YxOrderItemExample example);

    int deleteByPrimaryKey(String id);

    int insert(YxOrderItem record);

    int insertSelective(YxOrderItem record);

    List<YxOrderItem> selectByExample(YxOrderItemExample example);

    YxOrderItem selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") YxOrderItem record, @Param("example") YxOrderItemExample example);

    int updateByExample(@Param("record") YxOrderItem record, @Param("example") YxOrderItemExample example);

    int updateByPrimaryKeySelective(YxOrderItem record);

    int updateByPrimaryKey(YxOrderItem record);
}