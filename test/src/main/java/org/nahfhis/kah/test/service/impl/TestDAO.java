package org.nahfhis.kah.test.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("TestDAO")
public class TestDAO extends EgovAbstractDAO {

    /**
	 * DB에서 메뉴 목록을 조회한다.
	 * 
	 * @param empVO
	 * @return List
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<EgovMap> retrieveMenuList() throws Exception {
		System.out.println("retrieveMenuList() start!");
		List<EgovMap> list = null;
		try {
			list = list("TestDAO.retrieveMenuList", null);
			System.out.println("retrieveMenuList() list=" + list);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		System.out.println("retrieveMenuList() end!");
		return list;
	}
    
}
