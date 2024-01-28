package com.entity.view;

import com.entity.JingdiangoupiaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 景点购票
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-10 13:20:20
 */
@TableName("jingdiangoupiao")
public class JingdiangoupiaoView  extends JingdiangoupiaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JingdiangoupiaoView(){
	}
 
 	public JingdiangoupiaoView(JingdiangoupiaoEntity jingdiangoupiaoEntity){
 	try {
			BeanUtils.copyProperties(this, jingdiangoupiaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
