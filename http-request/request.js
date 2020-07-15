const https = require('https')
const { env } = require('process')

https.get('https://api.vultr.com/v1/server/list', { headers: {'API-Key': env['VULTR_API_KEY']} }, (res) => {
  console.log(res.statusCode)
})