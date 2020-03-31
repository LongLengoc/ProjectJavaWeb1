<%-- 
    Document   : RegisterBody
    Created on : Mar 24, 2020, 11:58:09 PM
    Author     : HH
--%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <div class="paging">
        <ul class="breadcrumb">
            <li><a href="Homepage.jsp">Home</a></li>
            <li>Đăng ký</li>
        </ul>
    </div>
    <div class="login-info">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <h3>Thông tin tài khoản</h3>
                <form action="UserController" method="GET">
                    <div class="form-group">
                        <label for="sname">Account:<span></span></label>
                        <input type="text" class="form-control" id="sname" name="account">
                    </div>
                    <div class="form-group">
                        <label for="password">Password:<span></span></label>
                        <input type="password" class="form-control" id="password" name="password">
                    </div>
                    <div class="form-group">
                        <label for="username">Name:<span></span></label>
                        <input type="text" class="form-control" id="username" name="name">
                    </div>
                    <div class="form-group">
                        <label for="username">Gender:<span></span></label>
                        <div>
                            <input type="radio" class="form-control" id="username" name="gender"value="Male"/> Male
                            <input type="radio" class="form-control" id="username" name="gender"value="Female"/> Female
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="address">Address:<span></span></label>
                        <input type="text" class="form-control" id="address" name="address">
                    </div>
                    <div class="form-group">
                        <label for="dob">Date of birth:<span></span></label>
                        <input type="text" class="form-control" id="dob" name="dob">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-warning" name="dangki" value="Dang ki">ĐĂNG KÝ</button>
                        <button type="reset" class="btn btn-warning" value="Reset">Reset</button>
                    </div>
                    </table>

                    <input type="submit" name="show" value="Hien">
                    <c:if test="${not empty lstUser}">
                        <table border="1">
                            <tr>
                                <td>Account</td>
                                <td>Password</td>
                                <td>Name</td>
                                <td>Gender</td>
                                <td>Address</td>
                                <td>DOB</td>
                            </tr>
                            <c:forEach var="s" items="${lstUser}">
                                <tr>
                                    <td>${s.account}</td>
                                    <td>${s.getPass()}</td>
                                    <td>${s.getName()}</td>
                                    <td>${s.getGender()}</td>
                                    <td>${s.getAddress()}</td>
                                    <td>${ss.getDOB()}</td>
                                </tr>
                            </c:forEach>
                        </table>
                    </c:if>
                    <br>
                    <a href="Home.jsp">Trang chu</a>  


                </form>
            </div>
        </div>
    </div>
</div>