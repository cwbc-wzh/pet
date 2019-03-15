package com.lq.Filter;

import com.lq.util.StringUtils;

import java.io.IOException;
import java.net.URL;
import java.util.Random;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PFilter implements Filter {


    /**
     * 读取配置文件中的内容
     */
    private String[] ignorepageArray;

    @Override
    public void destroy() {

    }


    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {

        System.out.println("Enter the filter PFilter");
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        //获取请求（如/test/userlogin,jsp）
        String uri = req.getRequestURI();
        System.out.println("PFilter Request uri for" + uri);

        String file = uri.substring(uri.lastIndexOf("/") + 1);
        if(StringUtils.isEmpty(file)){
            chain.doFilter(request, response);
            return ;
        } else if (StringUtils.isEq(file, "Register.jsp")) {
            Random random = new Random();
            int a = random.nextInt(10);
            int j = random.nextInt(10);
            int m = random.nextInt(10);
            int n = random.nextInt(10);
            session.setAttribute("code", String.format("%d%d%d%d", a, j, m, n));
        } else {
            if (uri.contains(".css") || uri.contains(".js") || uri.contains(".jpg") || uri.contains(".png") || uri.contains(".gif")) {
                chain.doFilter(request, response);
                return;
            } else {
                //web.xml中配置不拦截的
                for (String f : ignorepageArray) {
                    if (file.equals(f)) {
                        chain.doFilter(request, response);
                        return;
                    }
                }
                //进行拦截，防止未登录就访问后台
                if (session.getAttribute("username") == null) {
                    System.out.println("Illegal access to the user interface ,Please log in before proceeding");
                    //非法访问转发到登录界面
                    req.getRequestDispatcher("/logOut.do").forward(req, resp);
                    return ;
                }
            }
        }
        chain.doFilter(request, response);
    }


    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
//		web.xml中的配置ignorepages
        String ignorepages;
        ignorepages = filterConfig.getInitParameter("ignorepages");
        if (!ignorepages.equals("")) {
            ignorepageArray = ignorepages.split(",");
        }
        System.out.println("Initialize filter PFilter ignorepageArray is " + ignorepages);
    }
}
