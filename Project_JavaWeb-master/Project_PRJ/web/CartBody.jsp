<%-- 
    Document   : CartBody
    Created on : Mar 25, 2020, 11:35:23 PM
    Author     : HH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<div class="container">
    <div class="paging">
        <ul class="breadcrumb">
            <li>Giỏ hàng</li>
        </ul>
    </div>
    <div class="cart-info">
        <h4>Thông tin giỏ hàng</h4>
        <table class="table table-bordered">
            <form action="GiohangController" method="GET">
                <c:if test="${empty sessionScope.cart}">
                    <h4>Gio hang hien tai cua ban dang trong, hay quay lai <a href="BuyBody.jsp">mua hang</a></h4>
                </c:if>
                <c:if test="${not empty sessionScope.cart}">
                    <thead>
                        <tr>
                            <th>Ma hang</th>
                            <th>Ten hang</th>
                            <th>Gia</th>
                            <th>So luong</th>
                            <th>Don gia</th>
                        </tr>
                    </thead>
                    <c:forEach var="x" items="${sessionScope.cart.items}">
                        <tr>
                            <td>${x.mahang}</td>
                            <td>${x.tenhang}</td>
                            <td>${x.gia}</td>
                            <td>${x.soluong}</td>
                            <td>${x.gia * x.soluong}</td>
                        </tr>
                    </c:forEach>                    
                    <tr>
                        <td colspan="5">Total: ${sessionScope.cart.amount}</td>
                    </tr>
            </table> 
            <br>
            <br><br>    
            <h3>Thanh toan don hang</h3>
            <br><br>
            <c:if test="${not empty sessionScope.kh}">
                <div class="form-group">
                    <label for="username">Ten khach hang:<span></span></label>
                    <input type="text" class="form-control" id="username" name="khachhang" value="${sessionScope.kh.tenKH}">
                </div>
                <div class="form-group">
                    <label for="username">So dien thoai:<span></span></label>
                    <input type="text" class="form-control" id="username" name="sodienthoai">
                </div> 
                <div class="form-group">
                    <label for="username">Dia chi lien he:<span></span></label>
                    <input type="text" class="form-control" id="username" name="diachi" value="${sessionScope.kh.diachi}">
                </div> 
                <button type="submit" class="btn btn-warning " name="xacnhan" value="Xac nhan mua hang">Xác nhận mua hàng</button>
                </table>
            </c:if>
        </c:if>

        <br>
        <a href="BuyBody.jsp">Tiep tuc mua hang</a><br>
        </form>
        </body>
    </div>
</div>
