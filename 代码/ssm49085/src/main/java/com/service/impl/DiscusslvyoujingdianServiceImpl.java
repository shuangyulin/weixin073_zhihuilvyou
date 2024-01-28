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


import com.dao.DiscusslvyoujingdianDao;
import com.entity.DiscusslvyoujingdianEntity;
import com.service.DiscusslvyoujingdianService;
import com.entity.vo.DiscusslvyoujingdianVO;
import com.entity.view.DiscusslvyoujingdianView;

@Service("discusslvyoujingdianService")
public class DiscusslvyoujingdianServiceImpl extends ServiceImpl<DiscusslvyoujingdianDao, DiscusslvyoujingdianEntity> implements DiscusslvyoujingdianService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusslvyoujingdianEntity> page = this.selectPage(
                new Query<DiscusslvyoujingdianEntity>(params).getPage(),
                new EntityWrapper<DiscusslvyoujingdianEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusslvyoujingdianEntity> wrapper) {
		  Page<DiscusslvyoujingdianView> page =new Query<DiscusslvyoujingdianView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusslvyoujingdianVO> selectListVO(Wrapper<DiscusslvyoujingdianEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusslvyoujingdianVO selectVO(Wrapper<DiscusslvyoujingdianEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusslvyoujingdianView> selectListView(Wrapper<DiscusslvyoujingdianEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusslvyoujingdianView selectView(Wrapper<DiscusslvyoujingdianEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
