package com.campus.myapp;

import java.util.Arrays;
import java.util.List;

import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

public class ServerConfiqure implements WebMvcConfigurer {
	private static final List<String> URL_PATTERNS = Arrays.asList("/board/boardWrite", "/board/boardWriteOk", "/board/boardEdit", "/board/boardEditOk");

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new LoginInterceptor()).addPathPatterns(URL_PATTERNS);
	}
}
