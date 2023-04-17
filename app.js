const express = require('express')
const app = express()

// 設置 home 相關的 request 處理，注意順序
app.use('/', (request, response, next) => {
    console.log('hello world')
    response.status(200).send({ data: 'hello world' })
})

// 在 3000 port 監聽
app.listen(8080)