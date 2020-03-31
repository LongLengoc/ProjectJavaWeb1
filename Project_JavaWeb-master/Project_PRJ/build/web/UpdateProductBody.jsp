<%-- 
    Document   : UpdateProductBody
    Created on : Mar 29, 2020, 3:23:30 PM
    Author     : HH
--%>

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
                <form action="UpdateSanphamController" method="GET">
                    <c:if test="${not empty product1}">
                        <div class="form-group">
                            <label for="username">Ma khach hang:<span></span></label>
                            <input type="text" class="form-control" id="username" name="mahang" value="${product1.code}">

                        </div>

                        <div class="form-group">
                            <label for="username">Ten khach hang:<span></span></label>
                            <input type="text" class="form-control" id="username" name="tenhang" value="${product1.name}">
                        </div>

                        <div class="form-group">
                            <label for="username">DVT:<span></span></label>
                            <input type="text" class="form-control" id="username" name="dvt" value="${product1.unit}">
                        </div>

                        <div class="form-group">
                            <label for="username">Gia:<span></span></label>
                            <input type="text" class="form-control" id="username" name="gia" value="${product1.price}">
                        </div>

                        <div class="form-group">
                            <label for="username">Hinh anh:<span></span></label>
                            <input type="text" class="form-control" id="username" name="hinhanh" value="${product1.image}">
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-warning" name="capnhat" value="Cap nhat">CẬP NHẬT</button>
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