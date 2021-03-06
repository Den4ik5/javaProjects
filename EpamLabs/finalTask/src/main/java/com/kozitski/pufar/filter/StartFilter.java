package com.kozitski.pufar.filter;

import com.kozitski.pufar.entity.user.User;
import com.kozitski.pufar.entity.user.Users;
import com.kozitski.pufar.util.path.WebPathReturner;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter("/")   // all Correct work ( will be before every request)
public class StartFilter implements Filter {
    private static final String CURRENT_USER = "currentUser";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

        // must be performing Once for all application
        WebPathReturner.setSf( filterConfig.getServletContext().getRealPath("/"));

        User defaultUser = Users.createDefaultUser();
        filterConfig.getServletContext().setAttribute(CURRENT_USER, defaultUser);

        // todo: must be defined during registration
//        filterConfig.getServletContext().setAttribute("userId", "1");

    }

    @Override
    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        request.getRequestDispatcher("/index").forward(request, response);
    }


}
