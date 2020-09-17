# TLCN-WebsiteBanHang
Tiểu luận chuyên ngành: WEBSITE BÁN HÀNG sử dụng .NET CORE

1. Cài đặt source code:
- Server: .NET Core (port: 44340)
Cách 1: Sử dụng codefirst

      - Xóa toàn bộ các file migrations trong folder Migrations để tạo Database mới.
      
      - Vào appsetting để sửa lại đường dẫn kết nối (đường dẫn, tên database, ...) : FirstConnection.
      
      - cmd project: chạy lệnh code first Migrations: dotnet ef migrations add initdatabase
      
      - lúc này bên folder Migration sẽ tạo ra 1 file initdatabase để mô tả các thành phần của database.
      
      - tiếp theo: ta quay lại cmd và chạy lệnh: dotnet ef database update.

Cách 2: Sử dụng database có sẵn
	- Vào appsetting để sửa lại đường dẫn kết nối (đường dẫn, tên database, ...) : FirstConnection.
	- Sử dụng sqlserver 2017, tạo database có tên trùng tên databse trên file appsetting.
	- Trên database vừa tạo click chuột phải =>Tasks =>Restore =>Database =>Device => Add => chọn database có sẵn
=> Chọn Ok.
      
2.Chạy source
 Trên visual studio nhấn nut run 
 
 Note: Tài khoản và mật khẩu đăng nhập trang admin
                        - username: admin
                        - password: password
 
