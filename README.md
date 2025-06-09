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
-Tự động hóa quy trình bán hàng tại chi nhánh: Hỗ trợ nhân viên tạo đơn hàng nhanh chóng, kiểm tra tình trạng đồ uống và bàn, áp dụng khuyến mãi và xử lý thanh toán nhanh chóng, chính xác.
-Giảm thời gian thao tác thủ công, nâng cao trải nghiệm khách hàng tại quầy order.
-Quản lý hiệu quả hoạt động của cửa hàng: Cung cấp cho người quản lý khả năng theo dõi tình trạng bàn, nhân sự, đồ uống và đơn hàng theo thời gian thực. Cho phép thống kê doanh thu, xuất báo cáo để đưa ra quyết định kinh doanh kịp thời và chính xác.
-Chăm sóc và giữ chân khách hàng VIP: Hệ thống lưu thông tin khách hàng VIP, áp dụng ưu đãi tự động khi thanh toán. Tích điểm và theo dõi lịch sử mua hàng của khách VIP để phục vụ các chiến dịch chăm sóc khách hàng
-Tăng độ chuyên nghiệp, đồng bộ và minh bạch: In hóa đơn rõ ràng, minh bạch cho khách hàng. Đảm bảo mọi giao dịch đều được lưu trữ, hỗ trợ kiểm tra – đối soát khi cần.

1.3.Phạm vi hệ thống
Hệ thống quản lý bán hàng được xây dựng cho một chi nhánh của cửa hàng Highland Coffee. Phạm vi hệ thống bao gồm các chức năng liên quan đến bán hàng tại quầy, quản lý thông tin nội bộ tại chi nhánh và xuất các báo cáo thống kê doanh thu, hỗ trợ nhân viên và người quản lý cửa hàng trong việc:
-Quản lý tài khoản và phân quyền người dùng
-Thực hiện quy trình bán hàng tại quầy: tạo đơn, thanh toán, in hóa đơn
-Quản lý thông tin đồ uống, khách hàng VIP và bàn trong cửa hàng
-Hỗ trợ quản lý nhân viên, chấm công và theo dõi hiệu suất làm việc
-Thống kê doanh thu và xuất báo cáo phục vụ công tác điều hành
Hệ thống không bao gồm quản lý nhiều chi nhánh, quản lý kho nguyên vật liệu hay xử lý đơn hàng trực tuyến từ xa.


CHƯƠNG 2: XÁC ĐỊNH YÊU CẦU HỆ THỐNG
2.1.Quy trình nghiệp vụ 
2.1.1Quy trình bán hàng (tại quầy)
Quy trình tạo đơn bán hàng
-Nhân viên tạo đơn hàng cho khách (chọn món, số lượng, size, áp dụng khuyến mãi).
-Kiểm tra tình trạng món và bàn.
-Hiển thị tổng tiền thanh toán, áp dụng ưu đãi VIP (nếu có).
-Xử lý thanh toán bằng các phương thức khác nhau.
-In hóa đơn và gửi đơn pha chế.
Quy trình thanh toán
-Khách hàng thanh toán qua các phương thức: tiền mặt, chuyển khoản, ví điện tử.
-Nếu khách là khách VIP, hệ thống áp dụng giảm giá tương ứng với hạng thành viên.
-In hóa đơn và chuyển thông tin cho bộ phận pha chế.
Quy trình tích điểm khách hàng Vip.
-Ghi nhận thông tin khách VIP.
-Cập nhật điểm sau mỗi hóa đơn thành công.
-Áp dụng ưu đãi tương ứng khi thanh toán.
2.1.2Quy trình đăng nhập
Người dùng chọn đăng nhập vào hệ thống, người dùng nhập mật khầu và tên đăng nhập, sau khi hệ thống kiểm tra đăng nhập thành công, hệ thống sẽ theo quyền mà đưa người dùng vào những form có chức năng khác nhau.
2.1.3Quy trình quản lý bàn
-Quản lý hoặc nhân viên có thể kiểm tra tình trạng bàn theo thời gian thực (còn trống hoặc đã đầy).
-Quản lý bàn: thêm, sửa, xóa thông tin bàn trong cửa hàng.
2.1.4Quy trình quản lý đồ uống.
-Nhân viên quản lý có thể thêm, sửa, xóa các loại đồ uống trong thực đơn.
-Cập nhật thông tin về tên, giá, size và trạng thái món (còn/hết)
2.1.5Quy trình quản lý nhân viên
-Quản lý có thể thêm, sửa, xóa nhân viên trong hệ thống.
-Quản lý thông tin tài khoản: tạo mới, phân quyền, chỉnh sửa, đổi mật khẩu.
-Quản lý chấm công theo giờ làm việc của nhân viên.
2.1.6Quy trình thống kê và báo cáo doanh thu
-Hệ thống tổng hợp và hiển thị báo cáo doanh thu theo thời gian (theo ngày, tuần, tháng).
-Xuất báo cáo thống kê chi tiết theo loại đồ uống, theo đơn hàng hoặc doanh thu.
2.2.Xác định yêu cầu chức năng và yêu cầu phi chức năng 
2.2.1Yêu cầu chức năng
Nhân viên bán hàng
-Đăng nhập: Người dùng chọn chức năng đăng nhập vào tài khoản có phân quyền để sử dụng phần mềm, đăng xuất, thay đổi mật khẩu sau khi đăng nhập.
-Quản lý bán hàng: Tạo mới đơn hàng, Xem danh sách các đơn hàng, Xử lý thanh toán (kết nối với hệ thống Payment) và áp dụng các khuyến mãi
-Quản lý thực đơn: Thêm, sửa, xóa, cập nhật thông tin đồ uống như giá bán, size… Tìm kiếm đồ uống theo loại đồ uống hoặc giá bán.
-Quản lý khách hàng: Thêm khách hàng VIP, Xem danh sách khách hàng VIP
-Quản lý bàn: Xem danh sách bàn
Quản lý cửa hàng: 
-Đăng nhập: Người dùng chọn chức năng đăng nhập vào tài khoản có phân quyền để sử dụng phần mềm, đăng xuất, thay đổi mật khẩu sau khi đăng nhập.
-Quản lý bán hàng: Tạo đơn hàng, Xem danh sách đơn hàng, Xử lý thanh toán (kết nối với hệ thống Payment)
-Quản lý thực đơn: Thêm, sửa, xóa, cập nhật thông tin các loại đồ uống trong thực đơn của cửa hàng.
-Quản lý khách hàng: Thêm khách hàng VIP, Xem danh sách khách hàng VIP
-Quản lý nhân viên: Thêm, sửa, xóa thông tin nhân viên và chấm công cho nhân viên.
-Quản lý tài khoản của nhân viên: Quản lý có thể thêm mới thông tin tài khoản., Khóa tài khoản nhân viên, Phân quyền cho các tài khoản nhân viên..
-Quản lý bàn: Quản lý có thể cập nhật, thêm/xóa bàn.
-Thống kê doanh thu: Thống kê và xuất báo cáo doanh thu theo thời gian, theo đơn hàng hoặc theo loại sản phẩm, Phân tích hoạt động bán hàng.
Admin: Quản lý hệ thống
-Bảo trì hệ thống: định kỳ kiểm tra lỗi và xử lý các lỗi xảy ra ở hệ thống.
-Sao lưu và phục hồi dữ liệu.
-Phân quyền tài khoản của toàn bộ nhân viên cửa hàng.
Hệ thống Payment (Payment System): Tích hợp vào để xử lý thanh toán hóa đơn (thẻ, QR code, ví điện tử...)

Hình 21: Sơ đồ Requiremants – chức năng
2.2.2Yêu cầu phi chức năng
Hiệu năng (Performance)
-Hệ thống phải xử lý giao dịch nhanh chóng, đặc biệt trong giờ cao điểm.
-Xử lý thanh toán không được quá 3 giây.
Tính sẵn sàng và ổn định (Availability & Reliability)
-Hệ thống phải hoạt động 24/7.
-Đảm bảo không bị gián đoạn khi có nhiều thao tác cùng lúc.
Bảo mật (Security)
-Mỗi người dùng có tài khoản và mật khẩu riêng.
-Phân quyền rõ ràng giữa nhân viên, quản lý và admin.
-Hệ thống có cơ chế ghi log lại các thao tác để phục vụ kiểm tra, truy vết.
Khả năng mở rộng (Scalability)
-Hệ thống có thể mở rộng thêm chi nhánh khác.
-Cho phép thêm chức năng mới dễ dàng mà không ảnh hưởng hệ thống cũ.
Tính dễ sử dụng (Usability): Giao diện trực quan, dễ thao tác với người dùng không chuyên, giao diện đẹp, dễ sử dụng.
Hệ thống đăng nhập ổn định, phân quyền dựa trên vị trí của từng bộ phận sẽ được sử dụng những chức năng nào.

Hình 22: Requiremants phi chức năng
2.3.Sơ đồ use case 
2.3.1Xác định các tác nhân, chức năng hệ thống 
Trong hệ thống quản lý cửa hàng Highland Coffee có 3 tác nhân chính là: Nhân viên bán hàng, Người quản lý và Admin hệ thống.
Bảng 21: Các tác nhân trong hệ thống
STT	Tác nhân	Ý nghĩa
1	Nhân viên (nhân viên bán hàng)	Là người sẽ thực hiện các chức năng bán hàng, thanh toán, tìm kiếm thông tin, thống kê và báo cáo khi có yêu cầu.
2	Người quản lý	Là người quản lý của cửa hàng, có thể xem được các phân tích xử lý, các báo cáo thống kê của nhân viên, phân quyền cho nhân viên.
3	Admin hệ thống	Là người quản trị hệ thống.
4	Payment System	Là hệ thống thanh toán được liên kết với các bên hỗ trợ thanh toán như ngân hàng, ví điện tử.
Hệ thống quản lý cửa hàng Highland Coffee có các chức năng chính như: Đăng nhập/Đăng xuất, Đổi mật khẩu, Quản lý bán hàng, Tạo đơn bán hàng, Quản lý nhân viên, Quản lý thực đơn, Quản lý bàn, Quản lý khách hàng (VIP), Thống kê doanh thu, Xử lý thanh toán,…
Bảng 22: Các chức năng hệ thống (Use Case)
Mã Use Case	Tên Use Case	Đối tượng sử dụng	Mức độ ưu tiên	Mô tả
UC01	Đăng nhập	Người dùng	Cao	Người dùng đăng nhập vào hệ thống bán hàng và sử dụng các chức năng tương ứng với chức vụ trên hệ thống.
UC02	Đăng xuất	Người dùng	Cao	Người dùng đăng xuất khỏi hệ thống bán hàng
UC03	Đổi mật khẩu	Người dùng 	Chi tiết	Người dùng có thể thay đổi mật khẩu tài khoản của mình trên hệ thống sau khi đã đăng nhập thành công.
UC04	Quản lý bán hàng	Nhân viên, người quản lý	Cao	Nhân viên sẽ thực hiện chức năng quản lý bán hàng khi có yêu cầu order từ khách hàng bao gồm: tạo đơn bán hàng, điền đầy đủ các thông tin bắt buộc trên đơn hàng, hỗ trợ xử lý thanh toán đơn hàng và in hóa đơn (Bill) cho khách hàng.
UC05	Tạo đơn bán hàng	Nhân viên , người quản lý	Cao	Nhân viên bán hàng sẽ tạo đơn hàng khi có yêu cầu order từ khách hàng. Đơn bán hàng bao gồm: thông tin khách hàng, thông tin đồ uống (mã đồ uống. tên, số lượng, size, đơn giá,..), ghi chú…
UC06	Xử lý thanh toán	Nhân viên, quản lý	Cao	Nhân viên yêu cầu khách hàng thực hiện thanh toán sau khi tạo thành công đơn hàng, hệ thống cung cấp các PTTT khác nhau, Nhân viên có thể áp các mã khuyến mãi hợp lệ cho đơn hàng. Nhân viên sẽ kiểm tra xem khách hàng đã thanh toán đủ chưa và lưu thông tin lên hệ thống. Xuất bill sau khi thanh toán thành công.
UC07	Thống kê doanh thu	Người quản lý	Cao	Cuối tháng, người quản lý sẽ yêu cầu nhân viên cửa hàng báo cáo và thống kê tình trạng bán hàng. Nhân viên bán hàng thống kê số lượng đơn hàng, thống kê doanh thu đơn hàng. Nhân viên CSKD báo cáo về tình trạng/mức độ khiếu nại của khách hàng tăng/giảm so với trước đây.
UC08	Quản lý khách hàng	Nhân viên, quản lý	Cao	Nhân viên có thể thực hiện chức năng quản lý khách hàng (chỉ đối với khách hàng Vip) như: thêm khách hàng vip, có thể thực hiện các thao tác chỉnh sửa, xóa, tìm kiếm khách hàng.
UC09	Quản lý nhân viên	Người quản lý	Cao	Quản lý có thể quản lý nhân viên bán hàng của cửa hàng, có thể xem thông tin của nhân viên, thực hiện các thao tác thêm, sửa, xóa nhân viên. Ngoài ra quản lý còn được hệ thống cung cấp chức năng quản lý tài khoản của nhân viên, người quản lý có thể xem, chỉnh sửa thông tin tài khoản và phân quyền tài khoản của nhân viên bán hàng.
UC10	Quản lý thực đơn	Nhân viên	Cao	Nhân viên có thể quản lý thực đơn như xem danh sách thực đơ, thực hiện các thao tác như tìm kiếm, chỉnh sửa, thêm đồ uống mới và xóa đồ uống.
UC11	Quản lý bàn	Nhân viên, quản lý	Cao	Nhân viên chỉ có thể xem được danh sách bàn. Người quản lý có thể thực hiện tất cả các chức năng trong quản lý bàn. Hệ thống cung cấp các chức năng như thêm bàn mới, sửa thông tin bàn và xóa bàn. Ngoài ra có xem tình trạng của bàn (full, trống)
UC12	Xem danh sách bàn	Nhân viên, quản lý	Chi tiết	Chức năng xem danh sách bàn cho phép nhân viên có thể xem tất cả các bàn có trong cửa hàng và xem thông tin chi tiết của từng bàn
UC13	Quản lý tài khoản nhân viên	Người quản lý, admin	Cao	Đây là một chức năng thuộc quản lý nhân viên. Người quản lý được hệ thống cung cấp chức năng quản lý tài khoản của nhân viên, người quản lý có thể xem, chỉnh sửa thông tin tài khoản và phân quyền tài khoản của nhân viên bán hàng.
UC14	Xem danh sách nhân viên	Người quản lý	Chi tiết	Hệ thống cho phép người quản lý có thể xem danh sách thông tin của nhân viên, có thể tìm kiếm trên danh sách và sửa thông tin.
UC15	Phân quyền tài khoản	Người quản lý, admin	Chi tiết	Hệ thống cho phép người quản lý có thể phân quyền cho tài khoản của nhân viên trong cửa hàng, người quản lý có thể phân quyền mới hoặc chỉnh sửa quyền tài khoản nhân viên.
UC16	Chấm công	Người quản lý	Chi tiết	Hệ thống cung cấp chức năng chấm công nhân viên. Người quản lý có thể chấm công cho từng nhân viên dựa trên giờ làm.
UC17	Tạo tài khoản mới	Người quản lý, admin	Chi tiết	Người quản lý có thể tạo tài khoản mới khi có nhân viên mới và phân quyền cho tài khoản đó.
UC18	Tìm kiếm tài khoản	Người quản lý, admin	Chi tiết	Người quản lý có thể tìm kiếm tài khoản nhân viên, xem thông tin tài khoản chi tiết và sửa thông tin tài khoản nhân viên.
UC19	Xem danh sách đơn hàng	Nhân viên, quản lý	Chi tiết	Nhân viên có thể truy cập để xem danh sách các đơn hàng đã hoàn thành, xem chi tiết thông tin của từng đơn hàng.
UC20	Thêm đồ uống	Nhân viên, quản lý	Chi tiết	Nhân viên sau khi tạo đơn bán sẽ thực hiện chức năng thêm đồ uống vào đơn bán hàng.
UC21	Chọn bàn	Nhân viên, quản lý	Chi tiết	Hệ thống cung cấp tính năng giúp nhân viên có thể dễ dàng chọn bàn còn trống cho đơn hàng hoẵ có thể gộp bàn.
UC22	Chọn phương thức thanh toán	Nhân viên, quản lý	Chi tiết	Hệ thống cung cấp 2 phương thức thanh toán mà khách hàng có thể thanh thanh toán là thanh toán bằng tiền mặt và thanh toán bằng chuyển khoản.
UC23	Áp dụng khuyến mãi/ giảm giá	Nhân viên, quản lý	Chi tiết	Hệ thống cung cấp chức năng cho phép nhân viên nhập các mã khuyến mãi trong CT khuyến mãi cho đơn bán hàng.
UC24	Tích điểm khách Vip	Nhân viên, quản lý	Chi tiết	Hệ thống cung cấp chức năng cho phép tích điểm cho khách hàng Vip sau mỗi đơn hàng thanh toán thành công.
UC25	In Bill	Nhân viên, quản lý	Chi tiết	Hệ thống cung cấp chức năng cho phép nhân viên in bill sau mỗi đơn hàng.
UC26	Xem danh sách đồ uống	Nhân viên, quản lý	Chi tiết	Nhân viên có thể xem danh sách thực đơn và xem chi tiết thông tin từng loại đồ uống
UC27	Xem tình trạng đồ uống	Nhân viên, quản lý	Chi tiết	Xem danh sách tình trạng đồ uống bằng cách lựa chọn xem đồ uống có sẵn/hết hàng.
UC28	Xem danh sách khách Vip	Nhân viên, quản lý	Chi tiết	Nhân viên có thể xem toand bộ danh sách khách Vip và xem thông tin chi tiết của từng khách vip.
UC29	Thêm khách Vip	Nhân viên, quản lý	Chi tiết	Khi có khách hàng mới yêu cầu đăng ký thành viên. Hệ thống sẽ cung cấp chức năng cho phép nhân viên thêm thông tin của khách hnagf mới
UC30	Bảo trì hệ thống	Admin	Cao	Admin có thể truy cập để kiểm tra hệ thống, phát hiển các lỗi và sửa lỗi hệ thống.
UC31	Sao lưu và phục hồi dữ liệu	Admin	Cao	Admin có thể truy cập vào hệ thống để xử lý các dữ liệu hệ thống, sao lưu và phục hồi dữ liệu hệ thống

2.3.2Sơ đồ use case mức tổng thể 

Hình 23: Use Case tổng thể
2.3.3Sơ đồ use case mức chi tiết 
2.3.3.1.Quản lý bán hàng

Hình 24: Use Case quản lý hàng
2.3.3.2.Quản lý nhân viên

Hình 25: Use Case quản lý nhân viên
2.3.3.3.Quản lý thực đơn

Hình 26: Use Case quản lý thực đơn
2.3.3.4.Quản lý khách hàng vip

Hình 27: Use Case quản lý khách hàng Vip
2.3.3.5.Quản lý bàn

Hình 28: Use Case quản lý bàn
2.3.3.6.Thống kê doanh thu

Hình 29: Use Case thống kê doanh thu

2.3.4Đặc tả use case
2.3.4.1.Use Case đăng nhập
Bảng 23: Đặc tả UseCase đăng nhập
Mã Use Case	UC01	Tên Use Case	Đăng nhập
Tác nhân	Nhân viên
Mô tả	Tác nhân đăng nhập vào hệ thống để thực hiện các chức năng trong hệ thống
Sự kiện linh hoạt	Click vào nút đăng nhập trên giao diện hệ thống
Tiền điều kiện	Tác nhân đã có tài khoản trên hệ thống
Luồng sự kiện chính	1.Nhân viên	Chọn chức năng đăng nhập
	2.Hệ thống	Hiển thị giao diện đăng nhập
	3.Nhân viên	Nhập tài khoản và mật khẩu
	4.Nhân viên	Yêu cầu đăng nhập
	5.Hệ thống	Kiểm tra nhân viên đã nhập đủ các trường bắt buộc hay chưa
	6.Hệ thống	Kiểm tra tài khoản và mật khẩu có hợp lệ chưa.
	7.Hệ thống	Hiển thị giao diện với các chức năng tương ứng với quyền tài khoản nhân viên.
Luồng sự kiện thay thế	6a. Hệ thống	Thông báo lỗi và yêu cầu người dùng nhập nếu còn trống trường bắt buộc.
	7a. Hệ thống	Thông báo lỗi và yêu cầu nhập lại nếu tài khoản hoặc mật khẩu không hợp lệ.
Hậu điều kiện	Tác nhân đăng nhập được vào hệ thống
2.3.4.2.Use Case đăng xuất
Bảng 24: Đặc tả UC đăng xuất
Mã Use Case	UC02	Tên Use Case	Đăng xuất
Tác nhân	Nhân viên
Mô tả	Tác nhân xuất ra khỏi hệ thống
Sự kiện linh hoạt	Click vào nút đăng xuất trên giao diện hệ thống
Tiền điều kiện	Tác nhân đã đăng nhập thành công vào tài khoản trên hệ thống.
Luồng sự kiện chính	1.Nhân viên	Chọn chức năng đăng xuất
	2.Hệ thống	Hệ thống tiến hành đăng xuất khỏi tài khoản nhân viên.
	3.Hệ thống	Hiển thị lại trang đăng nhập.
Luồng sự kiện thay thế		
Hậu điều kiện	Tác nhân đăng xuất khỏi hệ thống.
2.3.4.3.Use Case đổi mật khẩu
Bảng 25: Đặc tả UC đổi mật khẩu
Mã Use Case	UC03	Tên Use Case	Đổi mật khẩu
Tác nhân	Nhân viên
Mô tả	Tác nhân có thể đổi mật khẩu cho tài khoản của mình.
Sự kiện linh hoạt	Click vào nút đổi mật khẩu trên giao diện hệ thống
Tiền điều kiện	Tác nhân đã có tài khoản và đăng nhập được vào hệ thống
Luồng sự kiện chính	1.Nhân viên	Chọn chức năng đổi mật khẩu
	2.Hệ thống	Hiển thị Form đổi mật khẩu
	3.Nhân viên	Nhập mật khẩu cũ và mật khẩu mới
	4.Nhân viên	Yêu cầu đổi mật khẩu
	5.Hệ thống	Kiểm tra nhân viên đã nhập đủ các trường bắt buộc hay chưa
	6.Hệ thống	Kiểm tra mật khẩu cũ và mới có hợp lệ không
	7.Hệ thống	Hiển thị thông báo đổi mật khẩu thành công
Luồng sự kiện thay thế	6a. Hệ thống	Thông báo lỗi và yêu cầu người dùng nhập nếu còn trống trường bắt buộc.
	7a. Hệ thống	Thông báo lỗi và yêu cầu nhập lại mật khẩu cũ hoặc mới không hợp lệ.
Hậu điều kiện	Tác nhân đăng nhập được vào hệ thống

2.3.4.4.Use Case quản lý bán hàng
Bảng 26: Đặc tả UC quản lý bán hàng
Mã Use Case	UC04	Tên Use Case	Quản lý bán hàng
Tác nhân	Nhân viên
Mô tả	Nhân viên bán hàng có thể nhập thông tin sản phẩm vào hóa đơn để tính tiền và in hóa đơn.
Sự kiện linh hoạt	Click vào nút Đơn bán trên giao diện hệ thống
Tiền điều kiện	Tác nhân đã đăng nhập thành công vào tài khoản trên hệ thống
Luồng sự kiện chính	1.Nhân viên	Chọn chức năng Đơn bán hàng
	2.Hệ thống	Hiển thị giao diện Đơn bán gồm Danh sách đơn bán hàng cũ và các tính năng
	3.Nhân viên	Chọn chức năng Tạo đơn bán hàng mới
	4.Hệ thống	Hiển thị form đơn bán hàng mới
	5.Nhân viên	Nhập/chọn các thông tin trên đơn bán hàng như đồ uống, số lượng, size, số bàn, mã khuyến mãi
	6.Nhân viên	Chọn phương thức khách hàng sẽ thanh toán
	7.Hệ thống	Tính tổng tiền thanh toán
	8.Nhân viên	Yêu cầu tạo đơn bán hàng.
	9.Hệ thống	Kiểm tra PTTT là thanh toán bằng tiền mặt hay chuyển khoản
	10.Hệ thống	Hiển thị mã QR thanh toán
	11.Hệ thống	Kiểm tra đơn hàng đã được thanh toán thành công chưa
	12.Payment System	Kiểm tra biến động số dư tài khoản
	13.Payment System	Thông báo nhận tiền thành công
	14.Hệ thống	In hóa đơn (Bill)
	15.Hệ thống 	Lưu trữ thông tin đơn bán hàng.
	16.Hệ thống	Tích điểm cho khách hàng vip
Luồng sự kiện thay thế	3a. Nhân viên	Chọn chức năng xem danh sách đơn bán.
	10a. Hệ thống	Xuất hóa đơn, lưu thông tin đơn bán và tích điểm cho khách vip
Hậu điều kiện	Nhân viên xem được danh sách đơn bán hàng cũ và tạo được đơn bán hàng thành công.
2.3.4.5.Use Case xử lý thanh toán
Bảng 27: Đặc tả UC Xử lý thanh toán
Mã Use Case	UC06	Tên Use Case	Xử  lý thanh toán
Tác nhân	Nhân viên
Mô tả	Hệ thống sẽ xử lý thanh toán khi nhân viên chọn PTTT và xuất bill khi thanh toán thành công.
Sự kiện linh hoạt	Sau khi chọn tạo đơn hàng mới trên giao diện chức năng quản lý bán hàng.
Tiền điều kiện	Tác nhân đã đăng nhập thành công vào tài khoản trên hệ thống.
Luồng sự kiện chính	1.Nhân viên	Nhập thông tin lên đơn bán hàng mới.
	2.Nhân viên	Nhập mã khuyến mãi
	3.Hệ thống	Kiểm tra mã khuyến mãi có hợp lệ không
	4.Hệ thống	Hệ thống hiển thị số tiền giảm giá sau khi áp mã thành công.
	5.Hệ thống	Hệ thống hiển thị tổng số tiền thanh toán cuối cùng.
	6.Nhân viên	Chọn phương thức khách hàng sẽ thanh toán (tiền mặt hoặc chuyển khoản qua mã QR)
	7.Nhân viên	Yêu cầu tạo đơn bán hàng.
	8.Hệ thống	Kiểm tra PTTT là thanh toán bằng tiền mặt hay chuyển khoản
	9.Hệ thống	Hiển thị mã QR thanh toán
	10.Hệ thống	Kiểm tra đơn hàng đã được thanh toán thành công chưa
	11.Payment System	Kiểm tra biến động số dư tài khoản
	12.Payment System	Thông báo nhận tiền thành công
	13.Hệ thống	In hóa đơn (Bill)
	14.Hệ thống 	Lưu trữ thông tin đơn bán hàng.
	15.Hệ thống	Tích điểm cho khách hàng vip
Luồng sự kiện thay thế	4a. Hệ thống	Thông báo lỗi nếu PTTT không hợp lệ và tới bước tiếp theo.
	9a. Hệ thống	Xuất hóa đơn, lưu thông tin đơn bán và tích điểm cho khách vip.
Hậu điều kiện	Nhân viên đã yêu cầu thành công hệ thống tạo đơn hàng mới.
2.3.4.6.Use Case thống kê doanh thu
Bảng 28: Đặc tả UC thống kê doanh thu
Mã Use Case	UC07	Tên Use Case	Thống kê doanh thu
Tác nhân	Quản lý
Mô tả	Quản lý có thể thống ke doanh thu bán hàng theo tiêu chí khác nhau
Sự kiện linh hoạt	Click vào nút Doanh thu trên giao diện hệ thống
Tiền điều kiện	Tác nhân đã đăng nhập thành công vào tài khoản trên hệ thống
Luồng sự kiện chính	1.Quản lý	Chọn chức năng Doanh thu
	2.Hệ thống	Hiển thị giao diện doanh thu có các tiêu chí thống kê: theo đơn bán hàng, theo thời gian, theo loại đồ uống.
	3.Quản lý	Lựa chọn 1 tiêu chí để thống kê doanh thu
	4.Quản lý	Yêu cầu xem thống kê
	5.Hệ thống	Kiểm tra các tiêu chí lựa chọn có hợp lệ chưa
	6.Hệ thống	Hệ thống trả kết quả hiển thị thống kê
Luồng sự kiện thay thế	6a. Hệ thống	Thông báo lỗi và yêu cầu tác nhân kiểm tra hoặc chọn lại tiêu chí khác
Hậu điều kiện	Tác nhân đăng nhập được vào hệ thống
2.3.4.7.Use Case quản lý khách hàng
Bảng 29: Đặc tả UC quản lý khách hàng
Mã Use Case	UC08	Tên Use Case	Quản lý khách hàng
Tác nhân	Nhân viên
Mô tả	Nhân viên thực hiện chức năng quản lý khách hàng
Sự kiện linh hoạt	Click vào nút Khách hàng Vip trên giao diện hệ thống
Tiền điều kiện	Tác nhân đã đăng nhập thành công vào tài khoản trên hệ thống
Luồng sự kiện chính	1.Nhân viên	Chọn chức năng Khách hàng Vip trên giao diện hệ thống
	2.Hệ thống	Hiển thị giao diện danh sách khách hàng vip và các chức năng thêm, sửa, xóa, tìm kiếm.
	3.Nhân viên	Chọn 1 chức năng trong các chức năng thêm, sửa, xóa, tìm kiếm.
	4.Nhân viên	Yêu cầu thêm khách hàng mới
	5.Hệ thống	Hiển thị form thêm khách hàng mới
	6.Nhân viên	Nhập thông tin khách hàng mới: mã KH, tên KH, SĐT, ngày thêm,…
	7.Hệ thống	Hệ thống kiểm tra thông tin nhập xem có hợp lệ chưa.
	8.Hệ thống	Lưu dữ liệu khách hàng Vip mới
	9.Hệ thống	Thông báo thêm thành công
Luồng sự kiện thay thế	4a. Nhân viên	Chọn chức năng tìm kiếm để sửa thông tin khách hàng hoặc xóa khách hàng Vip.
	8a. Hệ thống	Thông báo lỗi và yêu cầu nhập lại nếu thông tin nhập không hợp lệ.
Hậu điều kiện	Tác nhân đăng nhập được vào hệ thống

2.3.4.8.Use Case quản lý nhân viên
Bảng 210: Đặc tả UC quản lý nhân viên
Mã Use Case	UC09	Tên Use Case	Quản lý nhân viên
Tác nhân	Quản lý
Mô tả	Người quản lý thực hiện chức năng quản lý nhân viên, quản lý tài khoản của nhân viên và thực hiện chấm công cho nhân viên.
Sự kiện linh hoạt	Click vào nút Nhân viên trên giao diện hệ thống
Tiền điều kiện	Tác nhân đã đăng nhập thành công vào tài khoản trên hệ thống
Luồng sự kiện chính	1.Nhân viên	Chọn chức năng Nhân viên trên giao diện hệ thống
	2.Hệ thống	Hiển thị giao diện danh sách nhân viên và các chức năng thêm, sửa, xóa, tìm kiếm, tình trạng đồ uống.
	3.Nhân viên	Chọn 1 chức năng trong các chức năng thêm, sửa, xóa, tìm kiếm, tình trạng đồ uống
	4.Nhân viên	Yêu cầu tìm kiếm thông tin của nhân viên cần tìm
	5.Hệ thống	Hiển thị thông tin nhân viên đang tìm
	6.Nhân viên	Yêu cầu sửa thông tin nhân viên
	7.Hệ thống	Hệ thống hiển thị form sửa thông tin nhân viên
	8.Nhân viên	Sửa các thông tin của nhân viên như: tên nhân viên, ngày sinh, giới tính, quê quán…
	9.Hệ thống	Hệ thống kiểm tra thông tin đã sửa xem có hợp lệ chưa.
	10.Hệ thống	Lưu dữ liệu nhân viên vào hệ thống
	11.Hệ thống	Hiển thị thông báo sửa thông tin của nhân viên thành công
Luồng sự kiện thay thế	4a. Nhân viên	Chọn chức năng chấm công để chấm công cho nhân viên
	4b. Nhân viên	Chọn chức năng quản lý tài khoản nhân viên
	6a. Nhân viên	Yêu cầu xóa thông tin nhân viên
	8a. Hệ thống	Thông báo lỗi và yêu cầu nhập lại nếu thông tin không hợp lệ.
Hậu điều kiện	Tác nhân đăng nhập được vào hệ thống
2.3.4.9.Use Case quản lý thực đơn
Bảng 211: Đặc tả UC quản lý thực đơn
Mã Use Case	UC10	Tên Use Case	Quản lý thực đơn
Tác nhân	Nhân viên
Mô tả	Nhân viên thực hiện chức năng quản lý thực đơn
Sự kiện linh hoạt	Click vào nút Bàn trên giao diện hệ thống
Tiền điều kiện	Tác nhân đã đăng nhập thành công vào tài khoản trên hệ thống
Luồng sự kiện chính	12.Nhân viên	Chọn chức năng Thực đơn trên giao diện hệ thống
	13.Hệ thống	Hiển thị giao diện danh sách các loại đồ uống và các chức năng thêm, sửa, xóa, tìm kiếm, tình trạng đồ uống.
	14.Nhân viên	Chọn 1 chức năng trong các chức năng thêm, sửa, xóa, tìm kiếm, tình trạng đồ uống
	15.Nhân viên	Yêu cầu thêm đồ uống mới
	16.Hệ thống	Hệ thống hiển thị form thêm đồ uống mới
	17.Nhân viên	Nhập thông tin đồ uống mới: mã DU, tên DU, đơn giá, các loại size, ghi chú…
	18.Hệ thống	Hệ thống kiểm tra thông tin nhập xem có hợp lệ chưa.
	19.Hệ thống	Lưu dữ liệu đồ uống mới vào thực đơn.
	20.Hệ thống	Hiển thị thông báo thêm thành công
Luồng sự kiện thay thế	4a. Nhân viên	Chọn chức năng tìm kiếm để sửa thông tin thực đơn hoặc xóa đồ uống.
	4b. Nhân viên	Chọn chức năng tình trạng đồ uống để xem các loại đồ uống nào hết món, còn món
	8a. Hệ thống	Thông báo lỗi và yêu cầu nhập lại nếu thông tin không hợp lệ.
Hậu điều kiện	Tác nhân đăng nhập được vào hệ thống
2.3.4.10.Use Case quản lý bàn
Bảng 212: Đặc tả UC quản lý bàn
Mã Use Case	UC11	Tên Use Case	Quản lý bàn
Tác nhân	Nhân viên
Mô tả	Nhân viên thực hiện chức năng quản lý bàn
Sự kiện linh hoạt	Click vào nút Bàn trên giao diện hệ thống
Tiền điều kiện	Tác nhân đã đăng nhập thành công vào tài khoản trên hệ thống
Luồng sự kiện chính	1.Nhân viên	Chọn chức năng Bàn trên giao diện hệ thống
	2.Hệ thống	Hiển thị giao diện danh sách các bàn và các chức năng thêm, sửa, xóa, tìm kiếm.
	3.Nhân viên	Chọn 1 chức năng trong các chức năng thêm, sửa, xóa, tìm kiếm.
	4.Nhân viên	Yêu cầu thêm bàn mới
	5.Hệ thống	Hiển thị form thêm bàn mới
	6.Nhân viên	Nhập thông tin bàn mới: mã bàn, tên bàn,…
	7.Hệ thống	Hệ thống kiểm tra thông tin nhập xem có hợp lệ chưa.
	8.Hệ thống	Lưu dữ liệu bàn mới
	9.Hệ thống	Thông báo thêm thành công
Luồng sự kiện thay thế	4a. Nhân viên	Chọn chức năng tìm kiếm để sửa thông tin bàn hoặc xóa bàn
	8a. Hệ thống	Thông báo lỗi và yêu cầu nhập lại thông tin nhập không hợp lệ.
Hậu điều kiện	Tác nhân đăng nhập được vào hệ thống
2.3.4.11.Use Case quản lý tài khoản nhân viên
Bảng 213: Đặc tả UC quản lý tài khỏa nhân viên
Mã Use Case	UC13	Tên Use Case	Quản lý tài khoản nhân viên
Tác nhân	Quản lý
Mô tả	Người quản lý thực hiện chức năng quản lý tài khoản nhân viên
Sự kiện linh hoạt	Click vào nút Tài khoản trên giao diện hệ thống
Tiền điều kiện	Tác nhân đã đăng nhập thành công vào tài khoản trên hệ thống
Luồng sự kiện chính	1.Nhân viên	Chọn chức năng Tài khoản trên giao diện hệ thống
	2.Hệ thống	Hiển thị giao diện danh sách các tài khoản của nhân viên và các chức năng thêm, sửa, xóa, tìm kiếm.
	3.Nhân viên	Chọn 1 chức năng trong các chức năng thêm, sửa, xóa, tìm kiếm.
	4.Nhân viên	Yêu cầu thêm tài khoản mới
	5.Hệ thống	Hiển thị form thêm tài khoản nhân viên mới
	6.Nhân viên	Nhập thông tin tài khoản mới: mã TK,  tên TK, mật khẩu.
	7.Nhân viên	Phân quyền cho tài khoản mới.
	8.Hệ thống	Hệ thống kiểm tra thông tin nhập xem có hợp lệ chưa.
	9.Hệ thống	Lưu dữ liệu mới vào danh sách tài khoản trên hệ thống
	10.Hệ thống	Thông báo thêm tài khoản thành công
Luồng sự kiện thay thế	4a. Nhân viên	Chọn chức năng tìm kiếm để sửa thông tin tài khoản hoặc xóa tài khoản.
	8a. Hệ thống	Thông báo lỗi và yêu cầu nhập lại thông tin không hợp lệ.
Hậu điều kiện	Tác nhân đăng nhập được vào hệ thống






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
Bảng 42: Các lớp thiết kế
STT	Lớp thiết kế	Thuộc tính	Mô tả
1	NhanVien	MaNV, HoNV, TenNV, NgaySinh, GioiTinh, NgayVaoLam, HeSoLuong, SĐT, Email	Nhân viên bao gồm nhân viên bán hàng và người quản lý
2	Admin	MaAD, ThongtinAd	Người quản trị hệ thống
3	ChucVu	MaCV, TenCV, Quyen, GhiChu	Chức vụ: nhân viên báng hàng, quản lý cửa hàng
4	TaiKhoan	MaTK, MatKhau, Quyen, TenTK	Tài khoản của nhân viên
5	Ban	MaBan, TinhTrang, GhiChu	Bàn
6	DonBan	MaĐH, NgayDH, TrangThai, ThanhTien	Đơn bán hàng
7	CTHD	MaDH, MaDU, DonGia, SoLuong, Size, GhiChu	Chi tiết hóa đơn
8	ThucDon	MaDU (mã đồ uống), TenDoUong, GiaBan, Size, LoaiDoUong, TinhTrang, GhiChu	Thực đơn
9	KhachHangVip	MaKHVIP, HoTenKH, GioiTinh, NgaySinh, NgayDangKy, SĐT, DiemTichLuy	Khách hàng Vip
10	ThanhToan	MaTT, PTTT, TongTienTT, NgayTT	Thanh toán
11	CTKhuyenMai	MaKM, TenKM, TTKM, NgayBatDau, NgayKetThuc, GhiChu	Chương trình khuyến mãi
12	BaoCaoThongKe	NgayIn, NoiDung	Báo cáo thống kê
13	Bill	SoBan,ThongTinDoUong, TongTienTT, PTTT, GhiChu	Hóa đơn
14	ThongKeDoanhThu	MaSoTK, ThongTin, NgayTK, LoaiTK	Thống kê doanh thu
