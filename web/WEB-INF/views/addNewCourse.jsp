<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course Settings</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body style="background: url('resources/images/university_img.jpg');">
        <div class="container">
            <h3 class="mt-4 mb-4">Course Settings</h3>
            <form method="post" action="saveCourse.htm">
                <div class="form-group col-md-7">
                    <label for="id">Course ID</label>
                    <input type="text" class="form-control" id="courseID" placeholder="Enter Course ID" name="courseID">
                </div>
                <div class="form-group col-md-7">
                    <label for="name">Course Name</label>
                    <input type="text" class="form-control" id="courseName" placeholder="Enter Course Name" name="courseName">
                </div>
                <div class="form-group col-md-7">
                    <label for="field">Field</label>
                    <input type="text" class="form-control" id="field" placeholder="Enter Field" name="field">
                </div>
                <div class="form-group col-md-7">
                    <label for="level">Course Level</label>
                    <select class="form-control" id="level" name="level">
                        <option value="Undergraduate">Undergraduate</option>
                        <option value="PHD">PHD</option>
                        <option value="Postgraduate">Postgraduate</option>
                    </select>
                </div>
                <div class="form-group col-md-7">
                    <label for="teacher">Teacher Name</label>
                    <input type="text" class="form-control" id="teacherName" placeholder="Enter Teacher Name" name="teacherName">
                </div>
                <div class="form-group col-md-7">
                    <label for="pre">Prerequisites</label>
                    <input type="text" class="form-control" id="prerequisites" placeholder="Enter Prerequisites" name="prerequisites">
                </div>
                <div class="form-group col-md-7">
                    <label for="rec">Recommended:</label>
                    <input type="text" class="form-control" id="recommended_list" placeholder="Enter Recommended" name="recommended_list">
                </div>
                <div class="form-group">
                    <button type="submit" value="Save" class="btn btn-success mt-3 ml-3">Save Information</button>
                </div>
            </form>
        </div>
    </body>
</html>
