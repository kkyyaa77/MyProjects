package org.nahfhis.kah.map.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nahfhis.kah.map.service.KahMapService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

/**
 * 고대문화유산 지도 Controller 클래스
 * 
 * @author MARU
 * @since 2016.11.14
 * @version 1.0
 * @see 
 * <pre>
 *  == 개정이력(Modification Information) ==
 *   
 *  수정일               수정자                  수정내용
 *  -----------   ------------    ---------------------------
 *  2016.11.14    김용아                  최초 생성
 * 
 * </pre>
 */
@Controller
public class KahMapController {
	
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	/**
	 * Property 서비스
	 */
	@Resource(name="propertiesService")
	protected EgovPropertyService propertiesService; 
	
	/**
	 * 고대문화유산 지도 서비스
	 */
	@Resource(name="KahMapService")
	private KahMapService kahMapService;
	
	/**
	 * 고대문화유산 지도 메인 화면을 조회한다.
	 * 
	 * @param commandMap
	 * @param request
	 * @param response
	 * @param model
	 * @return "kah/map/main"
	 * @throws Exception
	 */
	@RequestMapping(value="/kah/map/main.do")
	public String mapMain(Map<String, Object> commandMap, HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		logger.info("고대문화유산 지도 메인 화면");
		
		// 구글맵 API KEY
		model.addAttribute("GOOGLE_MAP_API_KEY", propertiesService.getString("GOOGLE_MAP_API_KEY"));
		
		return "kah/map/main";
	}
	
	/**
	 * 지도 데이타 조회
	 * 
	 * @param commandMap
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/kah/map/getMapData.do")
	public @ResponseBody Map<String , Object> getMapData(Map<String, Object> commandMap, HttpServletRequest request, HttpServletResponse response) throws Exception {
		logger.info("지도 데이타 JSON Start!!!");
		Map<String, Object> jsonObject = new HashMap<String, Object>();
		
		String itemId = "ismy";
		String linkTypes = "gis";
		
		EgovMap searchMap = new EgovMap();
		searchMap.put("itemId", itemId);
		searchMap.put("linkTypes", linkTypes);
		
		// 지도 데이타 조회
		List<EgovMap> selectMapDataList = kahMapService.selectMapDataList(searchMap);
		jsonObject.put("list", selectMapDataList);
		
		/*Map<String, Object> jsonSubObject = null;
		ArrayList<Map<String, Object>> jsonList = new ArrayList<Map<String, Object>>();

		//1번째 데이터
		jsonSubObject = new HashMap<String, Object>();
		jsonSubObject.put("idx", 1);
		jsonSubObject.put("title", "제목입니다");
		jsonSubObject.put("create_date", new Date());
		jsonList.add(jsonSubObject);
		//2번째 데이터
		jsonSubObject = new HashMap<String, Object>();
		jsonSubObject.put("idx", 2);
		jsonSubObject.put("title", "두번째제목입니다");
		jsonSubObject.put("create_date", new Date());
		jsonList.add(jsonSubObject);

		jsonObject.put("success", true);
		jsonObject.put("total_count", 10);
		jsonObject.put("result_list", jsonList);*/
		
		logger.info("지도 데이타 JSON End!!!");
		return jsonObject; 
	}
	
}
