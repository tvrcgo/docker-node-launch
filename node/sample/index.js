const Koa = require('koa')
const app = new Koa()

app.use((ctx, next) => {
  ctx.body = 'Hello'
})

app.listen(8080)
