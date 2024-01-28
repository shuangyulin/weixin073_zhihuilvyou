package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussjingquhuodongEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussjingquhuodongVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussjingquhuodongView;


/**
 * 景区活动评论表
 *
 * @author 
 * @email 
 * @date 2021-05-10 13:20:21
 */
public interface DiscussjingquhuodongService extends IService<DiscussjingquhuodongEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussjingquhuodongVO> selectListVO(Wrapper<DiscussjingquhuodongEntity> wrapper);
   	
   	DiscussjingquhuodongVO selectVO(@Param("ew") Wrapper<DiscussjingquhuodongEntity> wrapper);
   	
   	List<DiscussjingquhuodongView> selectListView(Wrapper<DiscussjingquhuodongEntity> wrapper);
   	
   	DiscussjingquhuodongView selectView(@Param("ew") Wrapper<DiscussjingquhuodongEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussjingquhuodongEntity> wrapper);
   	
}

