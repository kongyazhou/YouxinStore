package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxItemDesc;
import com.beautifulsoup.youxin.pojo.YxItemDescExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxItemDescMapper {
    int countByExample(YxItemDescExample example);

    int deleteByExample(YxItemDescExample example);

    int deleteByPrimaryKey(Long itemId);

    int insert(YxItemDesc record);

    int insertSelective(YxItemDesc record);

    List<YxItemDesc> selectByExampleWithBLOBs(YxItemDescExample example);

    List<YxItemDesc> selectByExample(YxItemDescExample example);

    YxItemDesc selectByPrimaryKey(Long itemId);

    int updateByExampleSelective(@Param("record") YxItemDesc record, @Param("example") YxItemDescExample example);

    int updateByExampleWithBLOBs(@Param("record") YxItemDesc record, @Param("example") YxItemDescExample example);

    int updateByExample(@Param("record") YxItemDesc record, @Param("example") YxItemDescExample example);

    int updateByPrimaryKeySelective(YxItemDesc record);

    int updateByPrimaryKeyWithBLOBs(YxItemDesc record);

    int updateByPrimaryKey(YxItemDesc record);
}