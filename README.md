# Expense Management System - QA Automation Framework

**Author:** Minh Anh

---

# Project Overview

Đây là dự án kiểm thử tự động cho hệ thống **Quản lý chi tiêu cá nhân (Expense Management System)** được thực hiện trong quá trình thực tập QA Automation.

Dự án áp dụng Robot Framework kết hợp SeleniumLibrary để tự động hóa việc kiểm thử giao diện người dùng (UI Testing), giúp giảm thời gian kiểm thử thủ công, nâng cao hiệu quả kiểm thử và đảm bảo chất lượng phần mềm.

## Objectives

* Automation UI Testing
* Functional Testing
* Form Validation Testing
* Regression Testing
* Test Report Generation
* Áp dụng mô hình Page Object Model (POM)
* Tái sử dụng keyword (Reusable Keywords)
* Quản lý cấu hình bằng Config File

---

# Technology Stack

| Technology        | Usage                |
| ----------------- | -------------------- |
| Python            | Programming Language |
| Robot Framework   | Automation Framework |
| SeleniumLibrary   | Web UI Automation    |
| ChromeDriver      | Browser Driver       |
| GitHub            | Source Control       |
| Page Object Model | Test Architecture    |

---

# Requirements

| Tool            | Version                |
| --------------- | ---------------------- |
| Python          | 3.10+                  |
| Robot Framework | 7.x                    |
| Google Chrome   | Latest                 |
| ChromeDriver    | Compatible with Chrome |

Kiểm tra phiên bản:

```bash
python --version
robot --version
```

---

# Installation

## Clone Repository

```bash
git clone https://github.com/DAU0526/minhanh_quanlychitieu_automation.git
```

## Create Virtual Environment

```bash
python -m venv .venv
```

Kích hoạt môi trường:

```bash
.venv\Scripts\activate
```

## Install Dependencies

```bash
pip install -r requirements.txt
```

---

# Project Structure

```text
minhanh_quanlychitieu_automation

│
├── tests
│   ├── LoginTests.robot
│   ├── DashboardTests.robot
│   └── TransactionTests.robot
│
├── resources
│   │
│   ├── common_keywords.resource
│   ├── environment_variables.yml
│   │
│   ├── page_objects
│   │   ├── LoginPage.resource
│   │   ├── DashboardPage.resource
│   │   └── TransactionPage.resource
│   │
│   └── locators
│       ├── LoginPageLocators.py
│       ├── DashboardPageLocators.py
│       └── TransactionPageLocators.py
│
├── results
│   └── .gitkeep
│
├── requirements.txt
├── README.md
└── .gitignore
---

# Automation Architecture

```text
Test Cases
    │
    ▼
Reusable Keywords
    │
    ▼
Page Objects
    │
    ▼
Locators
    │
    ▼
Expense Management System
```

---

# Test Coverage

## Login Testing

File:

```text
tests/LoginTests.robot
```

### Test Cases

| ID    | Description                         |
| ----- | ----------------------------------- |
| TC_01 | Login With Valid Account            |
| TC_02 | Login With Wrong Password           |
| TC_03 | Login With Empty Email              |
| TC_04 | Login With Empty Password           |
| TC_05 | Login With Empty Email And Password |
| TC_06 | Open Register Page                  |

---

## Dashboard Testing

File:

```text
tests/DashboardTests.robot
```

### Test Cases

| ID              | Description            |
| --------------- | ---------------------- |
| TC_DASHBOARD_01 | Verify Welcome Message |
| TC_DASHBOARD_02 | Verify Balance Card    |
| TC_DASHBOARD_03 | Verify Income Card     |
| TC_DASHBOARD_04 | Verify Expense Card    |
| TC_DASHBOARD_05 | Verify Statistics Tab  |
| TC_DASHBOARD_06 | Verify Transaction Tab |
| TC_DASHBOARD_07 | Verify Logout Button   |

---

## Transaction Testing

File:

```text
tests/TransactionTests.robot
```

### Test Cases

| ID                | Description                   |
| ----------------- | ----------------------------- |
| TC_TRANSACTION_01 | Verify Download Sample Button |
| TC_TRANSACTION_02 | Verify Import CSV Button      |
| TC_TRANSACTION_03 | Verify Transaction History    |
| TC_TRANSACTION_04 | Verify Save Button            |
| TC_TRANSACTION_05 | Add Income Transaction        |
| TC_TRANSACTION_06 | Validate Empty Name           |
| TC_TRANSACTION_07 | Validate Empty Amount         |
| TC_TRANSACTION_08 | Validate Negative Amount      |

---

# Total Test Cases

```text
Login Tests        : 6
Dashboard Tests    : 7
Transaction Tests  : 8

===================
Total: 21 Test Cases
===================
```

---

# Running Tests

## Run All Tests

```bash
robot tests
```

## Run Login Tests

```bash
robot tests/LoginTests.robot
```

## Run Dashboard Tests

```bash
robot tests/DashboardTests.robot
```

## Run Transaction Tests

```bash
robot tests/TransactionTests.robot
```

---

# Test Report

Sau khi thực thi kiểm thử, Robot Framework sẽ sinh ra các file báo cáo:

```text
output.xml
log.html
report.html
```

Mở báo cáo:

```bash
start report.html
```

---

# Page Object Model

## Locator Layer

Chứa các XPath và CSS Selector dùng để xác định phần tử trên giao diện.

Ví dụ:

```python
LOGIN_BUTTON = "xpath=//button[contains(text(),'Đăng nhập')]"
```

## Page Object Layer

Chứa các keyword thao tác với giao diện:

* Input dữ liệu
* Click Button
* Điều hướng trang
* Validation

## Reusable Keyword Layer

Chứa các keyword dùng chung nhằm tăng khả năng tái sử dụng và giảm trùng lặp code.

Ví dụ:

```robot
Login With Valid Account
```

## Test Layer

Chứa các kịch bản kiểm thử nghiệp vụ.

Ví dụ:

```robot
Login With Valid Account
Verify Welcome Message
```

---

# Configuration File

Dự án sử dụng file cấu hình:

```text
resources/environment_variables.yml
```

Ví dụ:

```yaml
BASE_URL: http://localhost:5173
EMAIL: minhanh1@gmail.com
PASSWORD: 12345678
```

Giúp quản lý dữ liệu cấu hình tập trung và dễ bảo trì.

---

# Git Workflow

Kiểm tra thay đổi:

```bash
git status
```

Thêm file:

```bash
git add .
```

Commit:

```bash
git commit -m "Update automation tests"
```

Push:

```bash
git push origin main
```

---

# Future Improvements

* Screenshot On Failure
* Explicit Wait Strategy
* Data Driven Testing
* GitHub Actions CI/CD
* Allure Reporting
* Parallel Execution
* Cross Browser Testing

---

# Author

**Minh Anh**

**QA Automation Internship Project - Expense Management System**
