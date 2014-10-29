require "uri"
url = URI.parse("https://www.ruby-lang.org/zh_cn/")

p url.scheme
p url.host
p url.port
p url.path
p url.to_s
