# This is almost 1:1 for the what Ruby Docs say to do for requests and it doesn't work
# Error is: 'The plain HTTP request was sent to HTTPS port'
# https://ruby-doc.org/stdlib-2.7.1/libdoc/net/http/rdoc/Net/HTTP.html#class-Net::HTTP-label-Setting+Headers

require 'net/http'

uri = URI('https://api.vultr.com/v1/server/list')

req = Net::HTTP::Get.new(uri)
req['API-KEY'] = ENV['VULTR_API_KEY']

res = Net::HTTP.start(uri.hostname, uri.port) { |http|
  http.request(req)
}

puts res.body