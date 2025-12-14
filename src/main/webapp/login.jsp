<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
    request.setCharacterEncoding("UTF-8");

    // Kiểm tra đăng nhập
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Boolean loggedIn = (session.getAttribute("loggedIn") != null) ? (Boolean) session.getAttribute("loggedIn") : false;
    String loginError = "";

    if(username != null && password != null) {
        if(username.equals("admin") && password.equals("admin123")) {
            session.setAttribute("loggedIn", true);
            loggedIn = true;
        } else {
            loginError = "Tên đăng nhập hoặc mật khẩu sai!";
        }
    }

    // Giả lập danh sách phòng đã đặt (nếu chưa có DB)
    class Booking {
        String fullname, phone, room, checkin, checkout, payment, price;
        Booking(String f,String p,String r,String ci,String co,String pay,String pr){
            fullname=f;phone=p;room=r;checkin=ci;checkout=co;payment=pay;price=pr;
        }
    }

    List<Booking> bookings = (List<Booking>) application.getAttribute("bookings");
    if(bookings == null) {
        bookings = new ArrayList<>();
        application.setAttribute("bookings", bookings);
    }

    // Nếu form booking gửi đến, lưu vào danh sách
    if(request.getParameter("addBooking") != null) {
        String f = request.getParameter("fullname");
        String p = request.getParameter("phone");
        String r = request.getParameter("room");
        String ci = request.getParameter("checkin");
        String co = request.getParameter("checkout");
        String pay = request.getParameter("payment");
        String pr = request.getParameter("price");
        bookings.add(new Booking(f,p,r,ci,co,pay,pr));
    }
%>

<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<title>Admin Login - TT Hotel</title>
<link rel="stylesheet" href="login.css">
</head>
<body>

<header>
    <div class="logo">
        <img src="images/logo.png" alt="Logo TT Hotel" />
    </div>
    <nav>
        <ul>
            <li><a href="index.jsp">Trang chủ</a></li>
            <li><a href="dsphong.jsp">Phòng</a></li>
            <li><a href="about.jsp">Giới thiệu</a></li>
            <li><a href="contact.jsp">Liên hệ</a></li>
            <li><a href="booking.jsp">Đặt ngay</a></li>
            <li><a href="login.jsp" class="active login-btn">Admin</a></li>
        </ul>
    </nav>
</header>

<main class="login-container">

<% if(!loggedIn) { %>
    <h2>Đăng nhập Admin</h2>
    <form action="admin" method="post" class="login-form">
        <label>Tên đăng nhập:</label>
        <input type="text" name="username" required>
        <label>Mật khẩu:</label>
        <input type="password" name="password" required>
        <button type="submit" class="btn-login">Đăng nhập</button>
        <p style="color:red;"><%= loginError %></p>
    </form>
<% } else { %>
    <h2>Danh sách phòng đã đặt</h2>
    <form method="post">
        <button type="submit" name="logout" class="btn-logout">Đăng xuất</button>
    </form>

    <% if(request.getParameter("logout") != null) { 
        session.invalidate();
        response.sendRedirect("login.jsp");
    } %>

    <table class="booking-table">
        <tr>
            <th>Họ và tên</th>
            <th>Số điện thoại</th>
            <th>Loại phòng</th>
            <th>Check-in</th>
            <th>Check-out</th>
            <th>Phương thức</th>
            <th>Giá (VNĐ)</th>
        </tr>
        <% for(Booking b : bookings) { %>
        <tr>
            <td><%= b.fullname %></td>
            <td><%= b.phone %></td>
            <td><%= b.room %></td>
            <td><%= b.checkin %></td>
            <td><%= b.checkout %></td>
            <td><%= b.payment %></td>
            <td><%= b.price %></td>
        </tr>
        <% } %>
    </table>
<% } %>

</main>

</body>
</html>