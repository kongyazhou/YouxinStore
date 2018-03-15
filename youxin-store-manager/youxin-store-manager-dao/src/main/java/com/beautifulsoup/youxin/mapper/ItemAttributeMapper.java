package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.ItemAttribute;
import com.beautifulsoup.youxin.pojo.ItemAttributeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ItemAttributeMapper {
    int countByExample(ItemAttributeExample example);

    int deleteByExample(ItemAttributeExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ItemAttribute record);

    int insertSelective(ItemAttribute record);

    List<ItemAttribute> selectByExample(ItemAttributeExample example);

    ItemAttribute selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ItemAttribute record, @Param("example") ItemAttributeExample example);

    int updateByExample(@Param("record") ItemAttribute record, @Param("example") ItemAttributeExample example);

    int updateByPrimaryKeySelective(ItemAttribute record);

    int updateByPrimaryKey(ItemAttribute record);
}