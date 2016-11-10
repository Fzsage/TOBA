/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package businessRules;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sage
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        String url = "/index.jsp";

        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (action.equals("login")) {
            String password = request.getParameter("password");
            String userName = request.getParameter("userName");
            if (password.equals(user.getPassword()) && userName.equals(user.getUserName())) {
                url = "/Account_activity.jsp";
            } else {
                url = "/Login_failure.jsp";

            }

        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

}
