package com.accp.springmvc.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

@SuppressWarnings("all")
public class SpringBeanUtil {

	private static ApplicationContext ac;

	private static final String DEFAULT_CONFIG_FILE = "spring-ctx.xml";

	static {
		try {
			ac = new ClassPathXmlApplicationContext(DEFAULT_CONFIG_FILE);
		} catch (Exception ex) {
			LoggerUtil.error("spring加载异常", ex);
		}
	}

	public static <T> T getBeanByName(String name) {
		return (T) ac.getBean(name);
	}
}
