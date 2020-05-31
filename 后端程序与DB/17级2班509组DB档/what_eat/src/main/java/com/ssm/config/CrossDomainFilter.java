//package com.ssm.config;
//
//import javax.servlet.*;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//public class CrossDomainFilter implements Filter {
//
//    public void destroy() {
//        // TODO Auto-generated method stub
//    }
//
//    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
//        //设置跨域请求
//        HttpServletResponse response = (HttpServletResponse) res;
//        //此处ip地址为需要访问服务器的ip及端口号
////        response.setHeader("Access-Control-Allow-Origin", "http://192.168.1.1:8080");
////        response.setHeader("Access-Control-Allow-Credentials", "true");
//        response.setHeader("Access-Control-Allow-Origin", "*");
//        response.setHeader("Access-Control-Allow-Methods", "GET, HEAD, POST, PUT, DELETE, TRACE, OPTIONS, PATCH");
//        response.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type,Token,Accept, Connection, User-Agent, Cookie");
//        response.setHeader("Access-Control-Max-Age", "3628800");
//        System.out.println("设置跨域请求");
//        System.out.println(response.getHeader("Access-Control-Allow-Origin"));
//        chain.doFilter(req, response);
//    }
//
//
//    public void init(FilterConfig filterConfig) throws ServletException {
//        // TODO Auto-generated method stub
//    }
//}
