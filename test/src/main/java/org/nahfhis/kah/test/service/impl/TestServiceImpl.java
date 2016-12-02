package org.nahfhis.kah.test.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.nahfhis.kah.test.service.TestService;
import org.springframework.stereotype.Service;

import egovframework.rte.psl.dataaccess.util.EgovMap;

/**
 * TEST 비즈니스 클래스
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
@Service("TestService")
public class TestServiceImpl implements TestService {

	@Resource(name="TestMapper")
	private TestMapper testMapper;
	
	@Resource(name="TestDAO")
	private TestDAO testDAO;
	
	/**
	 * 사원목록조회 요청을 처리하기 위해 데이터처리를 요청한다.
	 * 
	 * @param empVO
	 * @return List
	 * @throws Exception
	 */
	public List<EgovMap> retrieveMenuList() throws Exception {
		List<EgovMap> list = null;
		list = testMapper.retrieveMenuList();
		//list = testDAO.retrieveMenuList();
		
		return list;
	}
	
}
