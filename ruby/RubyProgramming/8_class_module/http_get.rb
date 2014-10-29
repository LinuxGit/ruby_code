require "uri"
require "net/http"

url  = URI.parse("http://blog.51osos.com/linux/linux-bash-tips-tricks/")
http = Net::HTTP.start(url.host, url.port)
doc  = http.get(url.path)
puts doc
