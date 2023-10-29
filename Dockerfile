# 使用官方 Node.js 作为基础镜像
FROM node:14

# 设置工作目录
WORKDIR /app

# 复制应用程序代码到镜像中
COPY . .

# 安装依赖项
RUN npm install

# 构建React应用
RUN npm run build

EXPOSE 3000

# 设置启动命令
CMD ["npm", "start"]
