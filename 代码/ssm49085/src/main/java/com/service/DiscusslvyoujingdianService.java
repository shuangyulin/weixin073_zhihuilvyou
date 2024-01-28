package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusslvyoujingdianEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusslvyoujingdianVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusslvyoujingdianView;


/**
 * 旅游景点评论表
 *
 * @author 
 * @email 
 * @date 2021-05-10 13:20:20
 */
public interface DiscusslvyoujingdianService extends IService<DiscusslvyoujingdianEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusslvyoujingdianVO> selectListVO(Wrapper<DiscusslvyoujingdianEntity> wrapper);
   	
   	DiscusslvyoujingdianVO selectVO(@Param("ew") Wrapper<DiscusslvyoujingdianEntity> wrapper);
   	
   	List<DiscusslvyoujingdianView> selectListView(Wrapper<DiscusslvyoujingdianEntity> wrapper);
   	
   	DiscusslvyoujingdianView selectView(@Param("ew") Wrapper<DiscusslvyoujingdianEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusslvyoujingdianEntity> wrapper);
   	
}

