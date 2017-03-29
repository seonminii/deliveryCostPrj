package com.sunDelivery.web.dao.mysql;

import com.sunDelivery.web.dao.ParcelDao;

public class TestProgram {

	public static void main(String[] args) {
		ParcelDao parceldao = new MySQLParcelDao();
		String lastCode = null;
		lastCode = parceldao.lastCode();
		System.out.println("lastCode: "+lastCode);
	}

}
