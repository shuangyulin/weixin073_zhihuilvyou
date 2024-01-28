package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JingquhuodongEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JingquhuodongVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JingquhuodongView;


/**
 * 景区活动
 *
 * @author 
 * @email 
 * @date 2021-05-10 13:20:20
 */
public interface JingquhuodongService extends IService<JingquhuodongEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JingquhuodongVO> selectListVO(Wrapper<JingquhuodongEntity> wrapper);
   	
   	JingquhuodongVO selectVO(@Param("ew") Wrapper<JingquhuodongEntity> wrapper);
   	
   	List<JingquhuodongView> selectListView(Wrapper<JingquhuodongEntity> wrapper);
   	
   	JingquhuodongView selectView(@Param("ew") Wrapper<JingquhuodongEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JingquhuodongEntity> wrapper);
   	
}

