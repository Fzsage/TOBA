/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sage
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String url = "/index.html";

        String action = request.getParameter("action");
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");

        if (action.equals("login")) {

            if ("jsmith@toba.com".equals(userName) && "letmein".equals(password)) {
                url = "/Account_activity.html";
            } else {
                url = "/Login_failure.html";

            }

        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

}
