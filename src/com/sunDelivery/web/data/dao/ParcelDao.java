package com.sunDelivery.web.data.dao;

import java.util.List;

import com.sunDelivery.web.data.entity.Parcel;

public interface ParcelDao {
	
	List<Parcel> getList();
	List<Parcel> getList(int page);
	List<Parcel> getList(int page, String field, String query);
	
}
