package com.kozitski.pufar.controller.index;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/index")
public class IndexController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /// MUST BE DELETED ONLY FOR TESTING
//        TestSample.fasad();


        //  /view/index/index.jsp
        response.sendRedirect("index.jsp");

    }

}
