# Sử dụng image Nginx chính thức, phiên bản alpine cho nhẹ
FROM nginx:alpine

# Xóa file index.html mặc định của Nginx
RUN rm /usr/share/nginx/html/index.html

# Copy file index.html của bạn vào thư mục web root của Nginx
COPY index.html /usr/share/nginx/html/

# Mở cổng 80 bên trong container (cổng Nginx mặc định)
EXPOSE 80

# Lệnh mặc định khi container khởi chạy (Nginx sẽ tự chạy)
CMD ["nginx", "-g", "daemon off;"]