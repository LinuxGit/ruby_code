def tail(lines, file)
  queue = Array.new
  open(file) do |io|
    while line = io.gets
      queue << line
      queue.shift if queue.size > lines
    end
  end
  queue.each { |line| print line }
end

tail(10, "my.cnf")
