package org.nahfhis.kah.test.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

/**
 * TEST 데이터처리 매퍼 클래스
 * 
 * @author MARU
 * @since 2016.11.09
 * @version 1.0
 * @see 
 * <pre>
 *  == 개정이력(Modification Information) ==
 *   
 *  수정일               수정자                  수정내용
 *  -----------   ------------    ---------------------------
 *  2016.11.09    김용아                  최초 생성
 * 
 * </pre>
 */
@Repository("TestMapper")
public class TestMapper extends EgovAbstractMapper {
	
	/**
	 * DB에서 메뉴 목록을 조회한다.
	 * 
	 * @param empVO
	 * @return List
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<EgovMap> retrieveMenuList() throws Exception {
		List<EgovMap> list = null;
		list = list("TestMapper.retrieveMenuList", null);
		return list;
	}
	
}
