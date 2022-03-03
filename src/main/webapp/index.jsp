<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.codegym.Customer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", "/img/mai_van_hoan.png"));
    customers.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "/img/nguyen_van_nam.png"));
    customers.add(new Customer("Nguyễn Thái Hòa", "1983-08-22", "Nam Định", "/img/nguyen_thai_hoa.jpg"));
    customers.add(new Customer("Trần Đăng Khoa", "1983-08-17", "Hà Tây", "/img/tran-dang-khoa.jpg"));
    customers.add(new Customer("Nguyễn Đình Thi", "1983-08-19", "Hà Nội", "/img/nguyen_dinh_thi.jpg"));
    pageContext.setAttribute("customer", customers);
%>
<%--<table>--%>
<%--    <tr>--%>
<%--        <td>Họ Tên</td>--%>
<%--        <td>Ngày Sinh</td>--%>
<%--        <td>Địa chỉ</td>--%>
<%--        <td>Ảnh</td>--%>
<%--    </tr>--%>
<%--    <c:forEach var="customer" items="${customer}">--%>
<%--        <tr>--%>
<%--            <td>${customer.name}</td>--%>
<%--            <td>${customer.dateOfBirth}</td>--%>
<%--            <td>${customer.address}</td>--%>
<%--            <td><img src="${customer.image}" alt="ảnh khách hàng" width="300" height="250px"></td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--</table>--%>
<table class="table">
    <thead>
    <tr>
        <th>Họ Tên</th>
        <th>Ngày Sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${customer}">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.dateOfBirth}</td>
            <td>${customer.address}</td>
            <td><img src="${customer.image}" alt="ảnh khách hàng" width="300" height="250px"></td>
        </tr>
    </c:forEach>

    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
