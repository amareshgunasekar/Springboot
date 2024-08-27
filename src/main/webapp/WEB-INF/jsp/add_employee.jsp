<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Add Student</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">

</head>

<body>
    <div class="container my-5">
        <h3>Add Employee</h3>
        <div class="card">
            <div class="card-body">
                <div class="col-md-10">
                    <form:form action="/save-employee"
                        method="post" modelAttribute="command">
                        <form:hidden path="id" />
                        <div class="row">

                            <div class="form-group col-md-4">
                                <label for="firstName" class="col-form-label">First Name</label>
                                <form:input type="text" class="form-control" id="firstName"
                                    path="firstName" placeholder="Enter First Name" />
                            </div>

                            <div class="form-group col-md-4">
                                <label for="lastName" class="col-form-label">Last Name</label>
                                <form:input type="text" class="form-control" id="lastName"
                                    path="lastName" placeholder="Enter Last Name" />
                            </div>

                            <div class="form-group col-md-4">
                                <label for="userName" class="col-form-label">User Name</label>
                                <form:input type="text" class="form-control" id="userName"
                                    path="userName" placeholder="Enter User Name" />
                            </div>

                            <!-- Select gender -->
                            <div class="form-group col-md-4">
                                <label for="gender" class="col-form-label">Select Gender</label>
                                    <form:select class="form-control" id="gender"
                                        path="gender">
                                        <form:option value="Male" label="Male"/>
                                        <form:option value="Female" label="Female"/>
                                    </form:select>
                            </div>

                            <div class="form-group col-md-4">
                                <label for="yearsOfExperience" class="col-form-label">Years Of Experience</label>
                                <form:input type="number" class="form-control" id="yearsOfExperience"
                                    path="yearsOfExperience" placeholder="Enter Years Of Experience" />
                            </div>

                            <div class="form-group col-md-8">
                                <label for="frameworks" class="col-form-label">Frameworks:    </label>
                                <form:radiobutton id="frameworks"
                                    path="frameworks" value="Spring Framework" label="Spring Framework"/>
                                <form:radiobutton id="frameworks"
                                    path="frameworks" value="Hibernate Framework" label="Hibernate Framework"/>
                                <form:radiobutton id="frameworks"
                                    path="frameworks" value="TestNG Framework" label="TestNG Framework"/>
                            </div>

                            <div class="form-group col-md-8">
                                <label for="skillsKnown" class="col-form-label">Skills Known:    </label>
                                <form:checkbox id="skillsKnown"
                                    path="skillsKnown" value="Java" label="Java"/>
                                <form:checkbox id="skillsKnown"
                                    path="skillsKnown" value=".Net" label=".Net"/>
                                <form:checkbox id="skillsKnown"
                                    path="skillsKnown" value="Python" label="Python"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-2">
                                <input type="submit" class="btn btn-primary" value=" Submit ">
                            </div>

                            <div class="col-md-1">
                                <input type="reset" class="btn btn-primary" value=" Reset ">
                            </div>

                        </div>

                    </form:form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>