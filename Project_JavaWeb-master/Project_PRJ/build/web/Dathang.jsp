<%-- 
    Document   : Dathang
    Created on : Mar 8, 2020, 4:42:50 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
    <div class="paging">
        <ul class="breadcrumb">
            <li><a href="HomePage.jsp">Home</a></li>
            <li>Dat hang</li>
        </ul>
    </div>
    <div class="login-info">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <h3>Dat hang san pham</h3>


                <form action="DathangController" method="GET">
                    <c:if test="${not empty mahang}">
                        <div class="form-group">
                            <label for="username">Ma KH:<span></span></label>
                            <input type="text" class="form-control" id="username" name="makh">
                        </div>
                        <div class="form-group">
                            <label for="username">Ma hang:<span></span></label>
                            <input type="text" class="form-control" id="username" name="mahang" value="${mahang.code}">

                        </div>
                        <div class="form-group">
                            <label for="username">Ten hang:<span></span></label>
                             <input type="text" class="form-control" id="username" name="tenhang" value="${mahang.name}">
                        </div>
                       <div class="form-group">
                           <label for="username">Gia:<span></span></label>
                          <input type="text" class="form-control" id="username" name="gia" value="${mahang.price}">
                    
                        </div>
                        <div class="form-group">
                            <label for="username">So luong:<span></span></label>
                            <input type="text" class="form-control" id="username" name="soluong" >
                          
                        </div>
                        </table>
                    </c:if>
                    <input type="submit" name="xacnhan" value="Xac nhan">
                    <br>
                    <a href="Buy.jsp">Quay lai mua hang</a>
                </form>
                </body>
               
