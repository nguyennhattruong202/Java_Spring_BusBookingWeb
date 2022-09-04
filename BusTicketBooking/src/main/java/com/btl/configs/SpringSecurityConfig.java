/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.configs;

import com.btl.handler.LoginHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@EnableWebSecurity
@ComponentScan(basePackages = {
    "com.btl.controller",
    "com.btl.handler",
    "com.btl.repository",
    "com.btl.service",
    "com.btl.validator"
})
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private LoginHandler loginHandler;
    @Autowired
    private UserDetailsService userDetailsService;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService)
                .passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        // Chỉ định form login và input username, password
        http.formLogin().loginPage("/login")
                .usernameParameter("username")
                .passwordParameter("password");
        // Action sau khi login thành công
        http.formLogin().successHandler(this.loginHandler);
        // Action khi login không thành công
        http.formLogin().failureUrl("/login?error");
        // Action khi requset không được cấp quyền
        http.exceptionHandling().accessDeniedPage("/login?accessDenied");
        // Phân quyền
        http.authorizeRequests().antMatchers("/", "/login").permitAll()
                .antMatchers("/admin/**")
                .access("hasRole('ROLE_ADMIN')");
        http.csrf().disable();
    }

}
