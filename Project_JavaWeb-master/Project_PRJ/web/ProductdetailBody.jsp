<%-- 
    Document   : ProductdetailBody
    Created on : Mar 29, 2020, 4:54:09 PM
    Author     : HH
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <div class="paging">
        <ul class="breadcrumb">
            <li>Chi tiet san pham</li>
        </ul>
    </div>
    <div class="login-info">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <h3>Chi tiet san pham</h3>
                <form action="ChitietsanphamController" method="GET">
                    <c:if test="${not empty product}">
                        <table border="1">
                            <tr>
                                <td>Ma hang</td>
                                <td>Ten hang</td>
                                <td>DVT</td>
                                <td>Gia (USD)</td>
                                <td>Hinh anh</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>${product.code}</td>
                                <td>${product.name}</td>
                                <td>${product.unit}</td>
                                <td>${product.price}</td>
                                <td><img src="images/${s.getImage()}" width="100" height="100"></td>
                                <td>
                                    <a href="DathangController?MaHang=${product.code}">Mua hang</a>
                                </td>
                            </tr>
                        </table>
                    </c:if>
                    <br>
                    <a href="Buy.jsp">Quay lai mua hang</a>
                </form>
            </div>
        </div>
    </div>
</div>