/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import com.spring.model.AddCourseModel;
import com.spring.model.LoginModel;

public class LoginDeo {

    JdbcTemplate template;
    int lastId;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }


    public List<LoginModel> authentication(LoginModel loginModel) {
        System.out.print("HiBefore");
        String query = "select * from users where email_id='"+loginModel.getUsername()+"' and password='"+loginModel.getPasssword()+"'";
        System.out.print(query);
        return template.query(query, (ResultSet res, int row) -> {
            LoginModel loginModel2 = new LoginModel();
            loginModel2.setUsername(res.getString("email_id"));

            return loginModel2;
        });
    }
}
