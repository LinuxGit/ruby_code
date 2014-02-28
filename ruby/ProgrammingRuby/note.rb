puts RUBY_VERSION

Rational(3, 4) * Rational(2, 3)
Rational("3/4") * Rational("2/3")

require 'mathn'
p 22/7

5.step(39, 3) { |i| print i, " " }
2.upto(10).with_index { |num, index| puts "#{index} : #{num}" }

string = %/Rose: "Jack!...Jack"/

(0..9).inject(:+)
('a'..'z').inject(:+)
(0..9).reject {|i| i < 5 }
(0..9).select {|i| i < 5 }

#Proc
p = Proc.new { |a, *b| b.map { |i| i * a} }
p.call(3, 1, 2, 3)
p.(3, 1, 2, 3)
