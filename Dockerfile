# 使用官方 Nginx 基础镜像
FROM nginx:alpine

# 移除默认的 index.html（如果存在）
RUN rm -f /usr/share/nginx/html/*

# 复制项目文件到 Nginx 文档根目录
COPY . /usr/share/nginx/html

# 可选：添加自定义 Nginx 配置（如果需要）
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# 暴露端口（仅用于文档目的，实际端口映射由 docker-compose.yml 控制）
EXPOSE 80

# 启动 Nginx（保持前台运行）
CMD ["nginx", "-g", "daemon off;"]