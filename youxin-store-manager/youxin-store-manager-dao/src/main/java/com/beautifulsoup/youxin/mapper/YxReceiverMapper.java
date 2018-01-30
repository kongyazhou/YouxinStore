package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxReceiver;
import com.beautifulsoup.youxin.pojo.YxReceiverExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxReceiverMapper {
    int countByExample(YxReceiverExample example);

    int deleteByExample(YxReceiverExample example);

    int deleteByPrimaryKey(String addrId);

    int insert(YxReceiver record);

    int insertSelective(YxReceiver record);

    List<YxReceiver> selectByExample(YxReceiverExample example);

    YxReceiver selectByPrimaryKey(String addrId);

    int updateByExampleSelective(@Param("record") YxReceiver record, @Param("example") YxReceiverExample example);

    int updateByExample(@Param("record") YxReceiver record, @Param("example") YxReceiverExample example);

    int updateByPrimaryKeySelective(YxReceiver record);

    int updateByPrimaryKey(YxReceiver record);
}