puts (0..9).select { |e| e.even? }.reduce(100, :+)
