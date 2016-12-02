package egovframework.rte.cmmn.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;

public class CustomExceptionResolver extends SimpleMappingExceptionResolver {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomExceptionResolver.class);	 

	@Override
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {

		logger.error("##ERROR", ex);

		return super.resolveException(request, response, handler, ex);
	}
	
}
