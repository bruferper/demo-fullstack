package com.bfz.demo_jte.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.WebAttributes;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Objects;

@Controller
@RequestMapping("/auth")
public class AuthController {

    @GetMapping("/login")
    public String getLogin(Model model) {
        model.addAttribute("errorMessage", "");
        return "auth/login";
    }

    @GetMapping("/login-error")
    public String getLoginError(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession(false);
        String errorMessage = "";
        if (Objects.nonNull(session)) {
            AuthenticationException ex = (AuthenticationException) session.getAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
            errorMessage = ex.getMessage();
        }
        model.addAttribute("errorMessage", errorMessage);
        return "auth/login";
    }

}
