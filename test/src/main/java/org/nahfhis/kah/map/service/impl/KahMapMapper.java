package org.nahfhis.kah.map.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

/**
 * 고대문화유산 지도 데이터처리 매퍼 클래스
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
@Repository("KahMapMapper")
public class KahMapMapper extends EgovAbstractMapper {
	
	private String namespace = "org.nahfhis.kah.map.service.impl.KahMapMapper";
	
	/**
	 * DB에서 지도 데이타 목록을 조회한다.
	 * 
	 * @param searchMap
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<EgovMap> selectMapDataList(EgovMap searchMap) throws Exception {
		return list(namespace + ".selectMapDataList", searchMap);
	}
	
}
