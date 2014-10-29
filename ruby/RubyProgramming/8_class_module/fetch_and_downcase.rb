def fetch_and_downcase(ary, index)
  str = ary[index]
  str.downcase if str
end

ary = %w[Foo Boo Woo]
h   = {a: "Foo", b: "Boo", c: "Woo"}

p fetch_and_downcase(ary, 2)
p fetch_and_downcase(h, :a)
