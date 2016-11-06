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
public class NewCustomerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String url = "/Success.jsp";

        String action = request.getParameter("action");
         if (action == null){            
             action = "join";
         }
        if (action.equals("join")) {
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String zipCode = request.getParameter("zipCode");
            String email = request.getParameter("email");
            String message;

            if (firstName == null || firstName.isEmpty()
                    || lastName == null || lastName.isEmpty()
                    || phone == null || phone.isEmpty()
                    || address == null || address.isEmpty()
                    || city == null || city.isEmpty()
                    || state == null || state.isEmpty()
                    || zipCode == null || zipCode.isEmpty()
                    || email == null || email.isEmpty()) {

                message = "Please fill out all form fields.";
                url = "/New_customer.jsp";
            } else {
                User user = new User(firstName, lastName, phone, address, city, state, zipCode, email, lastName + zipCode, "welcome1");
                request.setAttribute("user", user);
                session.setAttribute("user", user);
                message = "";
                url = "/Success.jsp";
            }
            request.setAttribute("message", message);
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

}
