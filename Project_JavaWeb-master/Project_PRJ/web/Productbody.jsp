<%-- 
    Document   : Productbody
    Created on : Mar 28, 2020, 4:21:22 PM
    Author     : HH
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <div class="paging">
        <ul class="breadcrumb">

        </ul>
    </div>
    <div class="login-info">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <h3>Thông tin tài khoản</h3>
                <body>
                    <c:if test="${not empty AddProductSuccess}">
                        <h3 style="color: brown;">${AddProductSuccess}</h3>
                    </c:if>

                    <h1>Them san pham moi</h1>
                    <form action="ThemsanphamController" method="GET">
                        <c:if test="${not empty UpdateProSuccess}">
                            <h3 style="color: brown;">${UpdateProSuccess}</h3>
                        </c:if>
                        <c:if test="${not empty DeleteProSuccess}">
                            <h3 style="color: brown;">${DeleteProSuccess}</h3>
                        </c:if>
                        <div class="form-group">
                            <label for="username">Ma hang:<span></span></label>
                            <input type="text" class="form-control" id="username" name="mahang">

                        </div>
                        <div class="form-group">
                            <label for="username">Ten hang:<span></span></label>
                            <input type="text" class="form-control" id="username" name="tenhang">

                        </div>
                        <div class="form-group">
                            <label for="username">DVT:<span></span></label>
                            <input type="text" class="form-control" id="username" name="dvt">
                        </div>
                        <div class="form-group">
                            <label for="username">Gia:<span></span></label>
                            <input type="text" class="form-control" id="username" name="gia">

                        </div>
                        <div class="form-group">
                            <label for="username">Hinh anh:<span></span></label>
                            <input type="text" class="form-control" id="username" name="hinhanh">
                        </div>
                        <button type="submit" class="btn btn-warning " name="add" value="Them san pham">Them san pham</button>

                        <button type="reset" class="btn btn-warning" value="Reset">Reset</button>

                        </table>
                        <br>
                        <button type="submit" class="btn btn-warning " name="show" value="Hien thi toan bo san pham">Hien thi toan bo san pham</button>


                        <c:if test="${not empty lst}">
                            <thead>
                                <tr>
                                    <th>Ma hang</th>
                                    <th>Ten hang</th>
                                    <th>DVT</th>
                                    <th>Gia (USD)</th>
                                    <th>Hinh anh</th>
                                </tr>
                            </thead>
                            <c:forEach var="s" items="${lst}">
                                <tr>
                                    <td>${s.code}</td>
                                    <td>${s.name}</td>
                                    <td>${s.unit}</td>
                                    <td>${s.price}</td>
                                    <td>${s.image}</td>
                                    <td>
                                        <a href="UpdateSanphamController?mahang=${s.code}">Chinh sua</a>
                                        <a href="DeleteSanPhamController?mahang=${s.code}">Xoa</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:if>
                        </table>
                        <br>
                        <a href="Home.jsp">Trang chu</a>
                    </form>
                </body>
            </div>
        </div>
    </div>
</div>