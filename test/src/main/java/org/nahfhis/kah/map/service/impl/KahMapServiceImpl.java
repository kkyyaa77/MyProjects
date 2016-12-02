package org.nahfhis.kah.map.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.nahfhis.kah.map.service.KahMapService;
import org.springframework.stereotype.Service;

import egovframework.rte.psl.dataaccess.util.EgovMap;

/**
 * 고대문화유산 지도 비즈니스 클래스
 * 
 * @author MARU
 * @since 2016.11.16
 * @version 1.0
 * @see 
 * <pre>
 *  == 개정이력(Modification Information) ==
 *   
 *  수정일               수정자                  수정내용
 *  -----------   ------------    ---------------------------
 *  2016.11.16    김용아                  최초 생성
 * 
 * </pre>
 */
@Service("KahMapService")
public class KahMapServiceImpl implements KahMapService {

	@Resource(name="KahMapMapper")
	private KahMapMapper kahMapMapper;

	/**
	 * 지도 데이타 조회 요청을 처리하기 위해 데이터처리를 요청한다.
	 * 
	 * @param searchMap
	 * @return
	 * @throws Exception
	 */
	public List<EgovMap> selectMapDataList(EgovMap searchMap) throws Exception {
		return kahMapMapper.selectMapDataList(searchMap);
	}
	
}
