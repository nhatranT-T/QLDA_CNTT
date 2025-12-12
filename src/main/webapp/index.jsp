<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Khách sạn TT Hotel</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <!-- Header / Thanh trạng thái -->
    <header>
        <div class="logo">
            <img src="images/logo.png" alt="Logo Khách sạn" />
        </div>
        <nav>
            <ul>
                <li><a href="index.jsp" class="active">Trang chủ</a></li>
                <li><a href="dsphong.jsp">Phòng</a></li>
                <li><a href="about.jsp">Giới thiệu</a></li>
                <li><a href="contact.jsp">Liên hệ</a></li>
                <li><a href="booking.jsp">Đặt ngay</a></li>
                <li><a href="login.jsp" class="login-btn">Đăng nhập</a></li>
            </ul>
        </nav>
    </header>

    <!-- Hình ảnh banner -->
    <section class="banner">
        <img src="https://plus.unsplash.com/premium_photo-1661964071015-d97428970584?q=80&w=1020&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Khách sạn TT Hotel">
    </section>

    <!-- Nội dung khác -->
    <main>
        <h1>Chào mừng đến với TT Homestay</h1>
        <p>Đặt phòng ngay để trải nghiệm dịch vụ tuyệt vời tại khách sạn của chúng tôi.</p>
    </main>
    <footer id="footer">
        <div class="footer-content">
            <div class="footer-section about">
                <h3>Về TT Homestay</h3>
                <p>Khách sạn hàng đầu, mang đến sự thoải mái và tiện nghi vượt trội cho mọi du khách.</p>
            </div>
            <div class="footer-section links">
                <h3>Liên kết</h3>
                <ul>
                    <li><a href="#">Giới Thiệu</a></li>
                    <li><a href="#">Xem Phòng</a></li>
                    <li><a href="contact.jsp">Tin Tức</a></li>
                    <li><a href="dsphong.jsp">Liên Hệ</a></li>
                </ul>
            </div>
            <div class="footer-section contact">
                <h3>Liên hệ</h3>
                <p><i class="fas fa-map-marker-alt"></i> Địa chỉ: 26 Trần Phú, Nha Trang, Việt Nam.</p>
                <p><i class="fas fa-phone"></i> Điện thoại: [84] 321 456 987</p>
                <p><i class="fas fa-envelope"></i> Email: tthomestay@hcmuaf.edu.vn</p>
            </div>
        </div>
        <div class="footer-bottom">
            &copy; Copyright ©2025 by TT Homestay | All Right Reserves
        </div>
    </footer>
</body>
</html>
