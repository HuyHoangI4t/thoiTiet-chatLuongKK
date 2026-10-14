# Ứng dụng Dự báo Thời tiết & Theo dõi Chất lượng Không khí
## Weather & Air Quality Application

> **Đồ án cá nhân / Personal Academic Project**  
> Ứng dụng theo dõi thời tiết, dự báo và giám sát chất lượng không khí (AQI) đa nền tảng được xây dựng bằng Flutter.

---

## 🇻🇳 Tiếng Việt

### 1. Giới thiệu đề tài
Ứng dụng **Weather & Air Quality** là giải pháp hỗ trợ người dùng theo dõi tình hình thời tiết và chất lượng không khí tại vị trí hiện tại hoặc bất kỳ khu vực nào trên thế giới theo thời gian thực. Giao diện được thiết kế theo phong cách hiện đại Material You, tối ưu trải nghiệm người dùng và hỗ trợ hoạt động mượt mà ngay cả khi không có kết nối mạng nhờ cơ chế lưu trữ ngoại tuyến.

### 2. Tính năng chính
* **Dự báo thời tiết chi tiết**: Xem thời tiết hiện tại, theo từng giờ và dự báo dài ngày (nhiệt độ, độ ẩm, sức gió, chỉ số UV, khả năng mưa...).
* **Giám sát chất lượng không khí (AQI)**: Cung cấp chỉ số bụi mịn PM2.5, PM10, CO, NO₂, O₃, SO₂ theo tiêu chuẩn quốc tế (Châu Âu / Hoa Kỳ) kèm khuyến cáo sức khỏe.
* **Bản đồ thời tiết tương tác**: Tích hợp OpenStreetMap trực quan hiển thị vị trí và thời tiết các thành phố lưu trữ.
* **Tìm kiếm & Quản lý địa điểm**: Tìm kiếm thành phố dễ dàng, lưu danh sách địa điểm yêu thích không giới hạn với thao tác kéo thả sắp xếp.
* **Lưu trữ ngoại tuyến (Offline Storage)**: Tự động lưu trữ dữ liệu thời tiết cục bộ, cho phép xem lại nhanh chóng khi mất mạng.
* **Cá nhân hóa giao diện**: Hỗ trợ giao diện sáng/tối (Dark/Light), chế độ AMOLED, bảng màu động Material You và hỗ trợ 2 ngôn ngữ: Tiếng Việt và Tiếng Anh.

### 3. Công nghệ sử dụng
* **Ngôn ngữ & Framework**: Flutter (Dart)
* **Quản lý trạng thái (State Management)**: Riverpod
* **Lưu trữ dữ liệu cục bộ (Local Database)**: Isar Database
* **Dữ liệu thời tiết & AQI**: Open-Meteo RESTful API (hoàn toàn miễn phí, không yêu cầu API key)
* **Bản đồ**: OpenStreetMap (`flutter_map`)
* **Đa ngôn ngữ (Localization)**: Slang (Tiếng Việt `vi_VN` & Tiếng Anh `en_US`)

---

## 🇬🇧 English

### 1. Overview
The **Weather & Air Quality App** is a cross-platform mobile and desktop application that delivers real-time weather forecasts and air pollution tracking. Built with modern Flutter components and Material You design, it provides an intuitive, highly responsive experience with offline caching capabilities.

### 2. Key Features
* **Accurate Weather Forecasts**: Real-time conditions, hourly forecasts, and extended daily forecasts (temperature, feels-like, humidity, wind, UV index, precipitation).
* **Air Quality Index (AQI)**: Fine particulate tracking (PM2.5, PM10) and pollutant breakdown (CO, NO₂, O₃, SO₂) adhering to European and US standards with health recommendations.
* **Interactive Weather Map**: OpenStreetMap integration showing weather markers for saved locations with GPS support.
* **City Management**: Search, save, and reorder favourite cities.
* **Offline Caching**: Fast local cache ensuring weather information is always accessible offline.
* **Modern UI & Personalization**: Material You dynamic colors, AMOLED dark mode, and bilingual support (Vietnamese & English).

### 3. Tech Stack
* **Language & Framework**: Flutter (Dart)
* **State Management**: Riverpod
* **Local Storage**: Isar Database
* **APIs**: Open-Meteo RESTful APIs (Weather, Air Quality & Geocoding)
* **Map**: OpenStreetMap (`flutter_map`)
* **Localization**: Slang (`vi_VN` & `en_US`)

---

## 🚀 Hướng dẫn cài đặt & Chạy ứng dụng (Getting Started)

### Yêu cầu môi trường (Prerequisites)
* Flutter SDK 3.44+ / Dart 3.12+
* Thiết bị Android, giả lập (Emulator), hoặc môi trường Desktop (Windows/macOS/Linux)

### Các bước thực hiện (Installation Steps)
```bash
# 1. Tải các gói thư viện phụ thuộc
flutter pub get

# 2. Sinh mã nguồn tự động (Đa ngôn ngữ & Data Models)
dart run slang
dart run build_runner build --delete-conflicting-outputs

# 3. Chạy ứng dụng
flutter run
```

---

## 📜 Tham khảo & Ghi công (References & Credits)
Dự án được thực hiện phục vụ mục đích học tập và nghiên cứu cá nhân.
* Tham khảo kiến trúc mã nguồn và giải pháp tích hợp Open-Meteo API từ dự án mã nguồn mở **[Rain](https://github.com/darkmoonight/Rain)** của tác giả **darkmoonight** (phát hành theo giấy phép [MIT License](LICENSE)).
* Nguồn dữ liệu thời tiết & chất lượng không khí: [Open-Meteo](https://open-meteo.com/).
