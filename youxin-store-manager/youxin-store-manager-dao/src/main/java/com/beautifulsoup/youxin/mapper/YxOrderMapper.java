package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxOrder;
import com.beautifulsoup.youxin.pojo.YxOrderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxOrderMapper {
    int countByExample(YxOrderExample example);

    int deleteByExample(YxOrderExample example);

    int deleteByPrimaryKey(Long id);

    int insert(YxOrder record);

    int insertSelective(YxOrder record);

    List<YxOrder> selectByExample(YxOrderExample example);

    YxOrder selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") YxOrder record, @Param("example") YxOrderExample example);

    int updateByExample(@Param("record") YxOrder record, @Param("example") YxOrderExample example);

    int updateByPrimaryKeySelective(YxOrder record);

    int updateByPrimaryKey(YxOrder record);
}