<%-- 
    Document   : ShowCustomerBody
    Created on : Mar 29, 2020, 4:15:42 PM
    Author     : HH
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <div class="paging">
        <ul class="breadcrumb">
         
            <li>Cap nhat thong tin san pham</li>
        </ul>
    </div>
    <div class="login-info">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <h3>Cap nhat thong tin san pham</h3>
                <form action="EditKhachHangController" method="GET">
                    <input type="submit" name="selectAll" value="Hien thi thong tin khach hang">
                    <table border="1">
                        <c:if test="${not empty lstKh}">
                            <tr>
                                <td>Ma khach hang</td>
                                <td>Ten khach hang</td>
                                <td>Gioi tinh</td>
                                <td>Dia chi</td>
                                <td>Ngay sinh</td>
                                <td></td>
                            </tr>
                            <c:forEach var="s" items="${lstKh}">
                                <tr>
                                    <td>${s.maKH}</td>
                                    <td>${s.tenKH}</td>
                                    <td>${s.gioitinh}</td>
                                    <td>${s.diachi}</td>
                                    <td>${s.DOB}</td>
                                    <td>
                                        <a href="update?maKH=${s.maKH}">Update</a>
                                        <a href="delete?maKH=${s.maKH}">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:if>
                    </table>
                    <br>
                    <a href="Home.jsp">Trang chu</a>
                </form>
            </div>
        </div>
    </div>
</div>
