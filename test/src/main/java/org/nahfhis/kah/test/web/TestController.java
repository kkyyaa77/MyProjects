package org.nahfhis.kah.test.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nahfhis.kah.test.service.TestService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.rte.psl.dataaccess.util.EgovMap;

/**
 * TEST Controller 클래스
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
@Controller
public class TestController {
	
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	/**
	 * Test 서비스
	 */
	@Resource(name = "TestService")
	private TestService testService;

	/**
	 * 테스트 화면을 조회한다.
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/kah/test/test.do")
	public String test(Map<String, Object> commandMap, HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		System.out.println("commandMap=" + commandMap);
		
		// 메뉴 목록 조회
		List<EgovMap> menuList = testService.retrieveMenuList();
		logger.debug("menuList=" + menuList);
		for (int i = 0; i < menuList.size(); i++) {
			logger.debug("menuList.get(" + i + ")=" + menuList.get(i));
		}
		model.addAttribute("menuList", menuList);
		
		return "kah/test/test";
	}
	
}
