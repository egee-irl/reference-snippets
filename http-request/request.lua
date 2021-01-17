local http = require("socket.http")

local orphans = {}
local list_url = 'https://api.vultr.com/v1/server/list'
local headers = {}
headers['API-KEY'] = os.getenv('VULTR_API_KEY')

local servers = http.request(list_url)
