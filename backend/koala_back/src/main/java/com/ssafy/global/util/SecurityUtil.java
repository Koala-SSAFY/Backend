package com.ssafy.global.util;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

public class SecurityUtil {
	public static String getCurrentUserName() {
		final Authentication authentication =
			SecurityContextHolder.getContext().getAuthentication();
		if (authentication == null || authentication.getName() == null) {
			throw new RuntimeException("No authentication information");
		}
		return authentication.getName();
	}

}
