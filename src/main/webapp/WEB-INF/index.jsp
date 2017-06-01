<%@ page import="java.util.Calendar" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>${initParam.ProductName}    </title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="metro-bootstrap-master/css/metro-bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="app.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<%--<%@include file="_header.jsp" %>--%>
<c:import url="_header.jsp" var="_header"/>
${_header}
<section class="main container-fluid">
    <%
        Calendar calendar = Calendar.getInstance();
    %>
    <div class="container">
        <h1>Home</h1>
        <div class="row-fluid">
            <div class="col-md-3">
                <%= calendar.getTime().toString() %>
            </div>
            <div class="col-md-9">
                <ul class="nav nav-tabs">
                    <c:forEach items="${app.tabs}" var="tab">
                        <li><a href="${tab.url}" data-toggle="tab">${tab.name}</a></li>
                    </c:forEach>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <div class="${app["formCssClass"]["name"]}">
                            <c:choose>
                                <c:when test="${!empty user.name}">
                                    <h2>Welcome ${ user.name } !</h2>
                                </c:when>
                                <c:otherwise>
                                    <h2>Welcome whoever you are!</h2>
                                </c:otherwise>
                            </c:choose>
                            <form action="home" method="post">
                                <p>
                                    Name: <input type="text" name="name"/>
                                </p>

                                <p>
                                    <input type="submit" value="Enter name">
                                </p>
                            </form>
                        </div>

                    </div>
                    <div class="tab-pane" id="other">
                        Yet More Static content
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="jquery/jquery-2.1.0.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>