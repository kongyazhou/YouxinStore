package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxOrderStatus;
import com.beautifulsoup.youxin.pojo.YxOrderStatusExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxOrderStatusMapper {
    int countByExample(YxOrderStatusExample example);

    int deleteByExample(YxOrderStatusExample example);

    int deleteByPrimaryKey(Long id);

    int insert(YxOrderStatus record);

    int insertSelective(YxOrderStatus record);

    List<YxOrderStatus> selectByExample(YxOrderStatusExample example);

    YxOrderStatus selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") YxOrderStatus record, @Param("example") YxOrderStatusExample example);

    int updateByExample(@Param("record") YxOrderStatus record, @Param("example") YxOrderStatusExample example);

    int updateByPrimaryKeySelective(YxOrderStatus record);

    int updateByPrimaryKey(YxOrderStatus record);
}