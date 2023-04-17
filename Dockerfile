# 設置環境為 node 18
FROM node:18.5.0

# 將檔案複製到 /app
COPY app.js package.json /app/

# 移動到 /app 位置
WORKDIR /app

# 執行以下指令
RUN npm install && npm cache clean --force

# 執行以下指令
CMD node app.js
