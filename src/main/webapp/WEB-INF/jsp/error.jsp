<!DOCTYPE html><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                        <a href="javascript:history.go(-1)" class="btn btn-danger">
                            Back
                        </a>
                    </p>
                    <div class="col-md-10">
                        <c:if test="${errors.size() gt 0 }">
                            <div class="text-danger">Errors:

                               <ul><c:forEach var="error" items="${errors}">
                                <li>${error}</li>
                                </c:forEach>
                                </ul>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>