a = %w[ruby python]
=> ["ruby", "python"]
[2] pry(main)> b = Marshal.load(Marshal.dump(a))
=> ["ruby", "python"]
[3] pry(main)> b.each(&:upcase!)
=> ["RUBY", "PYTHON"]
[4] pry(main)> b.first
=> "RUBY"
[5] pry(main)> a.first
=> "ruby"
[6] pry(main)> b.last
=> "PYTHON"
[7] pry(main)> c = a.clone
=> ["ruby", "python"]
[8] pry(main)> c.each(&:upcase!)
=> ["RUBY", "PYTHON"]
[9] pry(main)> c
=> ["RUBY", "PYTHON"]
[10] pry(main)> a.first
=> "RUBY"class Persoy
