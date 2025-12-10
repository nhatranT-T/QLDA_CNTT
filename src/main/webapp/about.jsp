<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giới thiệu - TT Hotel</title>
    <link rel="stylesheet" href="about.css">
</head>
<body>

    <!-- Header giống index -->
    <header>
        <div class="logo">
            <img src="images/logo.png" alt="Logo Khách sạn" />
        </div>
        <nav>
            <ul>
                <li><a href="index.jsp">Trang chủ</a></li>
                <li><a href="dsphong.jsp">Phòng</a></li>
                <li><a href="about.jsp" class="active">Giới thiệu</a></li>
                <li><a href="contact.jsp">Liên hệ</a></li>
                <li><a href="booking.jsp">Đặt ngay</a></li>
                <li><a href="login.jsp" class="login-btn">Đăng nhập</a></li>
            </ul>
        </nav>
    </header>

    <main>

        <!-- Giới thiệu lịch sử -->
        <section class="intro">
            <h1>Giới thiệu về TT Hotel</h1>
            <p>
                TT Hotel được thành lập vào năm 2010 với sứ mệnh mang đến cho khách hàng một không gian nghỉ dưỡng thoải mái, 
                sang trọng và hiện đại. Trải qua hơn 10 năm hình thành và phát triển, chúng tôi luôn nỗ lực không ngừng để 
                trở thành một trong những khách sạn hàng đầu trong khu vực.
            </p>
            <p>
                Với đội ngũ nhân viên chuyên nghiệp và tận tâm, cùng hệ thống phòng ốc đa dạng và tiện nghi, TT Hotel tự hào 
                mang đến những trải nghiệm tuyệt vời cho khách du lịch, gia đình và doanh nhân.
            </p>
        </section>

        <!-- Hình ảnh đẹp -->
        <section class="gallery">
            <h2>Hình ảnh nổi bật</h2>
            <div class="gallery-container">
                <img src="images/hotel1.jpg" alt="Hình khách sạn">
                <img src="images/hotel2.jpg" alt="Hình nội thất">
                <img src="images/hotel3.jpg" alt="Hình hồ bơi">
            </div>
        </section>

        <!-- Thông tin cổ đông -->
        <section class="owner-section">
            <h2>Cổ đông sáng lập</h2>
            <div class="owner-container">

                <!-- Cổ đông 1 -->
                <div class="owner-card">
                    <img src="images/owner1.jpg" alt="Cổ đông 1">
                    <h3>Nguyễn Văn A</h3>
                    <p>Chức vụ: Chủ tịch Hội Đồng Quản Trị</p>
                </div>

                <!-- Cổ đông 2 -->
                <div class="owner-card">
                    <img src="images/owner2.jpg" alt="Cổ đông 2">
                    <h3>Trần Thị B</h3>
                    <p>Chức vụ: Giám đốc Điều Hành</p>
                </div>

            </div>
        </section>

    </main>

</body>
</html>