package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxOrderShipment;
import com.beautifulsoup.youxin.pojo.YxOrderShipmentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxOrderShipmentMapper {
    int countByExample(YxOrderShipmentExample example);

    int deleteByExample(YxOrderShipmentExample example);

    int deleteByPrimaryKey(Long id);

    int insert(YxOrderShipment record);

    int insertSelective(YxOrderShipment record);

    List<YxOrderShipment> selectByExample(YxOrderShipmentExample example);

    YxOrderShipment selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") YxOrderShipment record, @Param("example") YxOrderShipmentExample example);

    int updateByExample(@Param("record") YxOrderShipment record, @Param("example") YxOrderShipmentExample example);

    int updateByPrimaryKeySelective(YxOrderShipment record);

    int updateByPrimaryKey(YxOrderShipment record);
}