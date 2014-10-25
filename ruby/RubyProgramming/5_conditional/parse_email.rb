file = File.open("email.txt")
file.each_line do |line|
  case line
  when /^From/i
    puts "Found sender: #{line}"
  when /^To/i
    puts "Found receiver: #{line}"
  when /^Subject/i
    puts "Found subject: #{line}"
  when /^$/
    puts "Parsing email header completed."
    exit
  else
    puts "This may be not an email."
  end
end
