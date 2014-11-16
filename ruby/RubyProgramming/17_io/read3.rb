File.open("tty.rb") do |io|
  p io.read(5)
  p io.pos
  io.rewind
  p io.read(3)
  p io.read
end
