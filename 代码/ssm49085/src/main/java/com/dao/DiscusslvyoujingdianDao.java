package com.dao;

import com.entity.DiscusslvyoujingdianEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusslvyoujingdianVO;
import com.entity.view.DiscusslvyoujingdianView;


/**
 * 旅游景点评论表
 * 
 * @author 
 * @email 
 * @date 2021-05-10 13:20:20
 */
public interface DiscusslvyoujingdianDao extends BaseMapper<DiscusslvyoujingdianEntity> {
	
	List<DiscusslvyoujingdianVO> selectListVO(@Param("ew") Wrapper<DiscusslvyoujingdianEntity> wrapper);
	
	DiscusslvyoujingdianVO selectVO(@Param("ew") Wrapper<DiscusslvyoujingdianEntity> wrapper);
	
	List<DiscusslvyoujingdianView> selectListView(@Param("ew") Wrapper<DiscusslvyoujingdianEntity> wrapper);

	List<DiscusslvyoujingdianView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusslvyoujingdianEntity> wrapper);
	
	DiscusslvyoujingdianView selectView(@Param("ew") Wrapper<DiscusslvyoujingdianEntity> wrapper);
	
}
