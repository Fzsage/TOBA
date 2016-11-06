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
public class ResetPasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String url = "/Account_activity.jsp";

        String action = request.getParameter("action");
        if (action == null) {
            action = "reset";
        }
        if (action.equals("reset")) {

            String password = request.getParameter("password");
            String newPassword = request.getParameter("newPassword");
            String message;

            if (password.equals(user.getPassword())) {
                user.setPassword(newPassword);
                message = "";
                url = "/Account_activity.jsp";
                request.setAttribute("user", user);
                session.setAttribute("user", user);
            } else {
                message = "Incorrect password. Please enter the correct password.";
                url = "/password_reset.jsp";
            }
            request.setAttribute("message", message);
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

}
