line = "Linux=RedHat"

case line
when /Linux=(.*)/
  puts "Linux is #$1."
when /Unix=(.*)/
  puts "Unix is #$1."
end
