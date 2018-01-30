package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxItemParam;
import com.beautifulsoup.youxin.pojo.YxItemParamExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxItemParamMapper {
    int countByExample(YxItemParamExample example);

    int deleteByExample(YxItemParamExample example);

    int deleteByPrimaryKey(Long id);

    int insert(YxItemParam record);

    int insertSelective(YxItemParam record);

    List<YxItemParam> selectByExampleWithBLOBs(YxItemParamExample example);

    List<YxItemParam> selectByExample(YxItemParamExample example);

    YxItemParam selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") YxItemParam record, @Param("example") YxItemParamExample example);

    int updateByExampleWithBLOBs(@Param("record") YxItemParam record, @Param("example") YxItemParamExample example);

    int updateByExample(@Param("record") YxItemParam record, @Param("example") YxItemParamExample example);

    int updateByPrimaryKeySelective(YxItemParam record);

    int updateByPrimaryKeyWithBLOBs(YxItemParam record);

    int updateByPrimaryKey(YxItemParam record);
}