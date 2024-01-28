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


import com.dao.JingdiangoupiaoDao;
import com.entity.JingdiangoupiaoEntity;
import com.service.JingdiangoupiaoService;
import com.entity.vo.JingdiangoupiaoVO;
import com.entity.view.JingdiangoupiaoView;

@Service("jingdiangoupiaoService")
public class JingdiangoupiaoServiceImpl extends ServiceImpl<JingdiangoupiaoDao, JingdiangoupiaoEntity> implements JingdiangoupiaoService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JingdiangoupiaoEntity> page = this.selectPage(
                new Query<JingdiangoupiaoEntity>(params).getPage(),
                new EntityWrapper<JingdiangoupiaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JingdiangoupiaoEntity> wrapper) {
		  Page<JingdiangoupiaoView> page =new Query<JingdiangoupiaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JingdiangoupiaoVO> selectListVO(Wrapper<JingdiangoupiaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JingdiangoupiaoVO selectVO(Wrapper<JingdiangoupiaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JingdiangoupiaoView> selectListView(Wrapper<JingdiangoupiaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JingdiangoupiaoView selectView(Wrapper<JingdiangoupiaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
