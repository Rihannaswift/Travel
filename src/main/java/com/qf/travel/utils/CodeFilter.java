package com.qf.travel.utils;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

@WebFilter(filterName = "CodeFilter")
public class CodeFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest)request;
        HttpServletResponse res = (HttpServletResponse)response;
        //解决post请求乱码问题
        req.setCharacterEncoding("utf-8");
        res.setContentType("text/html;charset=utf-8");
        //解决get请求乱码问题
        MyCodeFilter myCodeFilter = new MyCodeFilter(req);
        chain.doFilter(myCodeFilter, res);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}


class MyCodeFilter extends HttpServletRequestWrapper {

    public MyCodeFilter(HttpServletRequest request) {
        super(request);
    }

    @Override
    public String getParameter(String name) {
        String value = super.getParameter(name);
        if (value!=null) {
            String method = super.getMethod();
            if ("GET".equals(method)) {
                try {
                    value = new String(value.getBytes("iso-8859-1"), "utf-8");
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            }
            return value;
        }else {
            return null;
        }
    }
}

