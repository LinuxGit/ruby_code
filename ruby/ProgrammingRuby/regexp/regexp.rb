File.foreach("/etc/passwd").with_index do |line, index|
  if line =~ /false/
    puts "Line #{index +=1} : The user #{line.split(":").first} can't login system."
  end
end
