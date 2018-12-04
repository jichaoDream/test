package com.Damoservlet.controller;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

public class StudentListServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        System.out.println("init");
    }
    @Override
    public void init(ServletConfig config) throws ServletException {
        System.out.println("Config innt");
        Enumeration<String> params = config.getInitParameterNames();

        super.init(config);
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("doGet");
        PrintWriter out = resp.getWriter();
        out.println("keeeeeeeeeeeeeeeeee");
        //resp.sendRedirect(req+"CompanyList.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("doPost");
    }

    @Override
    public void destroy() {
        System.out.println("destroy");
        super.destroy();
    }

    public static class LoginController {
    }
}
