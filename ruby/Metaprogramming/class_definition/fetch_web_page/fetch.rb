require 'open-uri'
page = "duckduckgo"
file_name = "#{page}.html"
web_page = open("https://duckduckgo.com/")
output = File.open(file_name, "w")
while line = web_page.gets
  output.puts line
end
