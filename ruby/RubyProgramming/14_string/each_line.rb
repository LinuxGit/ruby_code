str = "一\n二\n三\n"

tmp = str.each_line.collect do |line|
        line.chomp * 3
      end

p tmp
