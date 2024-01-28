package com.dao;

import com.entity.DiscussjingquhuodongEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussjingquhuodongVO;
import com.entity.view.DiscussjingquhuodongView;


/**
 * 景区活动评论表
 * 
 * @author 
 * @email 
 * @date 2021-05-10 13:20:21
 */
public interface DiscussjingquhuodongDao extends BaseMapper<DiscussjingquhuodongEntity> {
	
	List<DiscussjingquhuodongVO> selectListVO(@Param("ew") Wrapper<DiscussjingquhuodongEntity> wrapper);
	
	DiscussjingquhuodongVO selectVO(@Param("ew") Wrapper<DiscussjingquhuodongEntity> wrapper);
	
	List<DiscussjingquhuodongView> selectListView(@Param("ew") Wrapper<DiscussjingquhuodongEntity> wrapper);

	List<DiscussjingquhuodongView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussjingquhuodongEntity> wrapper);
	
	DiscussjingquhuodongView selectView(@Param("ew") Wrapper<DiscussjingquhuodongEntity> wrapper);
	
}
