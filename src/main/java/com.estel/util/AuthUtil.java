package com.estel.util;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

public class AuthUtil {

    public boolean auth() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return (authentication instanceof AnonymousAuthenticationToken);
    }
}
