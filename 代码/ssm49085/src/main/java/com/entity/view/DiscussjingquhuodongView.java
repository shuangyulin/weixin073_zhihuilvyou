package com.entity.view;

import com.entity.DiscussjingquhuodongEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 景区活动评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-10 13:20:21
 */
@TableName("discussjingquhuodong")
public class DiscussjingquhuodongView  extends DiscussjingquhuodongEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussjingquhuodongView(){
	}
 
 	public DiscussjingquhuodongView(DiscussjingquhuodongEntity discussjingquhuodongEntity){
 	try {
			BeanUtils.copyProperties(this, discussjingquhuodongEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
