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

public class CourseDao {

    JdbcTemplate template;
    int lastId;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    public int save(AddCourseModel model) {
        String sql = "insert into course(course_id,name,field,level,teacher_name) values('" + model.getCourseID() + "','" + model.getCourseName() + "','" + model.getField() + "','" + model.getLevel() + "','" + model.getTeacherName() + "')";
        template.update(sql);
        getKeyId(model.getCourseID());
        String two_sql = "insert into course_info(course_id, prerequistic, recommended_list) values('" + lastId + "','" + model.getPrerequisites() + "','" + model.getRecommended_list() + "')";
        return template.update(two_sql);
    }

    public List<AddCourseModel> getCourses() {
        String query = "select * from course inner join course_info on course_info.course_id = course.id";

        return template.query(query, (ResultSet res, int row) -> {
            AddCourseModel course = new AddCourseModel();
            course.setCourseID(res.getString("course_id"));
            course.setCourseName(res.getString("name"));
            course.setTeacherName(res.getString("teacher_name"));
            course.setRecommended_list(res.getString("recommended_list"));
            return course;
        });
    }

    public List<AddCourseModel> getKeyId(String course_id) {
        String getKey = "select * from course where course_id='" + course_id+"'";

        return template.query(getKey, (ResultSet res, int row) -> {
            AddCourseModel course = new AddCourseModel();
            lastId = res.getInt("id");
            return course;
        });
    }
}
