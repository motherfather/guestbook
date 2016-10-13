package com.bit2016.guestbook.dao.test;

import java.util.List;

import com.bit2016.guestbook.dao.GuestBookDao;
import com.bit2016.guestbook.vo.GuestBookVo;

public class GuestBookDaoTest {

	public static void main(String[] args) {
//		 insertTest();
//		getListTest();
//		deleteTest();
	}
	
	public static void getListTest() {
		GuestBookDao dao = new GuestBookDao();
		List<GuestBookVo> list = dao.getList();
		for (GuestBookVo vo : list) {
			System.out.println(vo);
		}
	}

	public static void insertTest() {
		GuestBookVo vo = new GuestBookVo();
		vo.setName("둘리");
		vo.setContent("호이호이~");
		vo.setPassword("123");

		GuestBookDao dao = new GuestBookDao();
		dao.insert(vo);
	}

	public static void deleteTest() {
		GuestBookDao dao = new GuestBookDao();
		
		dao.delete(6L, "123");
	}
}
