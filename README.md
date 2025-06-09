# Project_01
Analyzed and designed a complete system for a coffee shop

CHƯƠNG 1: TỔNG QUAN VỀ ĐỀ TÀI
1.1.Phát biểu bài toán

Highland Coffee là thương thiệu kinh doanh trong lĩnh vực dịch vụ F&B (Food and Beverage), cung cấp đa dạng các loại đồ uống. Một chi nhánh của cửa hàng Highland Coffee muốn xây dựng một hệ thống quản lý bán hàng để dễ dàng quản lý các quy trình bán hàng hơn, đồng thời hỗ trợ quản lý nhân viên hiệu quả. Hệ thống tập trung vào quy trình bán hàng và quản lý cửa hàng của một chi nhánh. Nhân viên (bao gồm nhân viên bán hàng và quản lý cửa hàng) sẽ là những đối tượng chính sử dụng hệ thống này.
Mỗi nhân viên sẽ được cấp một tài khoản để đăng nhập vào hệ thống. Mỗi tài khoản đều sẽ được phân quyền để sử dụng các chức năng khác nhau trên hệ thống. Tài khoản nhân viên chứa các thông tin bao gồm: Mã tài khoản, tên tài khoản, mật khẩu, phân quyền. Nhân viên có thể chỉnh sửa thông tin cá nhân và đổi mật khẩu cho tài khoản của mình. Hệ thống sẽ lưu các thông tin của nhân viên như: Mã nhân viên, họ tên nhân viên, ngày sinh, giới tính, số điện thoại, ngày vào làm, hệ số lương. Mỗi nhân viên sẽ có một chức vụ.

Hệ thống cũng cần có phân hệ để đảm bảo cho cửa hàng quản lý các hoạt động bán hàng. Mỗi nhân viên có thẻ tạo nhiều đơn bán hàng, hệ thống cho phép nhân viên bán hàng có thể tạo đơn bán hàng (khi có khách hàng order nước) để nhập các thông tin trên đơn bán như: Thông tin khách hàng, thông tin về loại đồ uống (mã đồ uống, tên đồ uống, số lượng, size, đơn giá…), mã khuyến mãi, số bàn (đối với khách dùng tại chỗ). Hệ thống còn cung cấp các chức năng cho phép nhân viên bán hàng có thể kiểm tra tình trạng đồ uống (còn hay hết món) và kiểm tra trạng thái các bàn (còn trống hay đã full). Ngoài ra, nhân viên bán hàng có thể dễ dàng quản lý thực đơn, cho phép tìm kiếm thông tin các loại đồ uống cũng như thực hiện các thao tác thêm, sửa, xóa thông tin của thực đơn.
 Hệ thống chỉ hỗ trợ lưu thông tin của khách hàng vip (khách hàng đăng ký thành viên), gồm: Mã khách hàng vip, họ tên, ngày sinh, giới tính, ngày đăng ký, số điện thoại. hạng, điểm tích lũy. 
 Hệ thống cung cấp các PTTT (phướng thức thanh toán) khác nhau như chuyển khoản (ngân hàng, ví điện tử) hoặc thanh toán bằng tiền mặt. Nếu là khách hàng VIP thì số tiền thanh toán sẽ được giảm tương ứng với hạng thành viên của khách hàng. Sau hệ thống thông báo thanh toán thành công thì sẽ in Bill (hóa đơn) có ghi đầy dủ các thông tin về đơn hàng cho khách hàng và  nhân viên pha chế. Sau mỗi hóa đơn thành công, hệ thống sẽ tích điểm cho khách hàng VIP, số điểm tương ứng với giá trị đơn hàng.
Quản lý cửa hàng cũng là một nhân viên. Tuy nhiên, quản lý sẽ có những chức năng mà một nhân viên bình thường không có như quản lý bàn, quản lý nhân viên, quản lý thống kê doanh thu. Người quản lý có thể tìm kiếm thông tin bàn, chỉnh sửa, xóa và thêm bàn. Mỗi tháng, quản lý sẽ vào tính toán chấm công cho nhân viên dựa trên hệ sống lương và giờ làm. Quản lý có thể xem danh sách nhân viên, thêm, sửa, xóa thông tin của nhân viên. Đồng thời người quản lý có thể quản lý tài khoản của nhân viên như xem thông tin tài khoản, chỉnh sửa tài khoản và phân quyền tài khoản nhân viên. Khi có nhân viên mới, quản lý cũng là người sẽ tạo và phân quyền tài khoản mới cho nhân viên.
Ngoài ra, quản lý còn có thể thống kê doanh thu bán hàng của của hàng theo các chỉ tiêu: theo thời gian, theo đơn hàng, theo loại đồ uống và xuất (in) các báo cáo thống kê (report).
Bên cạnh các chức năng phục vụ cho nhân viên bán hàng và quản lý tại chi nhánh, hệ thống cũng cần có một vai trò đặc biệt là Admin hệ thống, người chịu trách nhiệm quản trị kỹ thuật toàn bộ hệ thống phần mềm. Tài khoản admin sẽ có quyền truy cập cao nhất, được cấp riêng biệt để đảm bảo tính bảo mật và ổn định cho toàn bộ hệ thống. Admin hệ thống có thể thực hiện các thao tác như: bảo trì hệ thống (định kỳ kiểm tra, xử lý lỗi), Sao lưu và phục hồi dữ liệu và phân quyền tài khoản nhân viên.
Hệ thống cần đảm bảo cho quá trình hoạt động diễn ra suôn sẻ, lý giao dịch nhanh chóng, đặc biệt trong giờ cao điểm. Giao diện trực quan, dễ thao tác với người dùng, dễ sử dụng.

1.2.Mục tiêu hệ thống
Tự động hóa quy trình bán hàng tại chi nhánh: Hỗ trợ nhân viên tạo đơn hàng nhanh chóng, kiểm tra tình trạng đồ uống và bàn, áp dụng khuyến mãi và xử lý thanh toán nhanh chóng, chính xác.
Giảm thời gian thao tác thủ công, nâng cao trải nghiệm khách hàng tại quầy order.
Quản lý hiệu quả hoạt động của cửa hàng: Cung cấp cho người quản lý khả năng theo dõi tình trạng bàn, nhân sự, đồ uống và đơn hàng theo thời gian thực. Cho phép thống kê doanh thu, xuất báo cáo để đưa ra quyết định kinh doanh kịp thời và chính xác.
Chăm sóc và giữ chân khách hàng VIP: Hệ thống lưu thông tin khách hàng VIP, áp dụng ưu đãi tự động khi thanh toán. Tích điểm và theo dõi lịch sử mua hàng của khách VIP để phục vụ các chiến dịch chăm sóc khách hàng
Tăng độ chuyên nghiệp, đồng bộ và minh bạch: In hóa đơn rõ ràng, minh bạch cho khách hàng. Đảm bảo mọi giao dịch đều được lưu trữ, hỗ trợ kiểm tra – đối soát khi cần.

1.3.Phạm vi hệ thống
Hệ thống quản lý bán hàng được xây dựng cho một chi nhánh của cửa hàng Highland Coffee. Phạm vi hệ thống bao gồm các chức năng liên quan đến bán hàng tại quầy, quản lý thông tin nội bộ tại chi nhánh và xuất các báo cáo thống kê doanh thu, hỗ trợ nhân viên và người quản lý cửa hàng


CHƯƠNG 2: XÁC ĐỊNH YÊU CẦU HỆ THỐNG
2.1.Quy trình nghiệp vụ 
2.1.1Quy trình bán hàng (tại quầy)
Quy trình tạo đơn bán hàng

Quy trình thanh toán

Quy trình tích điểm khách hàng Vip.

2.1.2Quy trình đăng nhập

2.1.3Quy trình quản lý bàn

2.1.4Quy trình quản lý đồ uống.

2.1.5Quy trình quản lý nhân viên

2.1.6Quy trình thống kê và báo cáo doanh thu

2.2.Xác định yêu cầu chức năng và yêu cầu phi chức năng 

2.2.1Yêu cầu chức năng

Nhân viên bán hàng
-Đăng nhập: Người dùng chọn chức năng đăng nhập vào tài khoản có phân quyền để sử dụng phần mềm, đăng xuất, thay đổi mật khẩu sau khi đăng nhập.

-Quản lý bán hàng: Tạo mới đơn hàng, Xem danh sách các đơn hàng, Xử lý thanh toán (kết nối với hệ thống Payment) và áp dụng các khuyến mãi

-Quản lý thực đơn: Thêm, sửa, xóa, cập nhật thông tin đồ uống như giá bán, size… Tìm kiếm đồ uống theo loại đồ uống hoặc giá bán.

-Quản lý khách hàng: Thêm khách hàng VIP, Xem danh sách khách hàng VIP

-Quản lý bàn: Xem danh sách bàn

Quản lý cửa hàng: 
-Đăng nhập: Người dùng chọn chức năng đăng nhập vào tài khoản có phân quyền để sử dụng phần mềm, đăng xuất, thay đổi mật khẩu sau khi đăng nhập.
-Quản lý bán hàng: Tạo đơn hàng, Xem danh sách đơn hàng, Xử lý thanh toán (kết nối với hệ thống Payment)
=Quản lý thực đơn: Thêm, sửa, xóa, cập nhật thông tin các loại đồ uống trong thực đơn của cửa hàng.
-Quản lý khách hàng: Thêm khách hàng VIP, Xem danh sách khách hàng VIP
-Quản lý nhân viên: Thêm, sửa, xóa thông tin nhân viên và chấm công cho nhân viên.
-Quản lý tài khoản của nhân viên: Quản lý có thể thêm mới thông tin tài khoản., Khóa tài khoản nhân viên, Phân quyền cho các tài khoản nhân viên..
-Quản lý bàn: Quản lý có thể cập nhật, thêm/xóa bàn.
-Thống kê doanh thu: Thống kê và xuất báo cáo doanh thu theo thời gian, theo đơn hàng hoặc theo loại sản phẩm, Phân tích hoạt động bán hàng.

Admin: Quản lý hệ thống
-Bảo trì hệ thống: định kỳ kiểm tra lỗi và xử lý các lỗi xảy ra ở hệ thống.
-Sao lưu và phục hồi dữ liệu.
-Phân quyền tài khoản của toàn bộ nhân viên cửa hàng.

Hệ thống Payment (Payment System): Tích hợp vào để xử lý thanh toán hóa đơn (thẻ, QR code, ví điện tử...)

![image](https://github.com/user-attachments/assets/bcf9a308-3538-46b9-bcd1-a1a0ae67d811)

2.2.2Yêu cầu phi chức năng
Hiệu năng (Performance)

Tính sẵn sàng và ổn định (Availability & Reliability)

Bảo mật (Security)

Khả năng mở rộng (Scalability)

Tính dễ sử dụng (Usability): Giao diện trực quan, dễ thao tác với người dùng không chuyên, giao diện đẹp, dễ sử dụng.
Hệ thống đăng nhập ổn định, phân quyền dựa trên vị trí của từng bộ phận sẽ được sử dụng những chức năng nào.

<img width="360" alt="image" src="https://github.com/user-attachments/assets/00bbee0f-9309-4418-a686-d228dc60c486" />

2.3.Sơ đồ use case 

2.3.1Xác định các tác nhân, chức năng hệ thống 

Trong hệ thống quản lý cửa hàng Highland Coffee có 3 tác nhân chính là: Nhân viên bán hàng, Người quản lý và Admin hệ thống.
Hệ thống quản lý cửa hàng Highland Coffee có các chức năng chính như: Đăng nhập/Đăng xuất, Đổi mật khẩu, Quản lý bán hàng, Tạo đơn bán hàng, Quản lý nhân viên, Quản lý thực đơn, Quản lý bàn, Quản lý khách hàng (VIP), Thống kê doanh thu, Xử lý thanh toán,…



2.3.2Sơ đồ use case mức tổng thể 
![image](https://github.com/user-attachments/assets/77b7e7c9-a263-4f05-931f-9ee065c78529)

2.3.3Sơ đồ use case mức chi tiết 

2.3.3.1.Quản lý bán hàng

![image](https://github.com/user-attachments/assets/0bd8852c-7783-4bf4-9a6c-4278dcd2432b)

2.3.3.2.Quản lý nhân viên

![image](https://github.com/user-attachments/assets/1820a5a6-fd75-4da1-99a8-c53407aebd20)

2.3.3.3.Quản lý thực đơn

![image](https://github.com/user-attachments/assets/70ba2531-23d2-4c51-bef4-706e7099730b)

2.3.3.4.Quản lý khách hàng vip

![image](https://github.com/user-attachments/assets/5b4ca073-6738-4239-9c5d-256cf561fb02)

2.3.3.5.Quản lý bàn

![image](https://github.com/user-attachments/assets/6c56a26e-71c6-4423-bb5a-0d93c678e40f)

2.3.3.6.Thống kê doanh thu

![image](https://github.com/user-attachments/assets/68f9ab63-f4ba-4a40-9d4d-9cdd990f536b)


2.3.4Đặc tả use case


CHƯƠNG 3: PHÂN TÍCH HỆ THỐNG
3.1.Phân tích ca sử dụng 
3.1.1Sơ đồ hoạt động 
3.1.1.1.Sơ đồ hoạt động chức năng đăng nhập

Hình 31: Sơ đồ hoạt động chức năng đăng nhập
3.1.1.2.Sơ đồ hoạt động chức năng đăng xuất

Hình 32: Sơ đồ hoạt động chức năng đăng xuất
3.1.1.3.Sơ đồ hoạt động chức năng đổi mật khẩu

Hình 33: Sơ đồ hoạt động chức năng đổi mật khẩu
3.1.1.4.Sơ đồ hoạt động chức năng quản lý bán hàng

Hình 34: Sơ đồ hoạt động chức năng quản lý bán hàng
3.1.1.5.Sơ đồ hoạt động chức năng xử lý thanh toán

Hình 35: Sơ đồ hoạt động chức năng xử lý thanh toán
3.1.1.6.Sơ đồ hoạt động chức năng thống kê doanh thu

Hình 36: Sơ đồ hoạt động chức năng thống kê doanh thu
3.1.1.7.Sơ đồ hoạt động chức năng quản lý khách hàng

Hình 37: Sơ đồ hoạt động chức năng quản lý khách hàng
3.1.1.8.Sơ đồ hoạt động chức năng quản lý nhân viên

Hình 38: Sơ đồ hoạt động chức năng quản lý nhân viên
3.1.1.9.Sơ đồ hoạt động chức năng quản lý thực đơn

Hình 39: Sơ đồ hoạt động chức năng quản lý thực đơn
3.1.1.10.Sơ đồ hoạt động chức năng quản lý bàn

Hình 310: Sơ đồ hoạt động chức năng quản lý bàn
3.1.1.11.Sơ đồ hoạt động chức năng quản lý tài khoản

Hình 311: Sơ đồ hoạt động chức năng quản lý tài khoản
3.1.2Sơ đồ tuần tự (pha sử dụng)
3.1.2.1.Sơ đồ tuần tự đăng nhập

Hình 312: Sơ đồ tuần tự đăng nhập
3.1.2.2.Sơ đồ tuần tự đăng xuất

Hình 313: Sơ đồ tuần tự đăng xuất
3.1.2.3.Sơ đồ tuần tự tạo đơn bán hàng

Hình 314: Sơ đồ tuần tự tạo đơn bán hàng
3.1.2.4.Sơ đồ tuần tự xử lý thanh toán

Hình 315: Sơ đồ tuần tự xử lý thanh toán
3.1.2.5.Sơ đồ tuần tự quản lý nhân viên
Xem thông tin nhân viên

Hình 316: Sơ đồ tuần tự xem thông tin nhân viên
Thêm nhân viên mới

Hình 317: Sơ đồ tuần tự thêm nhân viên mới
Chỉnh sửa thông tin nhân viên

Hình 318: Sơ đồ tuần tự chỉnh sửa thông tin nhân viên
3.1.2.6.Sơ đồ tuần tự quản lý tài khoản


Hình 319: Sơ đồ tuần tự quản lý tài khoản
3.1.2.7.Sơ đồ tuần tự quản lý khách hàng Vip
Xem thông tin khách hàng

Hình 320: Sơ đồ tuần tự xem thông tin KH Vip
Thêm khách hàng Vip mới

Hình 321: Sơ đồ tuần tự thêm KH Vip
Sửa thông tin khách hàng

Hình 322: Sơ đồ tuần tự sửa thông tin khách hàng Vip
3.1.2.8.Sơ đồ tuần tự quản lý thực đơn


Hình 323: Sơ đồ tuần tự quản lý thực đơn
3.1.2.9.Sơ đồ tuần tự quản lý bàn


Hình 324: Sơ đồ tuần tự chức năng quản lý bàn
3.1.2.10.Sơ đồ tuần tự thống kê doanh thu

Hình 325: Sơ đồ tuần tự thống kê doanh thu
3.1.3Sơ đồ công tác 
3.1.3.1.Sơ đồ cộng tác chức năng đăng nhập

Hình 326: Sơ đồ cộng tác – Đăng nhập
3.1.3.2.Sơ đồ cộng tác chức năng đăng xuất

Hình 327: Sơ đồ cộng tác – Đăng xuất
3.1.3.3.Sơ đồ cộng tác chức năng tạo đơn bán hàng
3.1.3.4.Sơ đồ cộng tác chức năng xử lý thanh toán

Hình 328: Sơ đồ cộng tác – Xử lý thanh toán
3.1.3.5.Sơ đồ cộng tác chức năng quản lý nhân viên
Xem danh sách nhân viên

Hình 329: Sơ đồ cộng tác - Xem thông tin nhân viên
Thêm nhân viên mới

Hình 330: Sơ đồ cộng tác – Thêm nhân viên mới

Sửa thông tin nhân viên

Hình 331: Sơ đồ cộng tác – Sửa thông tin nhân viên
3.1.3.6.Sơ đồ cộng tác chức năng quản lý khách hàng
Xem thông tin khách hàng Vip

Hình 332: Sơ đồ cộng tác – Xem thông tin KH Vip
Thêm khách hàng Vip

Hình 333: Sơ đồ cộng tác – Thêm KH Vip
Chỉnh sửa thông tin khách hàng Vip

Hình 334: Sơ đồ cộng tác chức năng chỉnh sửa thông tin khách hàng Vip
3.1.3.7.Sơ đồ cộng tác chức năng thống kê doanh thu

Hình 335: sơ đồng cộng tác chức năng thống kê doanh thu
3.2.Phân tích cấu trúc vật lý (sơ đồ lớp) 

Hình 336: Sơ đồ Class
3.3.Sơ đồ trạng thái 

Hình 337: Sơ đồ trạng thái




CHƯƠNG 4: THIẾT KẾ HỆ THỐNG 
4.1.Xác định các phần tử thiết kế
4.1.1Gói (Package)
Bảng 41: Các gói (Package) trong hệ thống
STT	Gói	Lớp bên trong	Mô tả
1	NguoiDung	NhanVien, ChucVu, TaiKhoan, Admin	Quản lý người dùng hệ thống
2	BanHang	DonHang, Ban, CTHD	Xử lý và lưu trữ thông tin đơn hàng
3	ThucDon	ThucDon, CTkhuyenMai	Quản lý đồ uống trong thực đơn, khuyến mãi đồ uống
4	KhachHang	KhachHangVip	Quản lý khách hàng vip và tích điểm cho KH vip
5	ThongKe	ThongKeDoanhThu, BaoCaoThongKe	Xử lý doanh thu và thống kê doanh thu, in báo cáo thống kê
6	ThanhToan	ThanhToan, Bill	Quản lý và xử lý các thông tin thanh toán và xuất hóa đơn thanh toán
7	GiaoDienHeThong		Bao gồm các giao diện, form để người dùng tương tác với các chức năng
8	PaymentSystem		Hệ thống thanh toán


Hình 41: Các gói trong hệ thống

Hình 42: Package Diagram
4.1.2Lớp thiết kế

