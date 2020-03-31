<%-- 
    Document   : HomeContent
    Created on : Mar 24, 2020, 9:00:36 PM
    Author     : HH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <style type="text/css">
        table.d {
            table-layout: fixed;
            width: 100%;  
        }
        th,td {
            text-align: center;
        }     
    </style>
</head>
<div class="container">
    <div class="paging">
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

            <h3>Mot so mat hang noi bat</h3>
            <table border="1" class="d">
                <tr>
                    <th>Ma hang</th>
                    <th>Ten hang</th>
                    <th>DVT</th>
                    <th>Gia (USD)</th>
                    <th>Hinh anh</th>
                </tr>
                <tr>
                    <td><a href="ChitietsanphamController?MaHang=M01">M01</a></td>
                    <td><a href="ChitietsanphamController?MaHang=M01">May tinh Asus</a></td>
                    <th>Chiec</th>
                    <th>2000</th>
                    <td><img src="images/Asus.jpeg" width="100" height="100"></td>
                </tr>
                <tr>
                    <td>
                        <a href="DathangController?MaHang=M01">Mua hang</a>
                    </td>
                    <c:url var="buy" value="GiohangController">
                        <c:param name="mahang" value="M01"></c:param>
                        <c:param name="tenhang" value="May tinh Asus"></c:param>
                        <c:param name="gia" value="2000"></c:param>
                        <c:param name="action" value="add"></c:param>
                    </c:url>
                    <td>
                        <a href="${buy}">Them vao gio hang</a>
                    </td>
                </tr>
                <br>
                <tr>
                    <td><a href="ChitietsanphamController?MaHang=M02">M02</a></td>
                    <td><a href="ChitietsanphamController?MaHang=M02">May tinh Asus2</a></td>
                    <td>Chiec</td>
                    <td>1900</td>
                    <td><img src="images/Asus1.jpeg" width="100" height="100"></td>
                    <td>
                        <a href="DathangController?MaHang=M02">Mua hang</a>
                    </td>
                    <c:url var="buy" value="GiohangController">
                        <c:param name="mahang" value="M02"></c:param>
                        <c:param name="tenhang" value="May tinh Asus2"></c:param>
                        <c:param name="gia" value="1900"></c:param>
                        <c:param name="action" value="add"></c:param>
                    </c:url>
                    <td>
                        <a href="${buy}">Them vao gio hang</a>
                    </td>
                </tr>
            </table>
