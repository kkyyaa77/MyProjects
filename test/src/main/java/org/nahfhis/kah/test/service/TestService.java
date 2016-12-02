package org.nahfhis.kah.test.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

/**
 * TEST 비즈니스 인터페이스
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
public interface TestService {
	
	/**
	 * 메뉴 목록 조회 요청을 처리하기 위해 데이터처리를 요청한다.
	 * 
	 * @return List
	 * @throws Exception
	 */
	public List<EgovMap> retrieveMenuList() throws Exception;

}
