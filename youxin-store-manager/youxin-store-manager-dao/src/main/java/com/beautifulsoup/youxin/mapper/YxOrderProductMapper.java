package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxOrderProduct;
import com.beautifulsoup.youxin.pojo.YxOrderProductExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxOrderProductMapper {
    int countByExample(YxOrderProductExample example);

    int deleteByExample(YxOrderProductExample example);

    int deleteByPrimaryKey(Long id);

    int insert(YxOrderProduct record);

    int insertSelective(YxOrderProduct record);

    List<YxOrderProduct> selectByExample(YxOrderProductExample example);

    YxOrderProduct selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") YxOrderProduct record, @Param("example") YxOrderProductExample example);

    int updateByExample(@Param("record") YxOrderProduct record, @Param("example") YxOrderProductExample example);

    int updateByPrimaryKeySelective(YxOrderProduct record);

    int updateByPrimaryKey(YxOrderProduct record);
}