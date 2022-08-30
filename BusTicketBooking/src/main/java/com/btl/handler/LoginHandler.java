/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.handler;

import com.btl.pojo.Employee;
import com.btl.service.UserEmployeeService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class LoginHandler implements AuthenticationSuccessHandler {
    
    @Autowired
    private UserEmployeeService userEmployeeService;
    
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse reponse, Authentication a) throws IOException, ServletException {
        Employee employee = this.userEmployeeService.getUserEmployeeByUserName(a.getName());
        request.getSession().setAttribute("currentUser", employee);
        reponse.sendRedirect("/BusTicketBooking/admin/index");
    }
    
}
