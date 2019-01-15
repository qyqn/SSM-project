package com.cn.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.entity.TblCustomer;
import com.cn.entity.TblGoods;
import com.cn.entity.TblShopcart;
import com.cn.entity.TblShopcartQuery;
import com.cn.mapper.TblShopcartMapper;

@Service
public class TblShopcartBiz {

	@Autowired
	TblShopcartMapper tblShopcartMapper;

	public int selectShopcartCountByName(String customerName) {
		// TODO Auto-generated method stub
		
		return tblShopcartMapper.selectShopcartCountByName(customerName);
	}

	public boolean addFun(String customerName,Integer goodsID,Integer count) {
		// TODO Auto-generated method stub
		TblShopcart tblShopcart = new TblShopcart();
		tblShopcart.setCustomerName(customerName);
		tblShopcart.setGoodsID(goodsID);
		tblShopcart.setGoodCount(count);
		try{
			tblShopcartMapper.insertFun(tblShopcart);
			return true;
		}catch(Exception e){
			return false;
		}
		
	}

	public List<TblShopcartQuery> selectAllFun(TblCustomer customer) {
		return tblShopcartMapper.selectAllByName(customer.getCustomerName());	
	}
	
}
