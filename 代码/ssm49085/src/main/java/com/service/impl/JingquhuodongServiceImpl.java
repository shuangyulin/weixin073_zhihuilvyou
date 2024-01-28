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


import com.dao.JingquhuodongDao;
import com.entity.JingquhuodongEntity;
import com.service.JingquhuodongService;
import com.entity.vo.JingquhuodongVO;
import com.entity.view.JingquhuodongView;

@Service("jingquhuodongService")
public class JingquhuodongServiceImpl extends ServiceImpl<JingquhuodongDao, JingquhuodongEntity> implements JingquhuodongService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JingquhuodongEntity> page = this.selectPage(
                new Query<JingquhuodongEntity>(params).getPage(),
                new EntityWrapper<JingquhuodongEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JingquhuodongEntity> wrapper) {
		  Page<JingquhuodongView> page =new Query<JingquhuodongView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JingquhuodongVO> selectListVO(Wrapper<JingquhuodongEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JingquhuodongVO selectVO(Wrapper<JingquhuodongEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JingquhuodongView> selectListView(Wrapper<JingquhuodongEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JingquhuodongView selectView(Wrapper<JingquhuodongEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
