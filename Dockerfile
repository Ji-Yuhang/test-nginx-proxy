
FROM nginx:alpine

WORKDIR /usr/share/nginx/html/

COPY nginx.conf /etc/nginx/conf.d/default.conf

# 复制上一个阶段的镜像 ./dist 中的目录
COPY ./dist  /usr/share/nginx/html/
RUN mkdir -p /usr/share/nginx/html/pc/admin/ && ln -s /usr/share/nginx/html/ /usr/share/nginx/html/pc/admin/v2
# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]
