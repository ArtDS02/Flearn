/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import dao.AccountDAO;
import model.Account;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Cookie arr[] = request.getCookies();
        if (arr != null) {
            for (Cookie cookie : arr) {
                if (cookie.getName().equals("cookUname")) {
                    request.setAttribute("uname", cookie.getValue());
                    
                }
                if (cookie.getName().equals("cookPass")) {
                    request.setAttribute("upass", cookie.getValue());
                    
                }
            }
        }
        request.getRequestDispatcher("login.jsp").forward(request, response);
//        request.getRequestDispatcher("test.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("pass");
        String remember = request.getParameter("rememberme");
        AccountDAO dao = new AccountDAO();
        Account a = dao.login(username, password);
        request.setAttribute("account", a);
        if (a == null) {
            request.setAttribute("err", "Incorrect username or password.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("accountS", a);
            session.setMaxInactiveInterval(500);

            Cookie cookieAdminID = new Cookie("role", String.valueOf(a.getRole()));
            Cookie cookieUname = new Cookie("cookUname", username);
            Cookie cookiePass = new Cookie("cookPass", password);
            if (remember != null) {
                cookieAdminID.setMaxAge(60 * 60);
                cookieUname.setMaxAge(60 * 60);
                cookiePass.setMaxAge(60 * 60);
            } else {
                cookieAdminID.setMaxAge(0);
                cookieUname.setMaxAge(0);
                cookiePass.setMaxAge(0);
            }

            response.addCookie(cookieAdminID);
            response.addCookie(cookieUname);
            response.addCookie(cookiePass);
            response.sendRedirect("index.jsp");

        }

    }
}
