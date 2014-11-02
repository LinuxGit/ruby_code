file = File.open("hash_each.rb")
begin
  file.each_line do |line|
    puts line
  end
ensure
  file.close
end
