<%-- 
    Document   : AdminLeftMenu
    Created on : Mar 26, 2020, 10:04:04 PM
    Author     : HH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="title">
    <h3>Menu</h3>
</div>
<div class="menu">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chu</title>
    </head>
    <body>
        <c:if test="${not empty CreateUserSuccess}">
            <h3 style="color: brown;">${CreateUserSuccess}</h3>
        </c:if>
        <c:if test="${not empty Loginsuccess}">
            <h3 style="color: brown;">${Loginsuccess}</h3>
        </c:if>
        <c:if test="${not empty CreateUserFail}">
            <h3 style="color: brown;">${CreateUserFail}</h3>
        </c:if>
        <c:if test="${not empty CreateKhSuccess}">
            <h3 style="color: brown;">${CreateKhSuccess}</h3>
        </c:if>
        <c:if test="${not empty UpdateKHSuccess}">
            <h3 style="color: brown;">${UpdateKHSuccess}</h3>
        </c:if>
        <c:if test="${not empty DeleteKHSuccess}">
            <h3 style="color: brown;">${DeleteKHSuccess}</h3>
        </c:if>

        <a href="Customer.jsp">Them khach hang moi</a><br>
        <a href="Showcustomer.jsp">Hien thi khach hang</a><br>
        <a href="Register.jsp">Dang ki tai khoan</a><br>
        <a href="Buy.jsp">Mua hang</a><br>
        <a href="Addproduct.jsp">Them san pham</a>

    </body>
</div>
