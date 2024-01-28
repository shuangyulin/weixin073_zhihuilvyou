package com.dao;

import com.entity.JingquhuodongEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JingquhuodongVO;
import com.entity.view.JingquhuodongView;


/**
 * 景区活动
 * 
 * @author 
 * @email 
 * @date 2021-05-10 13:20:20
 */
public interface JingquhuodongDao extends BaseMapper<JingquhuodongEntity> {
	
	List<JingquhuodongVO> selectListVO(@Param("ew") Wrapper<JingquhuodongEntity> wrapper);
	
	JingquhuodongVO selectVO(@Param("ew") Wrapper<JingquhuodongEntity> wrapper);
	
	List<JingquhuodongView> selectListView(@Param("ew") Wrapper<JingquhuodongEntity> wrapper);

	List<JingquhuodongView> selectListView(Pagination page,@Param("ew") Wrapper<JingquhuodongEntity> wrapper);
	
	JingquhuodongView selectView(@Param("ew") Wrapper<JingquhuodongEntity> wrapper);
	
}
