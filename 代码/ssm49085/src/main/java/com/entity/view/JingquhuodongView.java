package com.entity.view;

import com.entity.JingquhuodongEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 景区活动
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-10 13:20:20
 */
@TableName("jingquhuodong")
public class JingquhuodongView  extends JingquhuodongEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JingquhuodongView(){
	}
 
 	public JingquhuodongView(JingquhuodongEntity jingquhuodongEntity){
 	try {
			BeanUtils.copyProperties(this, jingquhuodongEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
