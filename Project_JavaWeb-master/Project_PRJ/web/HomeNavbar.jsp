<%-- 
    Document   : HomeNavbar
    Created on : Mar 24, 2020, 9:13:04 PM
    Author     : HH
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header>
    <div class="row top-header">
        <div class="container">
            <nav class="navbar hidden-sm hidden-xs">
                <div class="col-md-6" id="head">
                    Chào mừng đến với APPLE STORE <span style="color: #ff0000">${fullName}</span>
                </div>
                <div class="col-md-6">
                    <ul class="nav navbar-nav navbar-right hidden-xs hidden-sm">
                        <c:if test="${fullName == null}">
                                <li><a href="Register.jsp">Đăng ký</a></li>
                            </c:if>
                            <c:if test="${fullName == null}">
                            <li><a href="login.jsp">Đăng nhập</a></li>
                            </c:if>
                            <c:if test="${fullName != null}">
                            <li><a href="LogoutAccount" onclick="alert('Bạn đã đăng xuất khỏi hệ thống!!')">Đăng xuất</a></li>
                            </c:if>
                        <li><a href="GiohangController">Giỏ hàng</a></li>
                    </ul>
                </div>
            </nav>
        </div>  
    </div>
    <div class="container logo-info-menu">
        <!-- Logo -->
        <div class="row">
            <div class="logo">
                <a href="Homepage.jsp"></a>
            </div>

            <nav class="navbar hidden-xs hidden-sm">
                <div class=" info">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <i class="fas fa-phone"></i>
                            <span>
                                <h5>HOTLINE</h5>
                                <p>(03) 55679554</p>
                            </span>
                        </li>
                        <li>
                            <i class="fas fa-envelope"></i>
                            <span>
                                <h5>EMAIL</h5>
                                <p>support@bizweb.vn</p>
                            </span>
                        </li>
                        <li>
                            <i class="far fa-clock"></i>
                            <span>
                                <h5>OPEN</h5>
                                <p>8:00 AM - 10:00 PM</p>
                            </span>
                        </li>
                    </ul>  
                </div>
            </nav>
        </div>
    </div>
</header>