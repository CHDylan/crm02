package com.dr.crm.utils;

import com.dr.crm.pojo.Users;
import org.apache.taglibs.standard.lang.jstl.NullLiteral;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 自定义的拦截器
 */
public class MyHanderController  implements HandlerInterceptor {

    //就是你要拦截的地址
    private List<String>  excludUrrls;

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {

          //编写业务逻辑
           //获取Session中的账号信息
      Users  users =(Users) httpServletRequest.getSession().getAttribute("users");

      //获取路径的地址
        String uri = httpServletRequest.getRequestURI();
        for (String s : excludUrrls) {
            if(uri.contains(s)){
                return true;
            }
        }
        if(users ==null){
            httpServletResponse.sendRedirect("/login.jsp");
        }

        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }

    public List<String> getExcludUrrls() {
        return excludUrrls;
    }

    public void setExcludUrrls(List<String> excludUrrls) {
        this.excludUrrls = excludUrrls;
    }
}
