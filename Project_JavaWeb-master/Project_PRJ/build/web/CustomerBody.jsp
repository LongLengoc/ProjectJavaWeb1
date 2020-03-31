<%-- 
    Document   : CustomerBody
    Created on : Mar 28, 2020, 1:10:48 AM
    Author     : HH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <div class="paging">
        <ul class="breadcrumb">
            <li>Dang ki khach hang</li>
        </ul>
    </div>
    <div class="login-info">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <h3>Dang ki khach hang</h3>
                <form action="AddKhachHangController" method="GET">
                    <div class="form-group">
                        <label for="username">Ma khach hang:<span></span></label>
                        <input type="text" class="form-control" id="username" name="Makh">
                    </div>
                    <div class="form-group">
                        <label for="username">Ten khach hang:<span></span></label>
                        <input type="text" class="form-control" id="username" name="Tenkh">
                    </div>
                    <div class="form-group">
                        <label for="username">Gender:<span></span></label>
                        <div>
                            <input type="radio" class="form-control" id="username" name="gender"value="Male"/> Nam
                            <input type="radio" class="form-control" id="username" name="gender"value="Female"/> Nu
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="address">Dia chi:<span></span></label>
                        <input type="text" class="form-control" id="address" name="Diachi">
                    </div>
                    <div class="form-group">
                        <label for="dob">Ngay sinh:<span></span></label>
                        <input type="text" class="form-control" id="dob" name="Ngaysinh">
                    </div>

                    <tr>
                    <button type="submit" class="btn btn-warning" name="tao" value="Tao khach hang">Tạo khách hàng</button>

                    <button type="reset" class="btn btn-warning" value="Reset">Reset</button>
                    </tr>
                    </table>
                    <br>
                    <a href="Buy.jsp">Mua hang</a>

                </form>
            </div>
        </div>
    </div>
</div>