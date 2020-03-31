<%-- 
    Document   : LoginBody
    Created on : Mar 24, 2020, 11:02:58 PM
    Author     : HH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <div class="paging">
        <ul class="breadcrumb">
     
            <li>Đăng nhập</li>
        </ul>
    </div>
    <div class="login-info">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <h3>Thông tin tài khoản</h3>
                <h4 class="error">${errorLogin}</h4>
                <form action="DangnhapController" id="loginForm" method="POST">
                    <c:if test="${not empty Loginfail}">
                        <h3 style="color: red;">${Loginfail}</h3>
                    </c:if>
                    <div class="form-group">
                        <label for="username">Tên đăng nhập:<span></span></label>
                        <input type="text" class="form-control" id="username" name="username">
                    </div>
                    <div class="form-group">
                        <label for="password">Mật khẩu:<span></span></label>
                        <input type="password" class="form-control" id="password" name="password">
                    </div>
                    <button type="submit" class="btn btn-warning " name="login" value="Dang nhap">ĐĂNG NHẬP</button>
                    <button type="reset" class="btn btn-warning" value="Reset">Reset</button>
                </form>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <h3>Bạn chưa có tài khoản ?</h3>
                <p>Đăng ký tài khoản để mua hàng nhanh hơn. Theo dõi đơn đặt hàng, vận chuyển. 
                    Cập nhật các tin tức sự kiện và các chương trình giảm giá của chúng tôi.</p>
                <button type="button" class="btn btn-warning" name="dangki" ><a href="Register.jsp">ĐĂNG KÝ</a></button>
            </div>
        </div>
    </div>
</div>