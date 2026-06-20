*** Settings ***
Resource    ../resources/page_objects/LoginPage.resource

Test Setup       Open Login Page
Test Teardown    Close Application

*** Test Cases ***
TC_01 Login With Valid Account
[Documentation]    Đăng nhập thành công với tài khoản hợp lệ
Login Successfully    [minhanh@gmail.com](mailto:minhanh@gmail.com)    123456
Verify Login Success

TC_02 Login With Wrong Password
[Documentation]    Đăng nhập thất bại khi nhập sai mật khẩu
Login Successfully    [minhanh@gmail.com](mailto:minhanh@gmail.com)    111111
Verify Login Failed

TC_03 Login With Empty Email
[Documentation]    Kiểm tra bỏ trống Email
Login Successfully    ${EMPTY}    123456
Verify Required Email Message

TC_04 Login With Empty Password
[Documentation]    Kiểm tra bỏ trống Password
Login Successfully    [minhanh@gmail.com](mailto:minhanh@gmail.com)    ${EMPTY}
Verify Required Password Message

TC_05 Login With Empty Email And Password
[Documentation]    Kiểm tra bỏ trống cả Email và Password
Login Successfully    ${EMPTY}    ${EMPTY}
Verify Required Email Message

TC_06 Open Register Page
[Documentation]    Kiểm tra chuyển hướng sang trang đăng ký
Click Element    ${REGISTER_LINK}
