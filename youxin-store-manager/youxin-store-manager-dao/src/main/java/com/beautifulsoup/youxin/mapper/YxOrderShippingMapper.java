package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxOrderShipping;
import com.beautifulsoup.youxin.pojo.YxOrderShippingExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxOrderShippingMapper {
    int countByExample(YxOrderShippingExample example);

    int deleteByExample(YxOrderShippingExample example);

    int deleteByPrimaryKey(String orderId);

    int insert(YxOrderShipping record);

    int insertSelective(YxOrderShipping record);

    List<YxOrderShipping> selectByExample(YxOrderShippingExample example);

    YxOrderShipping selectByPrimaryKey(String orderId);

    int updateByExampleSelective(@Param("record") YxOrderShipping record, @Param("example") YxOrderShippingExample example);

    int updateByExample(@Param("record") YxOrderShipping record, @Param("example") YxOrderShippingExample example);

    int updateByPrimaryKeySelective(YxOrderShipping record);

    int updateByPrimaryKey(YxOrderShipping record);
}