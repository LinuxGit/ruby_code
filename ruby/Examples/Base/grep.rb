ary = %w[foo bar baz]
ary.grep(/^b/) do |x|
  printf "%s\n", x
end
