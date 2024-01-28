package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DiscussjingquhuodongDao;
import com.entity.DiscussjingquhuodongEntity;
import com.service.DiscussjingquhuodongService;
import com.entity.vo.DiscussjingquhuodongVO;
import com.entity.view.DiscussjingquhuodongView;

@Service("discussjingquhuodongService")
public class DiscussjingquhuodongServiceImpl extends ServiceImpl<DiscussjingquhuodongDao, DiscussjingquhuodongEntity> implements DiscussjingquhuodongService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussjingquhuodongEntity> page = this.selectPage(
                new Query<DiscussjingquhuodongEntity>(params).getPage(),
                new EntityWrapper<DiscussjingquhuodongEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussjingquhuodongEntity> wrapper) {
		  Page<DiscussjingquhuodongView> page =new Query<DiscussjingquhuodongView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussjingquhuodongVO> selectListVO(Wrapper<DiscussjingquhuodongEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussjingquhuodongVO selectVO(Wrapper<DiscussjingquhuodongEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussjingquhuodongView> selectListView(Wrapper<DiscussjingquhuodongEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussjingquhuodongView selectView(Wrapper<DiscussjingquhuodongEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
