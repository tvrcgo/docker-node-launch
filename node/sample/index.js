
const Koa = require('koa')

const app = new Koa()

app.use((ctx, next) => {
  ctx.body = 'app ok.'
})

app.listen(8080)