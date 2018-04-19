package com.mycompany.trabalho2;

import java.io.IOException;
import org.apache.log4j.Logger;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 *
 * @author User
 */
@WebFilter("/*")
public class Filtro implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        try{
            chain.doFilter(request, response);
        }catch(Exception e){
            Logger lg = Logger.getLogger(Filtro.class);
            lg.error("Ta aqui carai : " , e);
            request.getRequestDispatcher("/erro.html").forward(request, response);
        }
    }
    @Override
    public void destroy() {
    }
    @Override
    public void init(FilterConfig fc) throws ServletException {
    }
}