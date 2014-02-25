require 'stringio'

mess = StringIO.new("ruby\non\nrails")
op = StringIO.new("", "w")

mess.each_line do |line|
  op.puts line.reverse
end

print op.string
