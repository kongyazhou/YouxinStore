package com.beautifulsoup.youxin.mapper;

import com.beautifulsoup.youxin.pojo.YxComment;
import com.beautifulsoup.youxin.pojo.YxCommentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface YxCommentMapper {
    int countByExample(YxCommentExample example);

    int deleteByExample(YxCommentExample example);

    int deleteByPrimaryKey(Long commentId);

    int insert(YxComment record);

    int insertSelective(YxComment record);

    List<YxComment> selectByExample(YxCommentExample example);

    YxComment selectByPrimaryKey(Long commentId);

    int updateByExampleSelective(@Param("record") YxComment record, @Param("example") YxCommentExample example);

    int updateByExample(@Param("record") YxComment record, @Param("example") YxCommentExample example);

    int updateByPrimaryKeySelective(YxComment record);

    int updateByPrimaryKey(YxComment record);
}