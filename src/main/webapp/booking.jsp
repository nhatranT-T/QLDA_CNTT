<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    String selectedRoom = request.getParameter("room");
    if (selectedRoom == null) selectedRoom = "";
%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<title>Đặt phòng - TT Hotel</title>
<link rel="stylesheet" href="booking.css">
</head>
<body>

<header>
    <div class="logo">
        <img src="images/logo.png" alt="Logo">
    </div>
    <nav>
        <ul>
            <li><a href="index.jsp">Trang chủ</a></li>
            <li><a href="dsphong.jsp">Phòng</a></li>
            <li><a href="about.jsp">Giới thiệu</a></li>
            <li><a href="contact.jsp">Liên hệ</a></li>
            <li><a href="booking.jsp" class="active">Đặt ngay</a></li>
            <li><a href="login.jsp" class="login-btn">Đăng nhập</a></li>
        </ul>
    </nav>
</header>

<main class="container">
<h1>Đặt phòng ngay</h1>
<form action="booking" method="post" class="booking-form">

    <label>Họ và tên:</label>
    <input type="text" name="fullname" required>

    <label>Số điện thoại:</label>
    <input type="text" name="phone" required>

    <label>Ngày Check-in:</label>
    <input type="date" name="checkin" id="checkin" required>

    <label>Ngày Check-out:</label>
    <input type="date" name="checkout" id="checkout" required>

    <label>Chọn loại phòng</label>
    <select name="room" id="roomSelect" required>
        <option value="Phòng Superior" <%= selectedRoom.equals("Phòng Superior") ? "selected" : "" %>>Phòng Superior</option>
        <option value="Phòng Deluxe" <%= selectedRoom.equals("Phòng Deluxe") ? "selected" : "" %>>Phòng Deluxe</option>
        <option value="Phòng Family" <%= selectedRoom.equals("Phòng Family") ? "selected" : "" %>>Phòng Family</option>
        <option value="Phòng Suite" <%= selectedRoom.equals("Phòng Suite") ? "selected" : "" %>>Phòng Suite</option>
        <option value="Phòng Executive" <%= selectedRoom.equals("Phòng Executive") ? "selected" : "" %>>Phòng Executive</option>
    </select>

    <label>Số tiền (VNĐ):</label>
    <input type="text" id="price" name="price" readonly style="background:#f0f0f0; font-weight:bold;">

    <label>Phương thức thanh toán:</label>
    <select name="payment" required>
        <option value="">-- Chọn --</option>
        <option>Tiền mặt</option>
        <option>Chuyển khoản</option>
    </select>

    <button type="submit" class="btn-book">Xác nhận đặt phòng</button>
</form>
</main>

<script>
// Giá phòng theo loại (trùng với dsphong.jsp)
const roomPrices = {
    "Phòng Superior": 1000000,
    "Phòng Deluxe": 1500000,
    "Phòng Family": 2000000,
    "Phòng Suite": 3000000,
    "Phòng Executive": 2500000
};

function calculatePrice() {
    const room = document.getElementById("roomSelect").value;
    const checkin = new Date(document.getElementById("checkin").value);
    const checkout = new Date(document.getElementById("checkout").value);
    const priceInput = document.getElementById("price");

    if (!isNaN(checkin) && !isNaN(checkout) && checkout > checkin) {
        const nights = (checkout - checkin) / (1000 * 3600 * 24);
        const price = nights * roomPrices[room];
        priceInput.value = price.toLocaleString("vi-VN") + " đ";
    } else {
        priceInput.value = "";
    }
}

// Gọi khi thay đổi phòng hoặc ngày
document.getElementById("roomSelect").addEventListener("change", calculatePrice);
document.getElementById("checkin").addEventListener("change", calculatePrice);
document.getElementById("checkout").addEventListener("change", calculatePrice);

// Tính luôn khi load trang (nếu có phòng mặc định)
window.onload = calculatePrice;
</script>

</body>
</html>
