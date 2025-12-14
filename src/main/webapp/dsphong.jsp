<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách phòng - TT Hotel</title>
    <link rel="stylesheet" href="dsphong.css">
</head>
<body>
    <!-- Header giống trang chủ -->
    <header>
        <div class="logo">
            <img src="images/logo.png" alt="Logo Khách sạn" />
        </div>
        <nav>
            <ul>
                <li><a href="index.jsp">Trang chủ</a></li>
                <li><a href="dsphong.jsp" class="active">Phòng</a></li>
                <li><a href="about.jsp">Giới thiệu</a></li>
                <li><a href="contact.jsp">Liên hệ</a></li>
                <li><a href="booking.jsp">Đặt ngay</a></li>
                <li><a href="login.jsp" class="login-btn">Đăng nhập</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <h1>Danh sách phòng</h1>

        <div class="room-list">
            <!-- Phòng 1 -->
            <div class="room-card">
                <img src="images/room1.jpg" alt="Phòng Superior">
                <div class="room-info">
                    <h2>Phòng Superior</h2>
                    <p>Giá: 1,000,000 VND/đêm</p>
                    <p>Số lượng người: 2</p>
                    <p>Mô tả: Phòng rộng rãi, có ban công hướng thành phố, tiện nghi đầy đủ.</p>
                    <a href="booking.jsp?room=Phòng Superior" class="btn-book">Đặt ngay</a>
                </div>
            </div>

            <!-- Phòng 2 -->
            <div class="room-card">
                <img src="images/room2.jpg" alt="Phòng Deluxe">
                <div class="room-info">
                    <h2>Phòng Deluxe</h2>
                    <p>Giá: 1,500,000 VND/đêm</p>
                    <p>Số lượng người: 3</p>
                    <p>Mô tả: Phòng sang trọng với giường king size và phòng tắm hiện đại.</p>
                    <a href="booking.jsp?room=Phòng Deluxe" class="btn-book">Đặt ngay</a>
                </div>
            </div>

            <!-- Phòng 3 -->
            <div class="room-card">
                <img src="images/room3.jpg" alt="Phòng Family">
                <div class="room-info">
                    <h2>Phòng Family</h2>
                    <p>Giá: 2,000,000 VND/đêm</p>
                    <p>Số lượng người: 4</p>
                    <p>Mô tả: Phòng dành cho gia đình, không gian thoải mái với 2 giường đôi.</p>
                     <a href="booking.jsp?room=Phòng Family" class="btn-book">Đặt ngay</a>
                </div>
            </div>

            <!-- Phòng 4 -->
            <div class="room-card">
                <img src="images/room4.jpg" alt="Phòng Suite">
                <div class="room-info">
                    <h2>Phòng Suite</h2>
                    <p>Giá: 3,000,000 VND/đêm</p>
                    <p>Số lượng người: 2</p>
                    <p>Mô tả: Phòng cao cấp với phòng khách riêng, tiện nghi đầy đủ và view đẹp.</p>
                    <a href="booking.jsp?room=Phòng Suite" class="btn-book">Đặt ngay</a>
                </div>
            </div>

            <!-- Phòng 5 -->
            <div class="room-card">
                <img src="images/room5.jpg" alt="Phòng Executive">
                <div class="room-info">
                    <h2>Phòng Executive</h2>
                    <p>Giá: 2,500,000 VND/đêm</p>
                    <p>Số lượng người: 2</p>
                    <p>Mô tả: Phòng hiện đại với thiết kế sang trọng, thích hợp cho doanh nhân.</p>
                    <a href="booking.jsp?room=Phòng Executive" class="btn-book">Đặt ngay</a>
                </div>
            </div>
        </div>
    </main>
</body>
</html>