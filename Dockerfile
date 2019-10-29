
FROM nginx:alpine

WORKDIR /usr/share/nginx/html/

COPY nginx.conf /etc/nginx/conf.d/default.conf

# 复制上一个阶段的镜像 ./dist 中的目录
COPY ./dist  /usr/share/nginx/html/

# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]
