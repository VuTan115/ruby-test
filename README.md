## Bài test ruby
Họ và tên: Vũ Cao Tân

Viết chương trình quản lý nhân viên như sau:
Đây là 1 công ty về công nghệ thông tin.
Trong 1 công ty, Mỗi nhân viên sẽ có tên và mã nhân viên và bộ phận làm việc của nhân viên
Công ty sẽ có các bộ phận như: dev, qa, BO, infra

Do tính chất công việc ở mỗi bộ phận khác nhau, nên sẽ có cách tính lương riêng:
+ Dev: Lương cơ bản * số giờ  và được hỗ trợ thêm 15% lương
+ Tester: Lương cơ bản * số giờ  và được hỗ trợ thêm 10% lương
+ Các nhân viên khác: Lương cơ bản * số giờ 
* giả sử lương cơ bản ở đây là 3000

Ngoài ra, chỉ có nhân viên thuộc bộ phận QA và Dev mới được phép request OT
Công thức tính request OT là: Số giờ OT * 150% của lương cơ bản

Bạn hãy đề xuất thiết kế các lớp đối tượng cần thiết để quản lý danh sách các nhân viên của công ty và hỗ trợ tính lương cho nhân viên theo tiêu chí đặt ra như trên.
Hãy viết chương trình thực hiện các yêu cầu sau:

1. Khởi tạo danh sách nhân viên (lưu trữ trong một mảng duy nhất).
2. Hiển thị toàn bộ thông tin nhân viên
3. Lấy ra mã nhân viên có số lương > 5000

## note: chỉ cần chạy file index.rb 
