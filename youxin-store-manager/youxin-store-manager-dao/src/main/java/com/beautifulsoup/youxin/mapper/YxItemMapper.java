package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxItem;
import com.beautifulsoup.youxin.pojo.YxItemExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxItemMapper {
    int countByExample(YxItemExample example);

    int deleteByExample(YxItemExample example);

    int deleteByPrimaryKey(Long id);

    int insert(YxItem record);

    int insertSelective(YxItem record);

    List<YxItem> selectByExampleWithBLOBs(YxItemExample example);

    List<YxItem> selectByExample(YxItemExample example);

    YxItem selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") YxItem record, @Param("example") YxItemExample example);

    int updateByExampleWithBLOBs(@Param("record") YxItem record, @Param("example") YxItemExample example);

    int updateByExample(@Param("record") YxItem record, @Param("example") YxItemExample example);

    int updateByPrimaryKeySelective(YxItem record);

    int updateByPrimaryKeyWithBLOBs(YxItem record);

    int updateByPrimaryKey(YxItem record);
}