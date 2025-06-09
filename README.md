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

-Quản lý thực đơn: Thêm, sửa, xóa, cập nhật thông tin các loại đồ uống trong thực đơn của cửa hàng.

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
-Hiệu năng (Performance)

-Tính sẵn sàng và ổn định (Availability & Reliability)

-Bảo mật (Security)

-Khả năng mở rộng (Scalability)

-Tính dễ sử dụng (Usability): Giao diện trực quan, dễ thao tác với người dùng không chuyên, giao diện đẹp, dễ sử dụng.
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
.....


CHƯƠNG 3: PHÂN TÍCH HỆ THỐNG

3.1.Phân tích ca sử dụng 

3.1.1Sơ đồ hoạt động 

3.1.1.1.Sơ đồ hoạt động chức năng đăng nhập

![image](https://github.com/user-attachments/assets/df15e255-3ba0-4cdc-9b45-4d01fe54b955)

3.1.1.2.Sơ đồ hoạt động chức năng đăng xuất

![image](https://github.com/user-attachments/assets/0efff51b-7d27-422c-ac21-07c0a7e64eea)

3.1.1.3.Sơ đồ hoạt động chức năng đổi mật khẩu

![image](https://github.com/user-attachments/assets/c0d7b439-e5e0-4213-9765-5a9bad3d118f)

3.1.1.4.Sơ đồ hoạt động chức năng quản lý bán hàng

![image](https://github.com/user-attachments/assets/60bd4154-a301-4357-ba09-df548095fde8)

3.1.1.5.Sơ đồ hoạt động chức năng xử lý thanh toán

![image](https://github.com/user-attachments/assets/586dedd6-0ff9-484d-a32c-de9661292686)

3.1.1.6.Sơ đồ hoạt động chức năng thống kê doanh thu

3.1.1.7.Sơ đồ hoạt động chức năng quản lý khách hàng

3.1.1.8.Sơ đồ hoạt động chức năng quản lý nhân viên

3.1.1.9.Sơ đồ hoạt động chức năng quản lý thực đơn

3.1.1.10.Sơ đồ hoạt động chức năng quản lý bàn

3.1.1.11.Sơ đồ hoạt động chức năng quản lý tài khoản

3.1.2Sơ đồ tuần tự (pha sử dụng)

3.1.2.1.Sơ đồ tuần tự đăng nhập

![image](https://github.com/user-attachments/assets/3d692dfa-8515-4dcc-b114-372ede648183)

3.1.2.2.Sơ đồ tuần tự đăng xuất

3.1.2.3.Sơ đồ tuần tự tạo đơn bán hàng

![image](https://github.com/user-attachments/assets/b8438121-5f9b-4875-b6a1-77ff676b2177)

3.1.2.4.Sơ đồ tuần tự xử lý thanh toán

![image](https://github.com/user-attachments/assets/44077fa3-2d14-4a25-a51e-9cd6b620c851)

3.1.2.5.Sơ đồ tuần tự quản lý nhân viên

3.1.2.6.Sơ đồ tuần tự quản lý tài khoản

3.1.2.7.Sơ đồ tuần tự quản lý khách hàng Vip

3.1.2.8.Sơ đồ tuần tự quản lý thực đơn

3.1.2.9.Sơ đồ tuần tự quản lý bàn

![image](https://github.com/user-attachments/assets/6dcf93d4-8740-4edf-9bea-4f81f3fc1a72)

3.1.2.10.Sơ đồ tuần tự thống kê doanh thu

3.1.3Sơ đồ công tác 

3.1.3.1.Sơ đồ cộng tác chức năng đăng nhập

![image](https://github.com/user-attachments/assets/434712bf-1a2b-4457-aea7-fa84a2242932)

3.1.3.2.Sơ đồ cộng tác chức năng đăng xuất

3.1.3.3.Sơ đồ cộng tác chức năng tạo đơn bán hàng

3.1.3.4.Sơ đồ cộng tác chức năng xử lý thanh toán

![image](https://github.com/user-attachments/assets/3d6dd8a0-be2b-4d62-be05-ccf9acbaba1c)

3.1.3.5.Sơ đồ cộng tác chức năng quản lý nhân viên

3.1.3.6.Sơ đồ cộng tác chức năng quản lý khách hàng

3.1.3.7.Sơ đồ cộng tác chức năng thống kê doanh thu

3.2.Phân tích cấu trúc vật lý (sơ đồ lớp) 

![image](https://github.com/user-attachments/assets/1a09c5d2-1ec9-4b80-bb7b-07ee183ab13f)

3.3.Sơ đồ trạng thái 

![image](https://github.com/user-attachments/assets/b12b07af-a409-490d-95b0-5e84ba2ba80c)

CHƯƠNG 4:	THIẾT KẾ HỆ THỐNG	81
4.1.	Xác định các phần tử thiết kế	

4.1.1	Gói (Package)	

![image](https://github.com/user-attachments/assets/0649bfae-188f-4950-a1a5-2002b9f88a52)


![image](https://github.com/user-attachments/assets/1071e190-a95a-4fb0-ae0f-8a891c432d6a)

4.1.2	Lớp thiết kế	
Lớp thiết kế

NhanVien

Admin

ChucVu

TaiKhoan

Ban

DonBan

CTHD

ThucDon

KhachHangVip

ThanhToan

CTKhuyenMai

BaoCaoThongKe

Bill

ThongKeDoanhThu

4.2.	Thiết kế cơ sở dữ liệu

4.2.1	Tạo CSDL	

4.2.1.1.	Mối liên hệ giữa các thực thể (lớp)

4.2.1.2.	Lược đồ CSDL	

![image](https://github.com/user-attachments/assets/baff33c4-98e5-46c9-860d-9a26168f6b50)

4.2.1.3.	Mô tả cấu trúc bảng	

4.2.1.4.	Relationship diagram	

![image](https://github.com/user-attachments/assets/efc293f2-15cb-4970-a2f6-3eb79b9f7da1)

4.2.2	Ràng buộc dữ liệu	

4.2.2.1.	Ràng buộc toàn vẹn khóa chính	

4.2.2.2.	Ràng buộc toàn vẹn khóa ngoại	

4.2.2.3.	Ràng buộc toàn vẹn miền giá trị	

4.2.2.4.	Ràng buộc toàn vẹn liên thuộc tính	

4.2.2.5.	Ràng buộc toàn vẹn liên thuộc tính – liên quan hệ	

4.2.3	Trigger	

4.2.4	Dữ liệu mẫu	

4.3.	Thiết kế các pha sử dụng ( kiến trúc 3 tầng cho từng use case)	

4.3.1	Boundary	

4.3.2	Entity	

4.3.3	Control	

4.3.4	Kiến trúc 3 tầng cho các chức năng	

![image](https://github.com/user-attachments/assets/66099bdc-44bd-434b-9be0-a343e89502fb)

4.4.	Thiết kế giao diện	

![image](https://github.com/user-attachments/assets/5f4df80e-05c0-4bd3-a2d5-89981acaae20)

4.4.1	Giao diện đăng nhập	

4.4.2	Đăng xuất	

![image](https://github.com/user-attachments/assets/e5ecaa07-81db-498a-985d-d930ce2e40ce)

4.4.3	Trang chủ	

4.4.4	Giao diện đổi mật khẩu	

4.4.5	Giao diện quản lý bán hàng	

4.4.6	Giao diện quản lý bàn	

4.4.7	Giao diện người quản lý	

4.4.8	Quản lý nhân viên	

4.4.9	Quản lý đồ uống (thực đơn)

4.4.10	Giao diện thống kê doanh thu	

4.5.	Thiết kế kiến trúc vật lí	

4.5.1	Sơ đồ thành phần	

4.5.2	Sơ đồ triển khai	

4.6.	Chương trình mẫu	

4.6.1	Đăng nhập	

4.6.2	Đăng xuất	

4.6.3	Đổi mật khẩu	

4.6.4	Quản lý bán hàng	

4.6.5	Quản lý bàn	

4.6.6	Quản lý đồ uống (thực đơn)	

4.6.7	Quản lý nhân viên	

4.6.8	Thống kê doanh thu	

CHƯƠNG 5:	KẾT LUẬN	

5.1.	Kết luận	

5.1.1	Kết quả đạt được:	

5.1.2	Những hạn chế còn tồn tại:	

5.2.	Hướng phát triển tiếp theo	



