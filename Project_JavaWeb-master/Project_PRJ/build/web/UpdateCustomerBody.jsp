<%-- 
    Document   : UpdateProductBody
    Created on : Mar 29, 2020, 2:57:14 PM
    Author     : HH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <div class="paging">
        <ul class="breadcrumb">
            
            <li>Cap nhat thong tin khach hang</li>
        </ul>
    </div>
    <div class="login-info">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <h3>Cap nhat thong tin khach hang</h3>
                <form action="update" method="GET">
                    <c:if test="${not empty kh}">

                        <div class="form-group">
                            <label for="username">Ma khach hang:<span></span></label>
                            <input type="text" class="form-control" id="username" name="Makh" value="${kh.maKH}">

                        </div>
                        <div class="form-group">
                            <label for="username">Ten khach hang:<span></span></label>
                            <input type="text" class="form-control" id="username" name="Tenkh" value="${kh.tenKH}">
                        </div>
                        <div class="form-group">
                            <label for="username">Gioi tinh:<span></span></label>
                            <td>Gioi tinh</td>
                            <div>
                                <input type="radio" class="form-control" id="username" name="gender"value="Male"/> Male
                                <input type="radio" class="form-control" id="username" name="gender"value="Female"/> Female
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="username">Dia chi:<span></span></label>
                            <input type="text" class="form-control" id="username" name="Diachi" value="${kh.diachi}">
                        </div>
                        <div class="form-group">
                            <label for="username">Ngay sinh:<span></span></label>
                            <input type="text" class="form-control" id="username" name="Ngaysinh" value="${kh.DOB}">
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-warning" name="capnhat" value="Cap nhat thong tin">CẬP NHẬT</button>
                            <button type="reset" class="btn btn-warning" value="Reset">Reset</button>
                        </div>

                        </table>

                    </c:if>
                    <br>
                    <a href="Home.jsp">Trang chu</a>
                </form>
            </div>
        </div>
    </div>
</div>