//package com.ssm.config;
//
//import org.springframework.web.servlet.HandlerInterceptor;
//import org.springframework.web.servlet.ModelAndView;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//
//public class OptionsInterceptor implements HandlerInterceptor {
//    //private List<String> excludedUrls;
//
//    private  static int count=0;
//
//    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
//        System.out.println("preHandle拦截器执行"+(++count)+"次");
//        System.out.println("=====================================================");
//        System.out.println(httpServletRequest.getRequestURI());
//        System.out.println(httpServletRequest.getMethod());
//        System.out.println(httpServletRequest.getHeader("Origin"));
//        if (httpServletRequest.getHeader("Origin")!=null){
//            System.out.println("url:"+httpServletRequest.getRequestURI().toString());
//            httpServletResponse.setHeader("Access-Control-Allow-Origin", "*");
//            httpServletResponse.setHeader("Access-Control-Allow-Methods", "*");
//            httpServletResponse.setHeader("Access-Control-Max-Age", "3600");
//            httpServletResponse.setHeader("Access-Control-Allow-Headers",
//                    "Origin, X-Requested-With, Content-Type, Accept");
//            System.out.println(httpServletResponse.getHeader("Access-Control-Allow-Origin"));
//        }
//        return true;
//    }
//
//
//    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
//
//    }
//
//
//    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
//
//    }
//
////    public List<String> getExcludedUrls() {
////        return excludedUrls;
////    }
////
////    public void setExcludedUrls(List<String> excludedUrls) {
////        this.excludedUrls = excludedUrls;
////    }
//
//}