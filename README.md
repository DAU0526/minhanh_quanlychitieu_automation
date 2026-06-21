# Expense Management System - QA Automation Framework

**Author:** Minh Anh

---

# Project Overview

Đây là dự án kiểm thử tự động cho hệ thống **Quản lý chi tiêu cá nhân (Expense Management System)** được xây dựng trong quá trình thực tập QA Automation.

Mục tiêu của dự án là áp dụng Robot Framework và Selenium để tự động hóa việc kiểm thử các chức năng quan trọng của hệ thống, giúp giảm thời gian kiểm thử thủ công và nâng cao chất lượng phần mềm.

## Objectives

* Automation UI Testing
* Functional Testing
* Form Validation Testing
* Regression Testing
* Test Report Generation
* Áp dụng mô hình Page Object Model (POM)

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

Activate môi trường:

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
│
├── requirements.txt
│
├── README.md
│
└── .gitignore
```

---

# Automation Architecture

```text
Test Cases
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

| ID          | Description          |
| ----------- | -------------------- |
| TC_LOGIN_01 | Login Successfully   |
| TC_LOGIN_02 | Login Failed         |
| TC_LOGIN_03 | Empty Email          |
| TC_LOGIN_04 | Empty Password       |
| TC_LOGIN_05 | Verify Register Link |

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
Login Tests        : 5
Dashboard Tests    : 7
Transaction Tests  : 8

===================
Total: 20 Test Cases
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
* Click button
* Điều hướng trang
* Validation

## Test Layer

Chứa các kịch bản kiểm thử nghiệp vụ.

Ví dụ:

```robot
Login Successfully
Verify Welcome Message
```

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

---

# Author

**Minh Anh**

**QA Automation Internship Project - Expense Management System**
