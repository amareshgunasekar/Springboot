<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>All Students</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="webjars/font-awesome/6.5.2/css/all.css"/>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" />
</head>

<body>
    <div class="container my-2">
        <div class="card">
            <div class="card-body">
                <div class="container my-5">
                    <p class="my-5">
                        <a href="/add-employee" class="btn btn-primary">
                            <i class="fas fa-user-plus ml-2">Add Employee </i>
                        </a>
                    </p>
                    <div class="col-md-10">
                        <c:if test="${employees.size()==0}">
                            <h2>No record found !!</h2>
                        </c:if>
                        <c:if test="${employees.size() gt 0 }">
                            <div>
                                <table class="table table-striped table-responsive-md">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>User Name</th>
                                            <th>Gender</th>
                                            <th>Years Of Experience</th>
                                            <th>Frameworks</th>
                                            <th>skills Known</th>
                                            <th>Edit</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="employee" items="${employees}">
                                            <tr>
                                                <td>${employee.id}</td>
                                                <td>${employee.firstName}</td>
                                                <td>${employee.lastName}</td>
                                                <td>${employee.userName}</td>
                                                <td>${employee.gender}</td>
                                                <td>${employee.yearsOfExperience}</td>
                                                <td>
                                                <ul><c:forEach var="framework" items="${employee.frameworks}">
                                                <li>${framework}</li>
                                                </c:forEach></ul>
                                                </td>
                                                <td>
                                                <ul><c:forEach var="skillKnown" items="${employee.skillsKnown}">
                                                 <li>${skillKnown}</li>
                                                 </c:forEach></ul>
                                                 </td>
                                                <td>
 <a href="/employee-update/${employee.id}" class="btn btn-primary">
      <i class="fas fa-user-edit ml-2"></i></a>
                                               </td>
                                             <td>
  <a href="/employee-delete/${employee.id}" class="btn btn-primary">
  <i class="fas fa-user-times ml-2"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>