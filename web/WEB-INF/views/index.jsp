<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web Application</title>
        <script src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
        <script src="./resources/js/jquery.table-filterable.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="./resources/css/course_catalog.css">
        <script src="./resources/js/search_course.js"></script>
    </head>

    <body>
        <div class="container-fluid p-4">
            <div class="form-row">
                <h3 class="text-primary mt-2">Course Catalog</h3>
                <div class="form-group col-md-10 mt-4">
                    <button class="btn btn-primary  float-right ml-3" onclick="addCourse();">+ Add Course</button>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-md-3">
                    <div class="form-group">
                        <input type="text" class="form-control" id="course_name" placeholder="Course Name" name="name"/>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">

                        <select class="form-control" id="level_course" name="level">
                            <option value="Undergraduate">Undergraduate</option>
                             <option value="PHD">PHD</option>
                             <option value="Postgraduate">Postgraduate</option>
                        </select>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <input type="text" class="form-control" id="fields" placeholder="Fields" name="fields"/>
                    </div>
                </div>
            </div>
            <table id="course_table" class="table table-striped table-bordered">
                <thead>
                    <tr>

                        <th>Course Name</th>
                        <th>Teacher Name</th>
                        <th>Recommended</th>
                    </tr>
                </thead>
                <tbody>

                    <c:forEach var="course" items="${course_list}">

                        <tr>

                            <td>${course.courseName}</td>
                            <td>${course.teacherName}</td>
                            <td>${course.recommended_list}</td>
                        </tr>
                    </c:forEach>
                </tbody>
        </div>
    </body>
</html>
