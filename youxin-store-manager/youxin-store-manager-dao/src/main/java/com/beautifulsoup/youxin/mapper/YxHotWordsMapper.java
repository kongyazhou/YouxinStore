package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxHotWords;
import com.beautifulsoup.youxin.pojo.YxHotWordsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxHotWordsMapper {
    int countByExample(YxHotWordsExample example);

    int deleteByExample(YxHotWordsExample example);

    int deleteByPrimaryKey(Long id);

    int insert(YxHotWords record);

    int insertSelective(YxHotWords record);

    List<YxHotWords> selectByExample(YxHotWordsExample example);

    YxHotWords selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") YxHotWords record, @Param("example") YxHotWordsExample example);

    int updateByExample(@Param("record") YxHotWords record, @Param("example") YxHotWordsExample example);

    int updateByPrimaryKeySelective(YxHotWords record);

    int updateByPrimaryKey(YxHotWords record);
}