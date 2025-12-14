<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liên hệ - TT Hotel</title>
    <link rel="stylesheet" href="contact.css">
</head>
<body>

    <!-- Header -->
    <header>
        <div class="logo">
            <img src="images/logo.png" alt="Logo Khách sạn" />
        </div>
        <nav>
            <ul>
                <li><a href="index.jsp">Trang chủ</a></li>
                <li><a href="dsphong.jsp">Phòng</a></li>
                <li><a href="about.jsp">Giới thiệu</a></li>
                <li><a href="contact.jsp" class="active">Liên hệ</a></li>
                <li><a href="booking.jsp">Đặt ngay</a></li>
                <li><a href="login.jsp" class="login-btn">Đăng nhập</a></li>
            </ul>
        </nav>
    </header>

    <main>

        <!-- Hình ảnh -->
        <section class="contact-banner">
            <img src="images/contact.jpg" alt="Liên hệ khách sạn">
        </section>

        <!-- Câu chào -->
        <section class="contact-intro">
            <h1>Liên hệ với TT Hotel</h1>
            <p>Chúng tôi luôn sẵn sàng hỗ trợ bạn 24/7. Hãy liên hệ khi bạn cần!</p>
        </section>

        <!-- Thông tin liên hệ -->
        <section class="contact-info">

            <div class="info-item">
                <img src="images/icon-location.png" class="icon" alt="Địa chỉ">
                <div>
                    <h3>Địa chỉ</h3>
                    <p>123 Nguyễn Văn Linh, Quận 7, TP. Hồ Chí Minh</p>
                </div>
            </div>

            <div class="info-item">
                <img src="images/icon-phone.png" class="icon" alt="Điện thoại">
                <div>
                    <h3>Số điện thoại</h3>
                    <p>0123 456 789</p>
                </div>
            </div>

            <div class="info-item">
                <img src="images/icon-email.png" class="icon" alt="Email">
                <div>
                    <h3>Email</h3>
                    <p>support@tthotel.com</p>
                </div>
            </div>

        </section>

    </main>

</body>
</html>