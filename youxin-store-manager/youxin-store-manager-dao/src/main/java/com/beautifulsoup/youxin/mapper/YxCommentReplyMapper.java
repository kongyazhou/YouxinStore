package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxCommentReply;
import com.beautifulsoup.youxin.pojo.YxCommentReplyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxCommentReplyMapper {
    int countByExample(YxCommentReplyExample example);

    int deleteByExample(YxCommentReplyExample example);

    int deleteByPrimaryKey(Long commentReplyId);

    int insert(YxCommentReply record);

    int insertSelective(YxCommentReply record);

    List<YxCommentReply> selectByExample(YxCommentReplyExample example);

    YxCommentReply selectByPrimaryKey(Long commentReplyId);

    int updateByExampleSelective(@Param("record") YxCommentReply record, @Param("example") YxCommentReplyExample example);

    int updateByExample(@Param("record") YxCommentReply record, @Param("example") YxCommentReplyExample example);

    int updateByPrimaryKeySelective(YxCommentReply record);

    int updateByPrimaryKey(YxCommentReply record);
}