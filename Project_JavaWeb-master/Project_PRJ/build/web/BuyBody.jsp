<%-- 
    Document   : BuyBody
    Created on : Mar 26, 2020, 12:23:58 AM
    Author     : HH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
    <link rel="stylesheet" href="css/styles.css">
    <style type="text/css">
        table.d {
            table-layout: fixed;
            width: 100%;  
        }
        th,td, p {
            text-align: center;
            font: oblique;
            font-size: large;
            font-style: initial;
            color: white;
        }
        a {
            color: white;
        }
        h3 {
            color: white;
            font-style: inherit;
            font-size: large;
            text-align: center;
        }
    </style>
</head>
<body background="css/bg.jpg">
    <div class="container">
        <!--     <div class="paging">
                <ul class="breadcrumb">
                    
                </ul>
            </div> -->
        <div class="cart-info">
            <div class="table-user">
                <form action="MuaHangController" method="GET">
                    <c:if test="${not empty CreateKhSuccess}">
                        <h3 style="color: brown;">${CreateKhSuccess}</h3>
                    </c:if>
                    <c:if test="${not empty BuySuccess}">
                        <h3 style="color: brown;">${BuySuccess}</h3>
                    </c:if>
                    <c:if test="${not empty MuaHangSuccess}">
                        <h3 style="color: brown;">${MuaHangSuccess}</h3>
                    </c:if>

                    <h3>Một số mặt hàng nổi bật</h3>
                    <table border="1" class="d">
                        <tr>
                            <th>Mã hàng</th>
                            <th>Tên sản phẩm</th>
                            <th>Đơn vị</th>
                            <th>Giá (USD)</th>
                            <th>Hình ảnh</th>
                            <th> </th>
                            <th> </th>
                        </tr>
                        <tr>
                            <th><a href="ChitietsanphamController?MaHang=M01">M01</a></th>
                            <th><a href="ChitietsanphamController?MaHang=M01">Máy tính Asus</a></th>
                            <th>Chiếc</th>
                            <th>2000</th>
                            <th><img src="images/Asus.jpeg" width="100" height="100"></th>
                            <th><a href="DathangController?MaHang=M01">Mua hang</a></th>
                                <c:url var="buy" value="GiohangController">
                                    <c:param name="mahang" value="M01"></c:param>
                                    <c:param name="tenhang" value="Máy tính Asus"></c:param>
                                    <c:param name="gia" value="2000"></c:param>
                                    <c:param name="action" value="add"></c:param>
                                </c:url>
                            <th><a href="${buy}">Them vao gio hang</a></th>
                        </tr>

                        <br>
                        <tr>
                            <th><a href="ChitietsanphamController?MaHang=M02">M02</a></th>
                            <th><a href="ChitietsanphamController?MaHang=M02">May Tinh Asus1</a></th>
                            <th>Chiếc</th>
                            <th>1900</th>
                            <th><img src="images/Asus1.jpeg" width="100" height="100"></th>
                            <th>
                                <a href="DathangController?MaHang=M02">Mua hang</a>
                            </th>
                            <c:url var="buy" value="GiohangController">
                                <c:param name="mahang" value="M02"></c:param>
                                <c:param name="tenhang" value="Máy tính Asus2"></c:param>
                                <c:param name="gia" value="1900"></c:param>
                                <c:param name="action" value="add"></c:param>
                            </c:url>
                            <th>
                                <a href="${buy}">Them vao gio hang</a>
                            </th>
                        </tr>
                    </table>
                    <br>
                    <br>
                    <input type="submit" name="show" value="Hien thi tat ca san pham">
                    <!-- <button class="button  search">search</button> -->
                    <table border="1" class="d">
                        <br>
                        <c:if test="${not empty product}">
                            <br>
                            <c:forEach var="s" items="${product}">
                                <tr>
                                    <th><a href="ChitietsanphamController?MaHang=${s.code}">${s.code}</a></th>
                                    <th><a href="ChitietsanphamController?MaHang=${s.code}">${s.name}</a></th>
                                    <th>${s.unit}</th>
                                    <th>${s.price}</th>
                                    <th><img src="images/${s.getImage()}" width="100" height="100"></th>
                                    <th>
                                        <a href="DathangController?MaHang=${s.code}">Mua hang</a>
                                    </th>
                                    <c:url var="buy" value="GiohangController">
                                        <c:param name="mahang" value="${s.code}"></c:param>
                                        <c:param name="tenhang" value="${s.name}"></c:param>
                                        <c:param name="gia" value="${s.price}"></c:param>
                                        <c:param name="action" value="add"></c:param>
                                    </c:url>
                                    <th>
                                        <a href="${buy}">Them vao gio hang</a>
                                    </th>
                                </tr>
                            </c:forEach>
                        </c:if>
                    </table>

                    <br>
                    <input type="text" name="timkiem">
                    <input type="submit" name="search" value="Tim kiem">
                    <br>
                    <table border="1" class="d">
                        <br>
                        <c:if test="${not empty lstpro}">
                            <thead>
                                <tr>
                                    <th>Ma hang</th>
                                    <th>Ten hang</th>
                                    <th>DVT</th>
                                    <th>Gia (USD)</th>
                                    <th>Hinh anh</th>
                                </tr>
                            </thead>
                            <br>
                            <c:forEach var="s" items="${lstpro}">
                                <tr>
                                    <td><a href="ChitietsanphamController?MaHang=${s.code}">${s.code}</a></td>
                                    <td><a href="ChitietsanphamController?MaHang=${s.code}">${s.name}</a></td>
                                    <td>${s.unit}</td>
                                    <td>${s.price}</td>
                                    <td><img src="images/${s.getImage()}" width="100" height="100"></td>
                                    <td>
                                        <a href="DathangController?MaHang=${s.code}">Mua hang</a>
                                    </td>
                                    <c:url var="buy" value="GiohangController">
                                        <c:param name="mahang" value="${s.code}"></c:param>
                                        <c:param name="tenhang" value="${s.name}"></c:param>
                                        <c:param name="gia" value="${s.price}"></c:param>
                                        <c:param name="action" value="add"></c:param>
                                    </c:url>
                                    <td>
                                        <a href="${buy}">Them vao gio hang</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:if>
                    </table>
                    <br><br><br>
                    <a href="login.jsp">Dang nhap</a><br>
                    <a href="Customer.jsp">Dang ki khach hang moi</a><br>
                    <a href="Cart.jsp">Gio hang</a><br>
                    <a href="Home.jsp">Trang chu</a>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

