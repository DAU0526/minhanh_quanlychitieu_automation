# Kiểm Thử Tự Động Hệ Thống Quản Lý Chi Tiêu

## Giới thiệu dự án

Dự án kiểm thử tự động cho hệ thống Quản lý Chi tiêu cá nhân, được xây dựng trong quá trình thực tập QC Automation.

Mục tiêu của dự án là áp dụng Robot Framework và SeleniumLibrary để thực hiện kiểm thử tự động các chức năng chính của hệ thống.

## Công nghệ sử dụng

* Robot Framework
* SeleniumLibrary
* Python
* GitHub

## Mô hình thiết kế

Dự án được tổ chức theo mô hình **Page Object Model (POM)** nhằm tăng khả năng tái sử dụng mã nguồn, dễ bảo trì và mở rộng các kịch bản kiểm thử.

## Các chức năng được kiểm thử

### Đăng nhập

* Đăng nhập thành công
* Đăng nhập thất bại
* Kiểm tra dữ liệu đầu vào

### Bảng điều khiển (Dashboard)

* Kiểm tra số dư hiện tại
* Kiểm tra tổng thu nhập
* Kiểm tra tổng chi tiêu

### Quản lý giao dịch

* Thêm giao dịch thu
* Thêm giao dịch chi
* Xóa giao dịch
* Kiểm tra lịch sử giao dịch

## Cấu trúc thư mục

resources/

* locators/
* page_objects/
* common_keywords.resource
* environment_variables.yml

tests/

* LoginTests.robot
* DashboardTests.robot
* TransactionTests.robot

results/

## Cách chạy dự án

Cài đặt thư viện:

pip install -r requirements.txt

Thực thi toàn bộ test:

robot tests/

